
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {int hw; } ;
typedef TYPE_3__ ocs_t ;
typedef int ocs_lock_t ;
typedef int ocs_list_t ;
struct TYPE_13__ {int * hio; TYPE_2__* header; } ;
typedef TYPE_4__ ocs_hw_sequence_t ;
typedef int int32_t ;
typedef int fc_header_t ;
struct TYPE_10__ {scalar_t__ virt; } ;
struct TYPE_11__ {TYPE_1__ dma; } ;


 int frame_printf (TYPE_3__*,int *,char*) ;
 TYPE_4__* ocs_frame_next (int *,int *) ;
 int ocs_hw_sequence_free (int *,TYPE_4__*) ;
 int ocs_port_owned_abort (TYPE_3__*,int *) ;

__attribute__((used)) static int32_t
ocs_purge_pending(ocs_t *ocs, ocs_list_t *pend_list, ocs_lock_t *list_lock)
{
 ocs_hw_sequence_t *frame;

 for (;;) {
  frame = ocs_frame_next(pend_list, list_lock);
  if (frame == ((void*)0)) {
   break;
  }

  frame_printf(ocs, (fc_header_t*) frame->header->dma.virt, "Discarding held frame\n");
  if (frame->hio != ((void*)0)) {
   ocs_port_owned_abort(ocs, frame->hio);
  }
  ocs_hw_sequence_free(&ocs->hw, frame);
 }

 return 0;
}
