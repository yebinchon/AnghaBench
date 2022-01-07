
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int module_t ;


 int EINVAL ;
 int EOPNOTSUPP ;
 int EVENTHANDLER_DEREGISTER (int ,int *) ;
 int EVENTHANDLER_PRI_ANY ;
 int * EVENTHANDLER_REGISTER (int ,int ,int *,int ) ;
 int MFCHASHSIZE ;
 int MFC_LOCK_DESTROY () ;
 int MFC_LOCK_INIT () ;


 int MROUTER_LOCK () ;
 int MROUTER_LOCK_DESTROY () ;
 int MROUTER_LOCK_INIT () ;
 int MROUTER_UNLOCK () ;
 int M_WAITOK ;
 int TUNABLE_ULONG_FETCH (char*,int *) ;
 int VIF_LOCK_DESTROY () ;
 int VIF_LOCK_INIT () ;
 int * X_ip_mcast_src ;
 int * X_ip_mforward ;
 int * X_ip_mrouter_done ;
 int * X_ip_mrouter_get ;
 int * X_ip_mrouter_set ;
 int * X_ip_rsvp_force_done ;
 int * X_ip_rsvp_vif ;
 int * X_legal_vif_num ;
 int * X_mrt_ioctl ;
 int * X_rsvp_input ;
 int * if_detach_event_tag ;
 int if_detached_event ;
 int ifnet_departure_event ;
 int * ip_encap_attach (int *,int *,int ) ;
 int ip_encap_detach (int *) ;
 int * ip_mcast_src ;
 int * ip_mforward ;
 int ip_mrouter_cnt ;
 int * ip_mrouter_done ;
 int * ip_mrouter_get ;
 int * ip_mrouter_set ;
 int ip_mrouter_unloading ;
 int * ip_rsvp_force_done ;
 int * ip_rsvp_vif ;
 int ipv4_encap_cfg ;
 int * legal_vif_num ;
 int mfchashsize ;
 int * mrt_ioctl ;
 int * pim_encap_cookie ;
 int pim_squelch_wholepkt ;
 int powerof2 (int ) ;
 int printf (char*,...) ;
 int * rsvp_input_p ;

__attribute__((used)) static int
ip_mroute_modevent(module_t mod, int type, void *unused)
{

    switch (type) {
    case 129:
 MROUTER_LOCK_INIT();

 if_detach_event_tag = EVENTHANDLER_REGISTER(ifnet_departure_event,
     if_detached_event, ((void*)0), EVENTHANDLER_PRI_ANY);
 if (if_detach_event_tag == ((void*)0)) {
  printf("ip_mroute: unable to register "
      "ifnet_departure_event handler\n");
  MROUTER_LOCK_DESTROY();
  return (EINVAL);
 }

 MFC_LOCK_INIT();
 VIF_LOCK_INIT();

 mfchashsize = MFCHASHSIZE;
 if (TUNABLE_ULONG_FETCH("net.inet.ip.mfchashsize", &mfchashsize) &&
     !powerof2(mfchashsize)) {
  printf("WARNING: %s not a power of 2; using default\n",
      "net.inet.ip.mfchashsize");
  mfchashsize = MFCHASHSIZE;
 }

 pim_squelch_wholepkt = 0;
 TUNABLE_ULONG_FETCH("net.inet.pim.squelch_wholepkt",
     &pim_squelch_wholepkt);

 pim_encap_cookie = ip_encap_attach(&ipv4_encap_cfg, ((void*)0), M_WAITOK);
 if (pim_encap_cookie == ((void*)0)) {
  printf("ip_mroute: unable to attach pim encap\n");
  VIF_LOCK_DESTROY();
  MFC_LOCK_DESTROY();
  MROUTER_LOCK_DESTROY();
  return (EINVAL);
 }

 ip_mcast_src = X_ip_mcast_src;
 ip_mforward = X_ip_mforward;
 ip_mrouter_done = X_ip_mrouter_done;
 ip_mrouter_get = X_ip_mrouter_get;
 ip_mrouter_set = X_ip_mrouter_set;

 ip_rsvp_force_done = X_ip_rsvp_force_done;
 ip_rsvp_vif = X_ip_rsvp_vif;

 legal_vif_num = X_legal_vif_num;
 mrt_ioctl = X_mrt_ioctl;
 rsvp_input_p = X_rsvp_input;
 break;

    case 128:
 MROUTER_LOCK();
 if (ip_mrouter_cnt != 0) {
     MROUTER_UNLOCK();
     return (EINVAL);
 }
 ip_mrouter_unloading = 1;
 MROUTER_UNLOCK();

 EVENTHANDLER_DEREGISTER(ifnet_departure_event, if_detach_event_tag);

 if (pim_encap_cookie) {
     ip_encap_detach(pim_encap_cookie);
     pim_encap_cookie = ((void*)0);
 }

 ip_mcast_src = ((void*)0);
 ip_mforward = ((void*)0);
 ip_mrouter_done = ((void*)0);
 ip_mrouter_get = ((void*)0);
 ip_mrouter_set = ((void*)0);

 ip_rsvp_force_done = ((void*)0);
 ip_rsvp_vif = ((void*)0);

 legal_vif_num = ((void*)0);
 mrt_ioctl = ((void*)0);
 rsvp_input_p = ((void*)0);

 VIF_LOCK_DESTROY();
 MFC_LOCK_DESTROY();
 MROUTER_LOCK_DESTROY();
 break;

    default:
 return EOPNOTSUPP;
    }
    return 0;
}
