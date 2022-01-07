
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int pend_frames_lock; int pend_frames; } ;
typedef TYPE_2__ ocs_xport_fcfi_t ;
struct TYPE_9__ {TYPE_1__* xport; } ;
typedef TYPE_3__ ocs_t ;
struct TYPE_10__ {size_t fcf_indicator; TYPE_3__* ocs; } ;
typedef TYPE_4__ ocs_domain_t ;
typedef int int32_t ;
struct TYPE_7__ {TYPE_2__* fcfi; } ;


 size_t SLI4_MAX_FCFI ;
 int ocs_assert (int,int) ;
 int ocs_purge_pending (TYPE_3__*,int *,int *) ;

int32_t
ocs_domain_purge_pending(ocs_domain_t *domain)
{
 ocs_t *ocs = domain->ocs;
 ocs_xport_fcfi_t *xport_fcfi;

 ocs_assert(domain->fcf_indicator < SLI4_MAX_FCFI, -1);
 xport_fcfi = &ocs->xport->fcfi[domain->fcf_indicator];
 return ocs_purge_pending(domain->ocs,
     &xport_fcfi->pend_frames,
     &xport_fcfi->pend_frames_lock);
}
