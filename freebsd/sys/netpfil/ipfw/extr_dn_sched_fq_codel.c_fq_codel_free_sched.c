
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fq_codel_si {int * flows; } ;
struct dn_sch_inst {int dummy; } ;
struct TYPE_2__ {int ref_count; } ;


 int M_DUMMYNET ;
 TYPE_1__ fq_codel_desc ;
 int free (int *,int ) ;

__attribute__((used)) static int
fq_codel_free_sched(struct dn_sch_inst *_si)
{
 struct fq_codel_si *si = (struct fq_codel_si *)_si ;


 free(si->flows , M_DUMMYNET);
 si->flows = ((void*)0);
 fq_codel_desc.ref_count--;

 return 0;
}
