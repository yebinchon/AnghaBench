
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_long ;
struct thread {int dummy; } ;
struct sbni_in_stats {size_t rxl; int fixed_rxl; int fixed_rate; int mac_addr; int rate; } ;
struct TYPE_2__ {int rate; int rxl; } ;
struct sbni_softc {size_t cur_rxl_index; struct sbni_in_stats in_stats; TYPE_1__ csr1; int ifp; int delta_rxl; } ;
struct sbni_flags {size_t rxl; int fixed_rxl; int fixed_rate; int mac_addr; int rate; } ;
struct ifreq {struct sbni_in_stats ifr_ifru; } ;
struct ifnet {int if_flags; int if_drv_flags; struct sbni_softc* if_softc; } ;
typedef int flags ;
typedef struct sbni_in_stats* caddr_t ;


 int CSR1 ;
 int DEFAULT_RATE ;
 size_t DEF_RXL ;
 int DEF_RXL_DELTA ;
 int IFF_DRV_RUNNING ;
 int IFF_UP ;
 int IF_LLADDR (int ) ;
 int M_DEVBUF ;
 int M_WAITOK ;
 int PRIV_DRIVER ;
 char PR_RES ;
 int SBNI_LOCK (struct sbni_softc*) ;
 int SBNI_UNLOCK (struct sbni_softc*) ;







 int bcopy (struct sbni_in_stats*,struct sbni_in_stats*,int) ;
 int bzero (struct sbni_in_stats*,int) ;
 int copyout (struct sbni_in_stats*,int ,int) ;
 struct thread* curthread ;
 int ether_ioctl (struct ifnet*,int,struct sbni_in_stats*) ;
 int free (struct sbni_in_stats*,int ) ;
 int ifr_data_get_ptr (struct ifreq*) ;
 struct sbni_in_stats* malloc (int,int ,int ) ;
 int priv_check (struct thread*,int ) ;
 int * rxl_tab ;
 int sbni_init_locked (struct sbni_softc*) ;
 int sbni_outb (struct sbni_softc*,int ,char) ;
 int sbni_stop (struct sbni_softc*) ;

__attribute__((used)) static int
sbni_ioctl(struct ifnet *ifp, u_long command, caddr_t data)
{
 struct sbni_softc *sc;
 struct ifreq *ifr;
 struct thread *td;
 struct sbni_in_stats *in_stats;
 struct sbni_flags flags;
 int error;

 sc = ifp->if_softc;
 ifr = (struct ifreq *)data;
 td = curthread;
 error = 0;

 switch (command) {
 case 128:




  SBNI_LOCK(sc);
  if (ifp->if_flags & IFF_UP) {
   if (!(ifp->if_drv_flags & IFF_DRV_RUNNING))
    sbni_init_locked(sc);
  } else {
   if (ifp->if_drv_flags & IFF_DRV_RUNNING) {
    sbni_stop(sc);
   }
  }
  SBNI_UNLOCK(sc);
  break;

 case 134:
 case 133:




  error = 0;


  break;




 case 132:
  SBNI_LOCK(sc);
  bcopy((caddr_t)IF_LLADDR(sc->ifp)+3, (caddr_t) &flags, 3);
  flags.rxl = sc->cur_rxl_index;
  flags.rate = sc->csr1.rate;
  flags.fixed_rxl = (sc->delta_rxl == 0);
  flags.fixed_rate = 1;
  SBNI_UNLOCK(sc);
  bcopy(&flags, &ifr->ifr_ifru, sizeof(flags));
  break;

 case 131:
  in_stats = malloc(sizeof(struct sbni_in_stats), M_DEVBUF,
      M_WAITOK);
  SBNI_LOCK(sc);
  bcopy(&sc->in_stats, in_stats, sizeof(struct sbni_in_stats));
  SBNI_UNLOCK(sc);
  error = copyout(in_stats, ifr_data_get_ptr(ifr),
      sizeof(struct sbni_in_stats));
  free(in_stats, M_DEVBUF);
  break;

 case 129:

  error = priv_check(td, PRIV_DRIVER);
  if (error)
   break;
  bcopy(&ifr->ifr_ifru, &flags, sizeof(flags));
  SBNI_LOCK(sc);
  if (flags.fixed_rxl) {
   sc->delta_rxl = 0;
   sc->cur_rxl_index = flags.rxl;
  } else {
   sc->delta_rxl = DEF_RXL_DELTA;
   sc->cur_rxl_index = DEF_RXL;
  }
  sc->csr1.rxl = rxl_tab[sc->cur_rxl_index];
  sc->csr1.rate = flags.fixed_rate ? flags.rate : DEFAULT_RATE;
  if (flags.mac_addr)
   bcopy((caddr_t) &flags,
         (caddr_t) IF_LLADDR(sc->ifp)+3, 3);


  sbni_outb(sc, CSR1, *(char*)(&sc->csr1) | PR_RES);
  SBNI_UNLOCK(sc);
  break;

 case 130:
  SBNI_LOCK(sc);
  if (!(error = priv_check(td, PRIV_DRIVER)))
   bzero(&sc->in_stats, sizeof(struct sbni_in_stats));
  SBNI_UNLOCK(sc);
  break;

 default:
  error = ether_ioctl(ifp, command, data);
  break;
 }

 return (error);
}
