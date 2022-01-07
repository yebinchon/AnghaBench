
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t u_char ;
struct mbuf {int dummy; } ;
struct lp_data {size_t* sc_ifbuf; scalar_t__ sc_iferrs; TYPE_1__* sc_ifp; int sc_dev; } ;
typedef int device_t ;
struct TYPE_5__ {int if_flags; int if_mtu; int if_drv_flags; int if_fib; int if_bpf; } ;


 int CLPIPHDRLEN ;
 int IFCOUNTER_IBYTES ;
 int IFCOUNTER_IERRORS ;
 int IFCOUNTER_IPACKETS ;
 int IFF_DRV_RUNNING ;
 int IFF_LINK0 ;
 int LPIPHDRLEN ;
 int LPIP_SHAKE ;
 scalar_t__ LPMAXERRS ;
 int LPMAXSPIN2 ;
 int MLPIPHDRLEN ;
 int M_SETFIB (struct mbuf*,int ) ;
 int NETISR_IP ;
 scalar_t__ bpf_peers_present (int ) ;
 int clpinbyte (int,int ) ;
 int device_get_parent (int ) ;
 int if_inc_counter (TYPE_1__*,int ,int) ;
 int if_printf (TYPE_1__*,char*) ;
 int lprintf (char*) ;
 int lptap (TYPE_1__*,struct mbuf*) ;
 struct mbuf* m_devget (size_t*,int,int ,TYPE_1__*,int ) ;
 int netisr_queue (int ,struct mbuf*) ;
 int ppb_assert_locked (int ) ;
 int ppb_lock (int ) ;
 int ppb_rstr (int ) ;
 int ppb_unlock (int ) ;
 int ppb_wctr (int ,int) ;
 int ppb_wdtr (int ,int) ;
 int* trecvh ;
 int* trecvl ;

__attribute__((used)) static void
lp_intr(void *arg)
{
 struct lp_data *sc = arg;
 device_t ppbus = device_get_parent(sc->sc_dev);
 int len, j;
 u_char *bp;
 u_char c, cl;
 struct mbuf *top;

 ppb_assert_locked(ppbus);
 if (sc->sc_ifp->if_flags & IFF_LINK0) {


  ppb_wdtr(ppbus, 0x01);


  j = clpinbyte(LPMAXSPIN2, ppbus);
  if (j == -1)
   goto err;
  len = j;
  j = clpinbyte(LPMAXSPIN2, ppbus);
  if (j == -1)
   goto err;
  len = len + (j << 8);
  if (len > sc->sc_ifp->if_mtu + MLPIPHDRLEN)
   goto err;

  bp = sc->sc_ifbuf;

  while (len--) {
   j = clpinbyte(LPMAXSPIN2, ppbus);
   if (j == -1) {
    goto err;
   }
   *bp++ = j;
  }


  j = clpinbyte(LPMAXSPIN2, ppbus);
  if (j == -1) {
   goto err;
  }

  len = bp - sc->sc_ifbuf;
  if (len <= CLPIPHDRLEN)
   goto err;

  sc->sc_iferrs = 0;

  len -= CLPIPHDRLEN;
  if_inc_counter(sc->sc_ifp, IFCOUNTER_IPACKETS, 1);
  if_inc_counter(sc->sc_ifp, IFCOUNTER_IBYTES, len);
  top = m_devget(sc->sc_ifbuf + CLPIPHDRLEN, len, 0, sc->sc_ifp,
      0);
  if (top) {
   ppb_unlock(ppbus);
   if (bpf_peers_present(sc->sc_ifp->if_bpf))
    lptap(sc->sc_ifp, top);

   M_SETFIB(top, sc->sc_ifp->if_fib);


   netisr_queue(NETISR_IP, top);
   ppb_lock(ppbus);
  }
  return;
 }
 while ((ppb_rstr(ppbus) & LPIP_SHAKE)) {
  len = sc->sc_ifp->if_mtu + LPIPHDRLEN;
  bp = sc->sc_ifbuf;
  while (len--) {

   cl = ppb_rstr(ppbus);
   ppb_wdtr(ppbus, 8);

   j = LPMAXSPIN2;
   while ((ppb_rstr(ppbus) & LPIP_SHAKE))
    if (!--j)
     goto err;

   c = ppb_rstr(ppbus);
   ppb_wdtr(ppbus, 0);

   *bp++= trecvh[cl] | trecvl[c];

   j = LPMAXSPIN2;
   while (!((cl = ppb_rstr(ppbus)) & LPIP_SHAKE)) {
    if (cl != c &&
        (((cl = ppb_rstr(ppbus)) ^ 0xb8) & 0xf8) ==
        (c & 0xf8))
     goto end;
    if (!--j)
     goto err;
   }
  }

 end:
  len = bp - sc->sc_ifbuf;
  if (len <= LPIPHDRLEN)
   goto err;

  sc->sc_iferrs = 0;

  len -= LPIPHDRLEN;
  if_inc_counter(sc->sc_ifp, IFCOUNTER_IPACKETS, 1);
  if_inc_counter(sc->sc_ifp, IFCOUNTER_IBYTES, len);
  top = m_devget(sc->sc_ifbuf + LPIPHDRLEN, len, 0, sc->sc_ifp,
      0);
  if (top) {
   ppb_unlock(ppbus);
   if (bpf_peers_present(sc->sc_ifp->if_bpf))
    lptap(sc->sc_ifp, top);

   M_SETFIB(top, sc->sc_ifp->if_fib);


   netisr_queue(NETISR_IP, top);
   ppb_lock(ppbus);
  }
 }
 return;

err:
 ppb_wdtr(ppbus, 0);
 lprintf("R");
 if_inc_counter(sc->sc_ifp, IFCOUNTER_IERRORS, 1);
 sc->sc_iferrs++;





 if (sc->sc_iferrs > LPMAXERRS) {
  if_printf(sc->sc_ifp, "Too many errors, Going off-line.\n");
  ppb_wctr(ppbus, 0x00);
  sc->sc_ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
  sc->sc_iferrs = 0;
 }
}
