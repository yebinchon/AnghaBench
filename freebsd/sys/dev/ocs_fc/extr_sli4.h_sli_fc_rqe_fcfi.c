
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int sli4_t ;
struct TYPE_4__ {int fcfi; } ;
typedef TYPE_1__ sli4_fc_optimized_write_cmd_cqe_t ;
struct TYPE_5__ {int fcfi; } ;
typedef TYPE_2__ sli4_fc_async_rcqe_v1_t ;
struct TYPE_6__ {int fcfi; } ;
typedef TYPE_3__ sli4_fc_async_rcqe_t ;


 size_t SLI4_CQE_CODE_OFFSET ;



 int UINT8_MAX ;

__attribute__((used)) static inline uint8_t
sli_fc_rqe_fcfi(sli4_t *sli4, void *cqe)
{
 uint8_t code = ((uint8_t*)cqe)[SLI4_CQE_CODE_OFFSET];
 uint8_t fcfi = UINT8_MAX;

 switch(code) {
 case 129: {
  sli4_fc_async_rcqe_t *rcqe = cqe;
  fcfi = rcqe->fcfi;
  break;
 }
 case 128: {
  sli4_fc_async_rcqe_v1_t *rcqev1 = cqe;
  fcfi = rcqev1->fcfi;
  break;
 }
 case 130: {
  sli4_fc_optimized_write_cmd_cqe_t *opt_wr = cqe;
  fcfi = opt_wr->fcfi;
  break;
 }
 }

 return fcfi;
}
