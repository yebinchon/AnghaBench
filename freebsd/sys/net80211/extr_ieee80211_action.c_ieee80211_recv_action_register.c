
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ieee80211_recv_action_func ;


 int EINVAL ;






 int ** ba_recv_action ;
 int ** ht_recv_action ;
 int ** meshaction_recv_action ;
 int ** meshpl_recv_action ;
 int nitems (int **) ;
 int ** vendor_recv_action ;
 int ** vht_recv_action ;

int
ieee80211_recv_action_register(int cat, int act, ieee80211_recv_action_func *f)
{
 switch (cat) {
 case 133:
  if (act >= nitems(ba_recv_action))
   break;
  ba_recv_action[act] = f;
  return 0;
 case 132:
  if (act >= nitems(ht_recv_action))
   break;
  ht_recv_action[act] = f;
  return 0;
 case 130:
  if (act >= nitems(meshpl_recv_action))
   break;
  meshpl_recv_action[act] = f;
  return 0;
 case 131:
  if (act >= nitems(meshaction_recv_action))
   break;
  meshaction_recv_action[act] = f;
  return 0;
 case 129:
  if (act >= nitems(vendor_recv_action))
   break;
  vendor_recv_action[act] = f;
  return 0;
 case 128:
  if (act >= nitems(vht_recv_action))
   break;
  vht_recv_action[act] = f;
  return 0;
 }
 return EINVAL;
}
