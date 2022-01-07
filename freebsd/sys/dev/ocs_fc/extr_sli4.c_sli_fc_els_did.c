
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int sli4_t ;
struct TYPE_2__ {int wqe_specific_2; scalar_t__ status; } ;
typedef TYPE_1__ sli4_fc_wcqe_t ;
typedef int int32_t ;



int32_t
sli_fc_els_did(sli4_t *sli4, uint8_t *cqe, uint32_t *d_id)
{
 sli4_fc_wcqe_t *wcqe = (void *)cqe;

 *d_id = 0;

 if (wcqe->status) {
  return -1;
 } else {
  *d_id = wcqe->wqe_specific_2 & 0x00ffffff;
  return 0;
 }
}
