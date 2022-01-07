
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlr ;
typedef int u_long ;
struct vlanreq {char* vlr_parent; int vlr_tag; } ;
struct ifvlantrunk {int dummy; } ;
struct ifvlan {int ifv_pcp; int ifv_capenable; int ifv_vid; scalar_t__ ifv_mtufudge; scalar_t__ ifv_mintu; } ;
struct TYPE_4__ {int * sa_data; } ;
struct ifreq {int ifr_vlan_pcp; int ifr_reqcap; scalar_t__ ifr_mtu; TYPE_2__ ifr_addr; } ;
struct ifnet {int (* if_ioctl ) (struct ifnet*,int const,scalar_t__) ;int if_pcp; int if_home_vnet; int if_vnet; int if_xname; scalar_t__ if_mtu; int if_addrlen; int if_flags; struct ifvlan* if_softc; } ;
struct ifmediareq {int ifm_count; int ifm_ulist; struct vlanreq ifm_current; } ;
struct ifaddr {TYPE_1__* ifa_addr; } ;
struct epoch_tracker {int dummy; } ;
typedef scalar_t__ caddr_t ;
struct TYPE_3__ {int sa_family; } ;


 int AF_INET ;
 int EINVAL ;
 int ENOENT ;
 int EPERM ;
 int EVENTHANDLER_INVOKE (int ,struct ifnet*,int ) ;
 int IFF_UP ;
 int IFNET_EVENT_PCP ;
 int IF_LLADDR (struct ifnet*) ;
 int NET_EPOCH_ENTER (struct epoch_tracker) ;
 int NET_EPOCH_EXIT (struct epoch_tracker) ;
 struct ifnet* PARENT (struct ifvlan*) ;
 int PRIV_NET_SETVLANPCP ;
 struct ifvlantrunk* TRUNK (struct ifvlan*) ;
 int TRUNK_WLOCK (struct ifvlantrunk*) ;
 int TRUNK_WUNLOCK (struct ifvlantrunk*) ;
 int VLAN_SLOCK () ;
 int VLAN_SUNLOCK () ;
 int VLAN_XLOCK () ;
 int VLAN_XUNLOCK () ;
 int arp_ifinit (struct ifnet*,struct ifaddr*) ;
 int bcopy (int ,int *,int ) ;
 int bzero (struct vlanreq*,int) ;
 int copyin (int ,struct vlanreq*,int) ;
 int copyout (struct vlanreq*,int ,int) ;
 int curthread ;
 int if_ref (struct ifnet*) ;
 int if_rele (struct ifnet*) ;
 int ifnet_event ;
 int ifr_data_get_ptr (struct ifreq*) ;
 struct ifnet* ifunit_ref (char*) ;
 int priv_check (int ,int ) ;
 int strlcpy (char*,int ,int) ;
 int stub1 (struct ifnet*,int const,scalar_t__) ;
 int vlan_capabilities (struct ifvlan*) ;
 int vlan_config (struct ifvlan*,struct ifnet*,int ) ;
 int vlan_setflags (struct ifnet*,int) ;
 int vlan_setmulti (struct ifnet*) ;
 int vlan_tag_recalculate (struct ifvlan*) ;
 int vlan_unconfig (struct ifnet*) ;

