
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ieee80211_send_action_func ;


 int EINVAL ;






 int ** ba_send_action ;
 int ** ht_send_action ;
 int ** meshaction_send_action ;
 int ** meshpl_send_action ;
 int nitems (int **) ;
 int ** vendor_send_action ;
 int ** vht_send_action ;

int
ieee80211_send_action_register(int cat, int act, ieee80211_send_action_func *f)
{
 switch (cat) {
 case 133:
  if (act >= nitems(ba_send_action))
   break;
  ba_send_action[act] = f;
  return 0;
 case 132:
  if (act >= nitems(ht_send_action))
   break;
  ht_send_action[act] = f;
  return 0;
 case 130:
  if (act >= nitems(meshpl_send_action))
   break;
  meshpl_send_action[act] = f;
  return 0;
 case 131:
  if (act >= nitems(meshaction_send_action))
   break;
  meshaction_send_action[act] = f;
  return 0;
 case 129:
  if (act >= nitems(vendor_send_action))
   break;
  vendor_send_action[act] = f;
  return 0;
 case 128:
  if (act >= nitems(vht_send_action))
   break;
  vht_send_action[act] = f;
  return 0;
 }
 return EINVAL;
}
