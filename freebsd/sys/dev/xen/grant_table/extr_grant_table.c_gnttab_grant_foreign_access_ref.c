
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t grant_ref_t ;
typedef int domid_t ;
struct TYPE_2__ {unsigned long frame; int flags; int domid; } ;


 int GTF_permit_access ;
 int GTF_readonly ;
 TYPE_1__* shared ;
 int wmb () ;

void
gnttab_grant_foreign_access_ref(grant_ref_t ref, domid_t domid,
    unsigned long frame, int readonly)
{

 shared[ref].frame = frame;
 shared[ref].domid = domid;
 wmb();
 shared[ref].flags = GTF_permit_access | (readonly ? GTF_readonly : 0);
}
