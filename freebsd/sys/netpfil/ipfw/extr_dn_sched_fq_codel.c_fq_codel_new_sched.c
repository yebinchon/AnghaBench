
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int oid; } ;
struct dn_queue {int fs; struct dn_sch_inst* _si; TYPE_1__ ni; } ;
struct fq_codel_si {TYPE_5__* flows; int oldflows; int newflows; int perturbation; struct dn_queue main_q; } ;
struct TYPE_9__ {int flows_cnt; } ;
struct fq_codel_schk {TYPE_3__ cfg; } ;
struct fq_codel_flow {int dummy; } ;
struct dn_sch_inst {TYPE_2__* sched; } ;
struct TYPE_12__ {int ref_count; } ;
struct TYPE_10__ {int maxpkt_size; } ;
struct TYPE_11__ {TYPE_4__ cst; } ;
struct TYPE_8__ {int fs; } ;


 int D (char*) ;
 int DN_QUEUE ;
 int ENOMEM ;
 int M_DUMMYNET ;
 int M_NOWAIT ;
 int M_ZERO ;
 int STAILQ_INIT (int *) ;
 TYPE_6__ fq_codel_desc ;
 TYPE_5__* mallocarray (int,int,int ,int) ;
 int random () ;
 int set_oid (int *,int ,int) ;

__attribute__((used)) static int
fq_codel_new_sched(struct dn_sch_inst *_si)
{
 struct fq_codel_si *si;
 struct dn_queue *q;
 struct fq_codel_schk *schk;
 int i;

 si = (struct fq_codel_si *)_si;
 schk = (struct fq_codel_schk *)(_si->sched+1);

 if(si->flows) {
  D("si already configured!");
  return 0;
 }


 q = &si->main_q;
 set_oid(&q->ni.oid, DN_QUEUE, sizeof(*q));
 q->_si = _si;
 q->fs = _si->sched->fs;


 si->flows = mallocarray(schk->cfg.flows_cnt,
     sizeof(struct fq_codel_flow), M_DUMMYNET, M_NOWAIT | M_ZERO);
 if (si->flows == ((void*)0)) {
  D("cannot allocate memory for fq_codel configuration parameters");
  return ENOMEM ;
 }


 si->perturbation = random();


 STAILQ_INIT(&si->newflows);
 STAILQ_INIT(&si->oldflows);


 for (i = 0; i < schk->cfg.flows_cnt; i++) {

  si->flows[i].cst.maxpkt_size = 500;
 }

 fq_codel_desc.ref_count++;
 return 0;
}
