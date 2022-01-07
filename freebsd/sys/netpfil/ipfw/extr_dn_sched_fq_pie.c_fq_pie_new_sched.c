
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct fq_pie_si_extra {int dummy; } ;
struct TYPE_8__ {int oid; } ;
struct dn_queue {int fs; struct dn_sch_inst* _si; TYPE_1__ ni; } ;
struct fq_pie_si {TYPE_5__* si_extra; int oldflows; int newflows; int perturbation; struct dn_queue main_q; } ;
struct TYPE_11__ {int flows_cnt; int pcfg; } ;
struct fq_pie_schk {TYPE_4__ cfg; } ;
struct TYPE_10__ {int * parms; } ;
struct fq_pie_flow {TYPE_5__* psi_extra; TYPE_3__ pst; } ;
struct dn_sch_inst {TYPE_2__* sched; } ;
struct TYPE_13__ {int ref_count; } ;
struct TYPE_12__ {scalar_t__ nr_active_q; struct fq_pie_flow* flows; } ;
struct TYPE_9__ {int fs; } ;


 int D (char*) ;
 int DN_QUEUE ;
 int ENOMEM ;
 int M_DUMMYNET ;
 int M_NOWAIT ;
 int M_ZERO ;
 int STAILQ_INIT (int *) ;
 TYPE_7__ fq_pie_desc ;
 int free (TYPE_5__*,int ) ;
 TYPE_5__* malloc (int,int ,int) ;
 struct fq_pie_flow* mallocarray (int,int,int ,int) ;
 int pie_init (struct fq_pie_flow*,struct fq_pie_schk*) ;
 int random () ;
 int set_oid (int *,int ,int) ;

__attribute__((used)) static int
fq_pie_new_sched(struct dn_sch_inst *_si)
{
 struct fq_pie_si *si;
 struct dn_queue *q;
 struct fq_pie_schk *schk;
 struct fq_pie_flow *flows;
 int i;

 si = (struct fq_pie_si *)_si;
 schk = (struct fq_pie_schk *)(_si->sched+1);

 if(si->si_extra) {
  D("si already configured!");
  return 0;
 }


 q = &si->main_q;
 set_oid(&q->ni.oid, DN_QUEUE, sizeof(*q));
 q->_si = _si;
 q->fs = _si->sched->fs;


 si->si_extra = malloc(sizeof(struct fq_pie_si_extra),
   M_DUMMYNET, M_NOWAIT | M_ZERO);
 if (si->si_extra == ((void*)0)) {
  D("cannot allocate memory for fq_pie si extra vars");
  return ENOMEM ;
 }

 si->si_extra->flows = mallocarray(schk->cfg.flows_cnt,
     sizeof(struct fq_pie_flow), M_DUMMYNET, M_NOWAIT | M_ZERO);
 flows = si->si_extra->flows;
 if (flows == ((void*)0)) {
  free(si->si_extra, M_DUMMYNET);
  si->si_extra = ((void*)0);
  D("cannot allocate memory for fq_pie flows");
  return ENOMEM ;
 }


 si->perturbation = random();
 si->si_extra->nr_active_q = 0;


 STAILQ_INIT(&si->newflows);
 STAILQ_INIT(&si->oldflows);


 for (i = 0; i < schk->cfg.flows_cnt; i++) {
  flows[i].pst.parms = &schk->cfg.pcfg;
  flows[i].psi_extra = si->si_extra;
  pie_init(&flows[i], schk);
 }

 fq_pie_desc.ref_count++;

 return 0;
}
