
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct prio_si {scalar_t__ bitmap; int q_array; } ;
struct dn_sch_inst {int dummy; } ;


 int bzero (int ,int) ;

__attribute__((used)) static int
prio_new_sched(struct dn_sch_inst *_si)
{
 struct prio_si *si = (struct prio_si *)(_si + 1);

 bzero(si->q_array, sizeof(si->q_array));
 si->bitmap = 0;

 return 0;
}
