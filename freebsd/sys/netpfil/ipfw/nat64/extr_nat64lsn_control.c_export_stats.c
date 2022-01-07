
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nat64lsn_cfg {int plen4; struct nat64lsn_alias* aliases; int hosts_count; } ;
struct nat64lsn_alias {int * icmp_pgmask; int icmp_chunkmask; int * udp_pgmask; int udp_chunkmask; int * tcp_pgmask; int tcp_chunkmask; } ;
struct ipfw_nat64lsn_stats {int icmpchunks; int udpchunks; int tcpchunks; int hostcount; } ;
struct ip_fw_chain {int dummy; } ;


 scalar_t__ ISSET32 (int ,int) ;
 int __COPY_STAT_FIELD (struct nat64lsn_cfg*,struct ipfw_nat64lsn_stats*,int ) ;
 scalar_t__ bitcount32 (int ) ;
 int dropped ;
 int ifrags ;
 int jcalls ;
 int jhostfails ;
 int jhostsreq ;
 int jmaxlen ;
 int jnomem ;
 int jportfails ;
 int jportreq ;
 int jreinjected ;
 int jrequests ;
 int nomatch4 ;
 int nomem ;
 int noproto ;
 int noroute4 ;
 int noroute6 ;
 int oerrors ;
 int ofrags ;
 int opcnt46 ;
 int opcnt64 ;
 int screated ;
 int sdeleted ;
 int spgcreated ;
 int spgdeleted ;

__attribute__((used)) static void
export_stats(struct ip_fw_chain *ch, struct nat64lsn_cfg *cfg,
    struct ipfw_nat64lsn_stats *stats)
{
 struct nat64lsn_alias *alias;
 int i, j;

 __COPY_STAT_FIELD(cfg, stats, opcnt64);
 __COPY_STAT_FIELD(cfg, stats, opcnt46);
 __COPY_STAT_FIELD(cfg, stats, ofrags);
 __COPY_STAT_FIELD(cfg, stats, ifrags);
 __COPY_STAT_FIELD(cfg, stats, oerrors);
 __COPY_STAT_FIELD(cfg, stats, noroute4);
 __COPY_STAT_FIELD(cfg, stats, noroute6);
 __COPY_STAT_FIELD(cfg, stats, nomatch4);
 __COPY_STAT_FIELD(cfg, stats, noproto);
 __COPY_STAT_FIELD(cfg, stats, nomem);
 __COPY_STAT_FIELD(cfg, stats, dropped);

 __COPY_STAT_FIELD(cfg, stats, jcalls);
 __COPY_STAT_FIELD(cfg, stats, jrequests);
 __COPY_STAT_FIELD(cfg, stats, jhostsreq);
 __COPY_STAT_FIELD(cfg, stats, jportreq);
 __COPY_STAT_FIELD(cfg, stats, jhostfails);
 __COPY_STAT_FIELD(cfg, stats, jportfails);
 __COPY_STAT_FIELD(cfg, stats, jmaxlen);
 __COPY_STAT_FIELD(cfg, stats, jnomem);
 __COPY_STAT_FIELD(cfg, stats, jreinjected);
 __COPY_STAT_FIELD(cfg, stats, screated);
 __COPY_STAT_FIELD(cfg, stats, sdeleted);
 __COPY_STAT_FIELD(cfg, stats, spgcreated);
 __COPY_STAT_FIELD(cfg, stats, spgdeleted);

 stats->hostcount = cfg->hosts_count;
 for (i = 0; i < (1 << (32 - cfg->plen4)); i++) {
  alias = &cfg->aliases[i];
  for (j = 0; j < 32 && ISSET32(alias->tcp_chunkmask, j); j++)
   stats->tcpchunks += bitcount32(alias->tcp_pgmask[j]);
  for (j = 0; j < 32 && ISSET32(alias->udp_chunkmask, j); j++)
   stats->udpchunks += bitcount32(alias->udp_pgmask[j]);
  for (j = 0; j < 32 && ISSET32(alias->icmp_chunkmask, j); j++)
   stats->icmpchunks += bitcount32(alias->icmp_pgmask[j]);
 }
}
