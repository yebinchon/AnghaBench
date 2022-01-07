
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timeval {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
struct TYPE_2__ {int general; int ht; int cck; int ofdm; } ;
struct iwn_stats {int tx; TYPE_1__ rx; } ;
struct iwnstats {struct iwn_stats st; } ;


 int gettimeofday (struct timeval*,int *) ;
 int iwn_stats_general_print (struct iwnstats*,struct iwn_stats*) ;
 int iwn_stats_ht_phy_print (struct iwnstats*,int *) ;
 int iwn_stats_phy_print (struct iwnstats*,int *,char*) ;
 int iwn_stats_rx_general_print (struct iwnstats*,int *) ;
 int iwn_stats_tx_print (struct iwnstats*,int *) ;
 int printf (char*,...) ;

__attribute__((used)) static void
iwn_print(struct iwnstats *is)
{
 struct iwn_stats *s;
 struct timeval tv;

 s = &is->st;

 gettimeofday(&tv, ((void*)0));
 printf("time=%ld.%.6ld\n", (long)tv.tv_sec, (long)tv.tv_usec);

 iwn_stats_general_print(is, s);


 iwn_stats_phy_print(is, &s->rx.ofdm, "ofdm");
 iwn_stats_phy_print(is, &s->rx.cck, "cck");
 iwn_stats_ht_phy_print(is, &s->rx.ht);
 iwn_stats_rx_general_print(is, &s->rx.general);


 iwn_stats_tx_print(is, &s->tx);
 printf("--\n");
}
