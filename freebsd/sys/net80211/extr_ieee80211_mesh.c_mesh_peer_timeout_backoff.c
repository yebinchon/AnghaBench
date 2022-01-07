
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ieee80211_node {int ni_mltval; int ni_mltimer; } ;


 int arc4random () ;
 int callout_reset (int *,int,int ,struct ieee80211_node*) ;
 int mesh_peer_timeout_cb ;

__attribute__((used)) static void
mesh_peer_timeout_backoff(struct ieee80211_node *ni)
{
 uint32_t r;

 r = arc4random();
 ni->ni_mltval += r % ni->ni_mltval;
 callout_reset(&ni->ni_mltimer, ni->ni_mltval, mesh_peer_timeout_cb,
     ni);
}
