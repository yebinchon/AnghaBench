
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbuf {int dummy; } ;
struct ieee80211_node {int ni_macaddr; } ;


 int ieee80211_ratectl_node_stats (struct ieee80211_node*,struct sbuf*) ;
 int sbuf_printf (struct sbuf*,char*,...) ;

__attribute__((used)) static void
ieee80211_ratectl_sysctl_stats_node_iter(void *arg, struct ieee80211_node *ni)
{

 struct sbuf *sb = (struct sbuf *) arg;
 sbuf_printf(sb, "MAC: %6D\n", ni->ni_macaddr, ":");
 ieee80211_ratectl_node_stats(ni, sb);
 sbuf_printf(sb, "\n");
}
