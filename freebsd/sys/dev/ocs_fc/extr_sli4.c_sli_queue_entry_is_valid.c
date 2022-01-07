
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {int r_idx; } ;
struct TYPE_6__ {int type; int dma; TYPE_1__ u; int index; } ;
typedef TYPE_2__ sli4_queue_t ;
struct TYPE_7__ {int vld; } ;
typedef TYPE_3__ sli4_eqe_t ;


 int FALSE ;
 int OCS_DMASYNC_PREWRITE ;




 int TRUE ;
 int ocs_dma_sync (int *,int ) ;
 int ocs_log_test (int *,char*,int) ;

__attribute__((used)) static uint8_t
sli_queue_entry_is_valid(sli4_queue_t *q, uint8_t *qe, uint8_t clear)
{
 uint8_t valid = FALSE;

 switch (q->type) {
 case 130:
  valid = ((sli4_eqe_t *)qe)->vld;
  if (valid && clear) {
   ((sli4_eqe_t *)qe)->vld = 0;
  }
  break;
 case 131:




  valid = (qe[15] & 0x80) != 0;
  if (valid & clear) {
   qe[15] &= ~0x80;
  }
  break;
 case 129:
  valid = q->index != q->u.r_idx;
  break;
 case 128:
  valid = TRUE;
  clear = FALSE;
  break;
 default:
  ocs_log_test(((void*)0), "doesn't handle type=%#x\n", q->type);
 }

 if (clear) {
  ocs_dma_sync(&q->dma, OCS_DMASYNC_PREWRITE);
 }

 return valid;
}
