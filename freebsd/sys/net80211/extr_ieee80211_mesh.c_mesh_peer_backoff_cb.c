
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_node {scalar_t__ ni_mlhcnt; } ;



__attribute__((used)) static void
mesh_peer_backoff_cb(void *arg)
{
 struct ieee80211_node *ni = (struct ieee80211_node *)arg;


 ni->ni_mlhcnt = 0;
}
