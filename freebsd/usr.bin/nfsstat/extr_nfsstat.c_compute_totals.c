
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsstatsv1 {int busytime; int srvdonecnt; int srvstartcnt; int * srvrpccnt; int * srvduration; scalar_t__* srvops; scalar_t__* srvbytes; } ;


 int NFSV42_NOPS ;
 int NFSV4OP_FAKENOPS ;
 int bintime_add (int *,int *) ;
 int bzero (struct nfsstatsv1*,int) ;

__attribute__((used)) static void
compute_totals(struct nfsstatsv1 *total_stats, struct nfsstatsv1 *cur_stats)
{
 int i;

 bzero(total_stats, sizeof(*total_stats));
 for (i = 0; i < (NFSV42_NOPS + NFSV4OP_FAKENOPS); i++) {
  total_stats->srvbytes[0] += cur_stats->srvbytes[i];
  total_stats->srvops[0] += cur_stats->srvops[i];
  bintime_add(&total_stats->srvduration[0],
       &cur_stats->srvduration[i]);
  total_stats->srvrpccnt[i] = cur_stats->srvrpccnt[i];
 }
 total_stats->srvstartcnt = cur_stats->srvstartcnt;
 total_stats->srvdonecnt = cur_stats->srvdonecnt;
 total_stats->busytime = cur_stats->busytime;

}
