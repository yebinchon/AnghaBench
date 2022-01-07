
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_15__ {scalar_t__ pend_frames_processed; int pend_frames_lock; int pend_frames; } ;
typedef TYPE_2__ ocs_xport_fcfi_t ;
struct TYPE_16__ {int hw; TYPE_1__* xport; } ;
typedef TYPE_3__ ocs_t ;
struct TYPE_17__ {int * hio; } ;
typedef TYPE_4__ ocs_hw_sequence_t ;
struct TYPE_18__ {size_t fcf_indicator; TYPE_3__* ocs; } ;
typedef TYPE_5__ ocs_domain_t ;
typedef int int32_t ;
struct TYPE_14__ {TYPE_2__* fcfi; } ;


 size_t SLI4_MAX_FCFI ;
 int ocs_assert (int,int) ;
 scalar_t__ ocs_domain_dispatch_frame (TYPE_5__*,TYPE_4__*) ;
 scalar_t__ ocs_domain_frames_held (TYPE_5__*) ;
 int ocs_hw_sequence_free (int *,TYPE_4__*) ;
 TYPE_4__* ocs_list_remove_head (int *) ;
 int ocs_lock (int *) ;
 int ocs_log_debug (TYPE_3__*,char*,scalar_t__) ;
 int ocs_port_owned_abort (TYPE_3__*,int *) ;
 int ocs_unlock (int *) ;

int32_t
ocs_domain_process_pending(ocs_domain_t *domain)
{
 ocs_t *ocs = domain->ocs;
 ocs_xport_fcfi_t *xport_fcfi;
 ocs_hw_sequence_t *seq = ((void*)0);
 uint32_t pend_frames_processed = 0;

 ocs_assert(domain->fcf_indicator < SLI4_MAX_FCFI, -1);
 xport_fcfi = &ocs->xport->fcfi[domain->fcf_indicator];

 for (;;) {




  if (ocs_domain_frames_held(domain)) {
   break;
  }


  ocs_lock(&xport_fcfi->pend_frames_lock);
   seq = ocs_list_remove_head(&xport_fcfi->pend_frames);
   if (seq == ((void*)0)) {
    pend_frames_processed = xport_fcfi->pend_frames_processed;
    xport_fcfi->pend_frames_processed = 0;
    ocs_unlock(&xport_fcfi->pend_frames_lock);
    break;
   }
   xport_fcfi->pend_frames_processed++;
  ocs_unlock(&xport_fcfi->pend_frames_lock);


  if (ocs_domain_dispatch_frame(domain, seq)) {
   if (seq->hio != ((void*)0)) {
    ocs_port_owned_abort(ocs, seq->hio);
   }
   ocs_hw_sequence_free(&ocs->hw, seq);
  }
 }
 if (pend_frames_processed != 0) {
  ocs_log_debug(ocs, "%u domain frames held and processed\n", pend_frames_processed);
 }
 return 0;
}
