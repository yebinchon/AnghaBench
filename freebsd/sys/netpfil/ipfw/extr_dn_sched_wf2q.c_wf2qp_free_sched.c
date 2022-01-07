
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wf2qp_si {int idle_heap; int ne_heap; int sch_heap; } ;
struct dn_sch_inst {int dummy; } ;


 int heap_free (int *) ;

__attribute__((used)) static int
wf2qp_free_sched(struct dn_sch_inst *_si)
{
 struct wf2qp_si *si = (struct wf2qp_si *)(_si + 1);

 heap_free(&si->sch_heap);
 heap_free(&si->ne_heap);
 heap_free(&si->idle_heap);

 return 0;
}
