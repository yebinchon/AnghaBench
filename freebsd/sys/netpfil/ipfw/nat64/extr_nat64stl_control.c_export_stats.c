
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nat64stl_cfg {int dummy; } ;
struct ipfw_nat64stl_stats {int dummy; } ;
struct ip_fw_chain {int dummy; } ;


 int __COPY_STAT_FIELD (struct nat64stl_cfg*,struct ipfw_nat64stl_stats*,int ) ;
 int dropped ;
 int ifrags ;
 int nomem ;
 int noproto ;
 int noroute4 ;
 int noroute6 ;
 int oerrors ;
 int ofrags ;
 int opcnt46 ;
 int opcnt64 ;

__attribute__((used)) static void
export_stats(struct ip_fw_chain *ch, struct nat64stl_cfg *cfg,
    struct ipfw_nat64stl_stats *stats)
{

 __COPY_STAT_FIELD(cfg, stats, opcnt64);
 __COPY_STAT_FIELD(cfg, stats, opcnt46);
 __COPY_STAT_FIELD(cfg, stats, ofrags);
 __COPY_STAT_FIELD(cfg, stats, ifrags);
 __COPY_STAT_FIELD(cfg, stats, oerrors);
 __COPY_STAT_FIELD(cfg, stats, noroute4);
 __COPY_STAT_FIELD(cfg, stats, noroute6);
 __COPY_STAT_FIELD(cfg, stats, noproto);
 __COPY_STAT_FIELD(cfg, stats, nomem);
 __COPY_STAT_FIELD(cfg, stats, dropped);
}
