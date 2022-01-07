
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlm_xlpge_softc {int rxfreeq; int xlpge_dev; } ;
struct nlm_fmn_msg {scalar_t__* msg; } ;
typedef int msg ;


 int device_printf (int ,char*) ;
 void* get_buf () ;
 int memset (struct nlm_fmn_msg*,int ,int) ;
 int nlm_fmn_msgsend (int ,int,int ,struct nlm_fmn_msg*) ;
 int printf (char*,...) ;
 scalar_t__ vtophys (void*) ;

void
nlm_xlpge_submit_rx_free_desc(struct nlm_xlpge_softc *sc, int num)
{
 int i, size, ret, n;
 struct nlm_fmn_msg msg;
 void *ptr;

 for(i = 0; i < num; i++) {
  memset(&msg, 0, sizeof(msg));
  ptr = get_buf();
  if (!ptr) {
   device_printf(sc->xlpge_dev, "Cannot allocate mbuf\n");
   break;
  }

  msg.msg[0] = vtophys(ptr);
  if (msg.msg[0] == 0) {
   printf("Bad ptr for %p\n", ptr);
   break;
  }
  size = 1;

  n = 0;
  while (1) {

   ret = nlm_fmn_msgsend(sc->rxfreeq, size, 0, &msg);
   if (ret == 0)
    break;
   if (n++ > 10000) {
    printf("Too many credit fails for send free desc\n");
    break;
   }
  }
 }
}
