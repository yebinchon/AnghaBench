
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
typedef int u_char ;
struct sbni_softc {int cur_rxl_index; scalar_t__ delta_rxl; int enaddr; int lock; int wch; struct ifnet* ifp; } ;
struct sbni_flags {int rate; } ;
struct ifnet {int if_baudrate; int if_flags; int if_xname; int if_snd; int if_ioctl; int if_start; int if_init; struct sbni_softc* if_softc; } ;


 int CSR0 ;
 int ENOMEM ;
 int IFF_BROADCAST ;
 int IFF_MULTICAST ;
 int IFF_SIMPLEX ;
 int IFQ_SET_MAXLEN (int *,int ) ;
 int IFT_ETHER ;
 int MTX_DEF ;
 int MTX_NETWORK_LOCK ;
 int callout_init_mtx (int *,int *,int ) ;
 int ether_ifattach (struct ifnet*,int ) ;
 struct ifnet* if_alloc (int ) ;
 int if_initname (struct ifnet*,char*,int) ;
 int if_printf (struct ifnet*,char*,int ) ;
 int ifqmaxlen ;
 int mtx_init (int *,int ,int ,int ) ;
 int printf (char*,...) ;
 int sbni_inb (struct sbni_softc*,int ) ;
 int sbni_init ;
 int sbni_ioctl ;
 int sbni_outb (struct sbni_softc*,int ,int ) ;
 int sbni_start ;
 int set_initial_values (struct sbni_softc*,struct sbni_flags) ;

int
sbni_attach(struct sbni_softc *sc, int unit, struct sbni_flags flags)
{
 struct ifnet *ifp;
 u_char csr0;

 ifp = sc->ifp = if_alloc(IFT_ETHER);
 if (ifp == ((void*)0))
  return (ENOMEM);
 sbni_outb(sc, CSR0, 0);
 set_initial_values(sc, flags);


 ifp->if_softc = sc;
 if_initname(ifp, "sbni", unit);
 ifp->if_init = sbni_init;
 ifp->if_start = sbni_start;
 ifp->if_ioctl = sbni_ioctl;
 IFQ_SET_MAXLEN(&ifp->if_snd, ifqmaxlen);


 csr0 = sbni_inb(sc, CSR0);
 ifp->if_baudrate =
  (csr0 & 0x01 ? 500000 : 2000000) / (1 << flags.rate);

 ifp->if_flags = IFF_BROADCAST | IFF_SIMPLEX | IFF_MULTICAST;

 mtx_init(&sc->lock, ifp->if_xname, MTX_NETWORK_LOCK, MTX_DEF);
 callout_init_mtx(&sc->wch, &sc->lock, 0);
 ether_ifattach(ifp, sc->enaddr);


 if_printf(ifp, "speed %ju, rxl ", (uintmax_t)ifp->if_baudrate);
 if (sc->delta_rxl)
  printf("auto\n");
 else
  printf("%d (fixed)\n", sc->cur_rxl_index);
 return (0);
}
