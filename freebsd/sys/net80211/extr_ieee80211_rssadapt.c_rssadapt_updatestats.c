
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_rssadapt_node {int ra_pktrate; int ra_nfail; int ra_nok; int ra_raise_interval; } ;


 int MAX (int,int) ;
 int msecs_to_ticks (long) ;

__attribute__((used)) static void
rssadapt_updatestats(struct ieee80211_rssadapt_node *ra)
{
 long interval;

 ra->ra_pktrate = (ra->ra_pktrate + 10*(ra->ra_nfail + ra->ra_nok))/2;
 ra->ra_nfail = ra->ra_nok = 0;





 interval = MAX(10*1000, 10*1000 / MAX(1, 10 * ra->ra_pktrate));
 ra->ra_raise_interval = msecs_to_ticks(interval);
}
