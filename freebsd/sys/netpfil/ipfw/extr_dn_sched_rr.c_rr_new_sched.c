
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rr_si {int * tail; int head; } ;
struct dn_sch_inst {int dummy; } ;


 int ND (char*) ;

__attribute__((used)) static int
rr_new_sched(struct dn_sch_inst *_si)
{
 struct rr_si *si = (struct rr_si *)(_si + 1);

 ND("called");
 si->head = si->tail = ((void*)0);

 return 0;
}
