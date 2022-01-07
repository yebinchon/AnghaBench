
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int module_t ;


 int EINVAL ;
 int EVENTHANDLER_DEREGISTER (int ,int ) ;
 int EVENTHANDLER_PRI_ANY ;
 int EVENTHANDLER_REGISTER (int ,int ,int *,int ) ;


 int bootverbose ;
 int bpf_track ;
 int if_clone_detach (int ) ;
 int if_clone_simple (int ,int ,int ,int ) ;
 int iflladdr_event ;
 int printf (char*) ;
 int wlan_bpfevent ;
 int wlan_clone_create ;
 int wlan_clone_destroy ;
 int wlan_cloner ;
 int wlan_iflladdr ;
 int wlan_ifllevent ;
 int wlanname ;

__attribute__((used)) static int
wlan_modevent(module_t mod, int type, void *unused)
{
 switch (type) {
 case 129:
  if (bootverbose)
   printf("wlan: <802.11 Link Layer>\n");
  wlan_bpfevent = EVENTHANDLER_REGISTER(bpf_track,
      bpf_track, 0, EVENTHANDLER_PRI_ANY);
  wlan_ifllevent = EVENTHANDLER_REGISTER(iflladdr_event,
      wlan_iflladdr, ((void*)0), EVENTHANDLER_PRI_ANY);
  wlan_cloner = if_clone_simple(wlanname, wlan_clone_create,
      wlan_clone_destroy, 0);
  return 0;
 case 128:
  if_clone_detach(wlan_cloner);
  EVENTHANDLER_DEREGISTER(bpf_track, wlan_bpfevent);
  EVENTHANDLER_DEREGISTER(iflladdr_event, wlan_ifllevent);
  return 0;
 }
 return EINVAL;
}
