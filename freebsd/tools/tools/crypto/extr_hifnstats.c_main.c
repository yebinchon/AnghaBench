
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hifn_stats {int hst_invalid; int hst_nomem; int hst_abort; int hst_noirq; int hst_unaligned; int hst_totbatch; int hst_maxbatch; int hst_nomem_map; int hst_nomem_load; int hst_nomem_mbuf; int hst_nomem_mcl; int hst_nomem_cr; int hst_nomem_sd; int hst_opackets; int hst_obytes; int hst_ipackets; int hst_ibytes; } ;
typedef int stats ;


 int err (int,char*) ;
 int printf (char*,int,int,...) ;
 scalar_t__ sysctlbyname (char*,struct hifn_stats*,size_t*,int *,int ) ;

int
main(int argc, char *argv[])
{
 struct hifn_stats stats;
 size_t slen;

 slen = sizeof (stats);
 if (sysctlbyname("hw.hifn.stats", &stats, &slen, ((void*)0), 0) < 0)
  err(1, "kern.hifn.stats");

 printf("input %llu bytes %u packets\n",
  stats.hst_ibytes, stats.hst_ipackets);
 printf("output %llu bytes %u packets\n",
  stats.hst_obytes, stats.hst_opackets);
 printf("invalid %u nomem %u abort %u\n",
  stats.hst_invalid, stats.hst_nomem, stats.hst_abort);
 printf("noirq %u unaligned %u\n",
  stats.hst_noirq, stats.hst_unaligned);
 printf("totbatch %u maxbatch %u\n",
  stats.hst_totbatch, stats.hst_maxbatch);
 printf("nomem: map %u load %u mbuf %u mcl %u cr %u sd %u\n",
  stats.hst_nomem_map, stats.hst_nomem_load,
  stats.hst_nomem_mbuf, stats.hst_nomem_mcl,
  stats.hst_nomem_cr, stats.hst_nomem_sd);
 return 0;
}
