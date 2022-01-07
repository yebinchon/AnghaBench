
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ len; } ;
struct mbuf {TYPE_2__ m_pkthdr; } ;
struct fq_codel_list {int dummy; } ;
struct TYPE_3__ {scalar_t__ sched; } ;
struct fq_codel_si {struct fq_codel_list oldflows; struct fq_codel_list newflows; TYPE_1__ _si; } ;
struct dn_sch_fq_codel_parms {scalar_t__ quantum; } ;
struct fq_codel_schk {struct dn_sch_fq_codel_parms cfg; } ;
struct fq_codel_flow {scalar_t__ deficit; scalar_t__ active; } ;
struct dn_sch_inst {int dummy; } ;


 scalar_t__ STAILQ_EMPTY (struct fq_codel_list*) ;
 struct fq_codel_flow* STAILQ_FIRST (struct fq_codel_list*) ;
 int STAILQ_INSERT_TAIL (struct fq_codel_list*,struct fq_codel_flow*,int ) ;
 int STAILQ_REMOVE_HEAD (struct fq_codel_list*,int ) ;
 int flowchain ;
 struct mbuf* fqc_codel_dequeue (struct fq_codel_flow*,struct fq_codel_si*) ;

__attribute__((used)) static struct mbuf *
fq_codel_dequeue(struct dn_sch_inst *_si)
{
 struct fq_codel_si *si;
 struct fq_codel_schk *schk;
 struct dn_sch_fq_codel_parms *param;
 struct fq_codel_flow *f;
 struct mbuf *mbuf;
 struct fq_codel_list *fq_codel_flowlist;

 si = (struct fq_codel_si *)_si;
 schk = (struct fq_codel_schk *)(si->_si.sched+1);
 param = &schk->cfg;

 do {

  if (STAILQ_EMPTY(&si->newflows))
   fq_codel_flowlist = &si->oldflows;
  else
   fq_codel_flowlist = &si->newflows;


  if (STAILQ_EMPTY(fq_codel_flowlist))
   return ((void*)0);

  f = STAILQ_FIRST(fq_codel_flowlist);
  while (f != ((void*)0)) {





   if (f->deficit < 0) {
     f->deficit += param->quantum;
     STAILQ_REMOVE_HEAD(fq_codel_flowlist, flowchain);
     STAILQ_INSERT_TAIL(&si->oldflows, f, flowchain);
    } else
     break;

   f = STAILQ_FIRST(fq_codel_flowlist);
  }


  if (STAILQ_EMPTY(fq_codel_flowlist))
   continue;


  mbuf = fqc_codel_dequeue(f, si);


  if (!mbuf) {




   if (fq_codel_flowlist == &si->newflows) {
    STAILQ_REMOVE_HEAD(fq_codel_flowlist, flowchain);
    STAILQ_INSERT_TAIL(&si->oldflows, f, flowchain);
   } else {
    f->active = 0;
    STAILQ_REMOVE_HEAD(fq_codel_flowlist, flowchain);
   }

   continue;
  }



  f->deficit -= mbuf->m_pkthdr.len;
  return mbuf;

 } while (1);


 return ((void*)0);
}
