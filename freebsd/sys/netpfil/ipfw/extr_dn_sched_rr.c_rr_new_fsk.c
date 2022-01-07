
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rr_schk {int q_bytes; int min_q; int max_q; } ;
struct TYPE_2__ {int * par; } ;
struct dn_fsk {TYPE_1__ fs; scalar_t__ sched; } ;


 int ipdn_bound_var (int *,int,int,int,char*) ;

__attribute__((used)) static int
rr_new_fsk(struct dn_fsk *fs)
{
 struct rr_schk *schk = (struct rr_schk *)(fs->sched + 1);


 ipdn_bound_var(&fs->fs.par[0], 1,
  1, 65536, "RR weight");
 ipdn_bound_var(&fs->fs.par[1], schk->q_bytes,
  schk->min_q, schk->max_q, "RR quantum");
 return 0;
}
