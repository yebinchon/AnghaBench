
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dn_sch_inst {int dummy; } ;


 int ND (char*) ;

__attribute__((used)) static int
rr_free_sched(struct dn_sch_inst *_si)
{
 (void)_si;
 ND("called");

 return 0;
}
