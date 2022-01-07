
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct ipsec_softc {struct ifnet* ifp; int fibnum; } ;
struct ifnet {int if_flags; int if_output; int if_qflush; int if_transmit; int if_ioctl; int if_mtu; scalar_t__ if_addrlen; struct ipsec_softc* if_softc; } ;
struct if_clone {int dummy; } ;
typedef int caddr_t ;
struct TYPE_4__ {TYPE_1__* td_proc; } ;
struct TYPE_3__ {int p_fibnum; } ;


 int DLT_NULL ;
 int IFF_MULTICAST ;
 int IFF_POINTOPOINT ;
 int IFT_TUNNEL ;
 int IPSEC_MTU ;
 int M_IPSEC ;
 int M_WAITOK ;
 int M_ZERO ;
 int bpfattach (struct ifnet*,int ,int) ;
 TYPE_2__* curthread ;
 struct ifnet* if_alloc (int ) ;
 int if_attach (struct ifnet*) ;
 int if_initname (struct ifnet*,int ,int) ;
 int ipsec_ioctl ;
 int ipsec_output ;
 int ipsec_qflush ;
 int ipsec_transmit ;
 int ipsecname ;
 struct ipsec_softc* malloc (int,int ,int) ;

__attribute__((used)) static int
ipsec_clone_create(struct if_clone *ifc, int unit, caddr_t params)
{
 struct ipsec_softc *sc;
 struct ifnet *ifp;

 sc = malloc(sizeof(*sc), M_IPSEC, M_WAITOK | M_ZERO);
 sc->fibnum = curthread->td_proc->p_fibnum;
 sc->ifp = ifp = if_alloc(IFT_TUNNEL);
 ifp->if_softc = sc;
 if_initname(ifp, ipsecname, unit);

 ifp->if_addrlen = 0;
 ifp->if_mtu = IPSEC_MTU;
 ifp->if_flags = IFF_POINTOPOINT | IFF_MULTICAST;
 ifp->if_ioctl = ipsec_ioctl;
 ifp->if_transmit = ipsec_transmit;
 ifp->if_qflush = ipsec_qflush;
 ifp->if_output = ipsec_output;
 if_attach(ifp);
 bpfattach(ifp, DLT_NULL, sizeof(uint32_t));

 return (0);
}
