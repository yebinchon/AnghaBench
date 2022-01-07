
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t grant_ref_t ;
typedef int domid_t ;
struct TYPE_2__ {unsigned long frame; int flags; int domid; } ;


 int GTF_accept_transfer ;
 TYPE_1__* shared ;
 int wmb () ;

void
gnttab_grant_foreign_transfer_ref(grant_ref_t ref, domid_t domid,
 unsigned long pfn)
{
 shared[ref].frame = pfn;
 shared[ref].domid = domid;
 wmb();
 shared[ref].flags = GTF_accept_transfer;
}
