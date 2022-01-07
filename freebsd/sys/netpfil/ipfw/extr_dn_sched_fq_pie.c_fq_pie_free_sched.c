
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fq_pie_si {TYPE_2__* si_extra; } ;
struct TYPE_3__ {int flows_cnt; } ;
struct fq_pie_schk {TYPE_1__ cfg; } ;
struct fq_pie_flow {int dummy; } ;
struct dn_sch_inst {scalar_t__ sched; } ;
struct TYPE_4__ {struct fq_pie_flow* flows; } ;


 int pie_cleanup (struct fq_pie_flow*) ;

__attribute__((used)) static int
fq_pie_free_sched(struct dn_sch_inst *_si)
{
 struct fq_pie_si *si;
 struct fq_pie_schk *schk;
 struct fq_pie_flow *flows;
 int i;

 si = (struct fq_pie_si *)_si;
 schk = (struct fq_pie_schk *)(_si->sched+1);
 flows = si->si_extra->flows;
 for (i = 0; i < schk->cfg.flows_cnt; i++) {
  pie_cleanup(&flows[i]);
 }
 si->si_extra = ((void*)0);
 return 0;
}
