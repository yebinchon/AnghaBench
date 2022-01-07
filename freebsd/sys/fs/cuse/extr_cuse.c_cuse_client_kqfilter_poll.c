
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cuse_client {int cflags; int server; } ;
struct cdev {int dummy; } ;


 int CUSE_CLI_KNOTE_HAS_READ ;
 int CUSE_CLI_KNOTE_HAS_WRITE ;
 int CUSE_CLI_KNOTE_NEED_READ ;
 int CUSE_CLI_KNOTE_NEED_WRITE ;
 int POLLIN ;
 int POLLOUT ;
 int cuse_client_poll (struct cdev*,int,int *) ;
 int cuse_lock () ;
 int cuse_server_wakeup_locked (int ) ;
 int cuse_unlock () ;

__attribute__((used)) static void
cuse_client_kqfilter_poll(struct cdev *dev, struct cuse_client *pcc)
{
 int temp;

 cuse_lock();
 temp = (pcc->cflags & (CUSE_CLI_KNOTE_HAS_READ |
     CUSE_CLI_KNOTE_HAS_WRITE));
 pcc->cflags &= ~(CUSE_CLI_KNOTE_NEED_READ |
     CUSE_CLI_KNOTE_NEED_WRITE);
 cuse_unlock();

 if (temp != 0) {

  temp = cuse_client_poll(dev, POLLIN | POLLOUT, ((void*)0));

  if (temp & (POLLIN | POLLOUT)) {
   cuse_lock();
   if (temp & POLLIN)
    pcc->cflags |= CUSE_CLI_KNOTE_NEED_READ;
   if (temp & POLLOUT)
    pcc->cflags |= CUSE_CLI_KNOTE_NEED_WRITE;


   cuse_server_wakeup_locked(pcc->server);
   cuse_unlock();
  }
 }
}
