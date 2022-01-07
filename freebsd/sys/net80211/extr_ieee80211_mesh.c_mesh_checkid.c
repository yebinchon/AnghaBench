
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
struct ieee80211_node {scalar_t__ ni_mllid; } ;



__attribute__((used)) static void
mesh_checkid(void *arg, struct ieee80211_node *ni)
{
 uint16_t *r = arg;

 if (*r == ni->ni_mllid)
  *(uint16_t *)arg = 0;
}
