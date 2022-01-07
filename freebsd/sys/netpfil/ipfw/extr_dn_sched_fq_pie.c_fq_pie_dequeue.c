
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ len; } ;
struct mbuf {TYPE_2__ m_pkthdr; } ;
struct fq_pie_list {int dummy; } ;
struct TYPE_3__ {scalar_t__ sched; } ;
struct fq_pie_si {struct fq_pie_list oldflows; struct fq_pie_list newflows; TYPE_1__ _si; } ;
struct dn_sch_fq_pie_parms {scalar_t__ quantum; } ;
struct fq_pie_schk {struct dn_sch_fq_pie_parms cfg; } ;
struct fq_pie_flow {scalar_t__ deficit; int pst; scalar_t__ active; } ;
struct dn_sch_inst {int dummy; } ;


 scalar_t__ STAILQ_EMPTY (struct fq_pie_list*) ;
 struct fq_pie_flow* STAILQ_FIRST (struct fq_pie_list*) ;
 int STAILQ_INSERT_TAIL (struct fq_pie_list*,struct fq_pie_flow*,int ) ;
 int STAILQ_REMOVE_HEAD (struct fq_pie_list*,int ) ;
 int flowchain ;
 int fq_deactivate_pie (int *) ;
 struct mbuf* pie_dequeue (struct fq_pie_flow*,struct fq_pie_si*) ;

__attribute__((used)) static struct mbuf *
fq_pie_dequeue(struct dn_sch_inst *_si)
{
 struct fq_pie_si *si;
 struct fq_pie_schk *schk;
 struct dn_sch_fq_pie_parms *param;
 struct fq_pie_flow *f;
 struct mbuf *mbuf;
 struct fq_pie_list *fq_pie_flowlist;

 si = (struct fq_pie_si *)_si;
 schk = (struct fq_pie_schk *)(si->_si.sched+1);
 param = &schk->cfg;

 do {

  if (STAILQ_EMPTY(&si->newflows))
   fq_pie_flowlist = &si->oldflows;
  else
   fq_pie_flowlist = &si->newflows;


  if (STAILQ_EMPTY(fq_pie_flowlist))
   return ((void*)0);

  f = STAILQ_FIRST(fq_pie_flowlist);
  while (f != ((void*)0)) {





   if (f->deficit < 0) {
     f->deficit += param->quantum;
     STAILQ_REMOVE_HEAD(fq_pie_flowlist, flowchain);
     STAILQ_INSERT_TAIL(&si->oldflows, f, flowchain);
    } else
     break;

   f = STAILQ_FIRST(fq_pie_flowlist);
  }


  if (STAILQ_EMPTY(fq_pie_flowlist))
   continue;


  mbuf = pie_dequeue(f, si);


  if (!mbuf) {




   if (fq_pie_flowlist == &si->newflows) {
    STAILQ_REMOVE_HEAD(fq_pie_flowlist, flowchain);
    STAILQ_INSERT_TAIL(&si->oldflows, f, flowchain);
   } else {
    f->active = 0;
    fq_deactivate_pie(&f->pst);
    STAILQ_REMOVE_HEAD(fq_pie_flowlist, flowchain);
   }

   continue;
  }



  f->deficit -= mbuf->m_pkthdr.len;
  return mbuf;

 } while (1);


 return ((void*)0);
}
