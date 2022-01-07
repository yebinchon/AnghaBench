
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int32_t ;
struct TYPE_2__ {int ifq_maxlen; } ;
struct ifnet {int if_flags; int if_capabilities; int if_capenable; int if_hwassist; TYPE_1__ if_snd; int if_output; int if_ioctl; int if_mtu; } ;
struct if_clone {int dummy; } ;
typedef int caddr_t ;


 int DLT_NULL ;
 int ENOSPC ;
 int IFCAP_HWCSUM ;
 int IFCAP_HWCSUM_IPV6 ;
 int IFCAP_LINKSTATE ;
 int IFF_LOOPBACK ;
 int IFF_MULTICAST ;
 int IFT_LOOP ;
 int LOMTU ;
 int LO_CSUM_FEATURES ;
 int LO_CSUM_FEATURES6 ;
 struct ifnet* V_loif ;
 int bpfattach (struct ifnet*,int ,int) ;
 struct ifnet* if_alloc (int ) ;
 int if_attach (struct ifnet*) ;
 int if_initname (struct ifnet*,int ,int) ;
 int ifqmaxlen ;
 int loioctl ;
 int loname ;
 int looutput ;

__attribute__((used)) static int
lo_clone_create(struct if_clone *ifc, int unit, caddr_t params)
{
 struct ifnet *ifp;

 ifp = if_alloc(IFT_LOOP);
 if (ifp == ((void*)0))
  return (ENOSPC);

 if_initname(ifp, loname, unit);
 ifp->if_mtu = LOMTU;
 ifp->if_flags = IFF_LOOPBACK | IFF_MULTICAST;
 ifp->if_ioctl = loioctl;
 ifp->if_output = looutput;
 ifp->if_snd.ifq_maxlen = ifqmaxlen;
 ifp->if_capabilities = ifp->if_capenable =
     IFCAP_HWCSUM | IFCAP_HWCSUM_IPV6 | IFCAP_LINKSTATE;
 ifp->if_hwassist = LO_CSUM_FEATURES | LO_CSUM_FEATURES6;
 if_attach(ifp);
 bpfattach(ifp, DLT_NULL, sizeof(u_int32_t));
 if (V_loif == ((void*)0))
  V_loif = ifp;

 return (0);
}
