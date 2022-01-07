
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nptv6_cfg {int dummy; } ;
struct ipfw_nptv6_stats {int dummy; } ;
struct ip_fw_chain {int dummy; } ;


 int __COPY_STAT_FIELD (struct nptv6_cfg*,struct ipfw_nptv6_stats*,int ) ;
 int dropped ;
 int ex2in ;
 int in2ex ;

__attribute__((used)) static void
export_stats(struct ip_fw_chain *ch, struct nptv6_cfg *cfg,
    struct ipfw_nptv6_stats *stats)
{

 __COPY_STAT_FIELD(cfg, stats, in2ex);
 __COPY_STAT_FIELD(cfg, stats, ex2in);
 __COPY_STAT_FIELD(cfg, stats, dropped);
}
