
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_6__ {int hold_frames; } ;
typedef TYPE_2__ ocs_xport_fcfi_t ;
struct TYPE_7__ {TYPE_1__* xport; } ;
typedef TYPE_3__ ocs_t ;
struct TYPE_8__ {size_t fcf_indicator; TYPE_3__* ocs; } ;
typedef TYPE_4__ ocs_domain_t ;
struct TYPE_5__ {TYPE_2__* fcfi; } ;


 size_t SLI4_MAX_FCFI ;
 int ocs_assert (int,int) ;

__attribute__((used)) static uint8_t
ocs_domain_frames_held(void *arg)
{
 ocs_domain_t *domain = (ocs_domain_t *)arg;
 ocs_t *ocs = domain->ocs;
 ocs_xport_fcfi_t *xport_fcfi;

 ocs_assert(domain != ((void*)0), 1);
 ocs_assert(domain->fcf_indicator < SLI4_MAX_FCFI, 1);
 xport_fcfi = &ocs->xport->fcfi[domain->fcf_indicator];
 return xport_fcfi->hold_frames;
}
