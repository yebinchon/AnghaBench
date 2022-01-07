
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_node {int ni_mltimer; } ;


 int callout_drain (int *) ;

__attribute__((used)) static __inline void
mesh_peer_timeout_stop(struct ieee80211_node *ni)
{
 callout_drain(&ni->ni_mltimer);
}