__attribute__((used)) static int
vlan_ioctl(struct ifnet *ifp, u_long cmd, caddr_t data)
{
 struct ifnet *p;
 struct ifreq *ifr;
 struct ifaddr *ifa;
 struct ifvlan *ifv;
 struct ifvlantrunk *trunk;
 struct vlanreq vlr;
 int error = 0;

 ifr = (struct ifreq *)data;
 ifa = (struct ifaddr *) data;
 ifv = ifp->if_softc;

 switch (cmd) {
 case 133:
  ifp->if_flags |= IFF_UP;




  break;
 case 137:
  bcopy(IF_LLADDR(ifp), &ifr->ifr_addr.sa_data[0],
      ifp->if_addrlen);
  break;
 case 136:
  VLAN_SLOCK();
  if (TRUNK(ifv) != ((void*)0)) {
   p = PARENT(ifv);
   if_ref(p);
   error = (*p->if_ioctl)(p, 136, data);
   if_rele(p);

   if (error == 0) {
    struct ifmediareq *ifmr;

    ifmr = (struct ifmediareq *)data;
    if (ifmr->ifm_count >= 1 && ifmr->ifm_ulist) {
     ifmr->ifm_count = 1;
     error = copyout(&ifmr->ifm_current,
      ifmr->ifm_ulist,
      sizeof(int));
    }
   }
  } else {
   error = EINVAL;
  }
  VLAN_SUNLOCK();
  break;

 case 130:
  error = EINVAL;
  break;

 case 129:



  VLAN_SLOCK();
  trunk = TRUNK(ifv);
  if (trunk != ((void*)0)) {
   TRUNK_WLOCK(trunk);
   if (ifr->ifr_mtu >
        (PARENT(ifv)->if_mtu - ifv->ifv_mtufudge) ||
       ifr->ifr_mtu <
        (ifv->ifv_mintu - ifv->ifv_mtufudge))
    error = EINVAL;
   else
    ifp->if_mtu = ifr->ifr_mtu;
   TRUNK_WUNLOCK(trunk);
  } else
   error = EINVAL;
  VLAN_SUNLOCK();
  break;

 case 134:
  error = copyin(ifr_data_get_ptr(ifr), &vlr, sizeof(vlr));
  if (error)
   break;
  if (vlr.vlr_parent[0] == '\0') {
   vlan_unconfig(ifp);
   break;
  }
  p = ifunit_ref(vlr.vlr_parent);
  if (p == ((void*)0)) {
   error = ENOENT;
   break;
  }
  error = vlan_config(ifv, p, vlr.vlr_tag);
  if_rele(p);
  break;

 case 138:






  bzero(&vlr, sizeof(vlr));
  VLAN_SLOCK();
  if (TRUNK(ifv) != ((void*)0)) {
   strlcpy(vlr.vlr_parent, PARENT(ifv)->if_xname,
       sizeof(vlr.vlr_parent));
   vlr.vlr_tag = ifv->ifv_vid;
  }
  VLAN_SUNLOCK();
  error = copyout(&vlr, ifr_data_get_ptr(ifr), sizeof(vlr));
  break;

 case 131:




  VLAN_XLOCK();
  if (TRUNK(ifv) != ((void*)0))
   error = vlan_setflags(ifp, 1);
  VLAN_XUNLOCK();
  break;

 case 140:
 case 139:







  VLAN_XLOCK();
  trunk = TRUNK(ifv);
  if (trunk != ((void*)0))
   error = vlan_setmulti(ifp);
  VLAN_XUNLOCK();

  break;
 case 135:






  ifr->ifr_vlan_pcp = ifv->ifv_pcp;
  break;

 case 128:






  error = priv_check(curthread, PRIV_NET_SETVLANPCP);
  if (error)
   break;
  if (ifr->ifr_vlan_pcp > 7) {
   error = EINVAL;
   break;
  }
  ifv->ifv_pcp = ifr->ifr_vlan_pcp;
  ifp->if_pcp = ifv->ifv_pcp;
  vlan_tag_recalculate(ifv);

  EVENTHANDLER_INVOKE(ifnet_event, ifp, IFNET_EVENT_PCP);
  break;

 case 132:
  VLAN_SLOCK();
  ifv->ifv_capenable = ifr->ifr_reqcap;
  trunk = TRUNK(ifv);
  if (trunk != ((void*)0)) {
   struct epoch_tracker et;

   NET_EPOCH_ENTER(et);
   vlan_capabilities(ifv);
   NET_EPOCH_EXIT(et);
  }
  VLAN_SUNLOCK();
  break;

 default:
  error = EINVAL;
  break;
 }

 return (error);
}
