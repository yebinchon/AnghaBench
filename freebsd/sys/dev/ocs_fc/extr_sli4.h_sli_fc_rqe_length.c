
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int sli4_t ;
struct TYPE_2__ {scalar_t__ status; int payload_data_placement_length; int header_data_placement_length; } ;
typedef TYPE_1__ sli4_fc_async_rcqe_t ;
typedef int int32_t ;


 scalar_t__ SLI4_FC_ASYNC_RQ_SUCCESS ;

__attribute__((used)) static inline int32_t
sli_fc_rqe_length(sli4_t *sli4, void *cqe, uint32_t *len_hdr, uint32_t *len_data)
{
 sli4_fc_async_rcqe_t *rcqe = cqe;

 *len_hdr = *len_data = 0;

 if (SLI4_FC_ASYNC_RQ_SUCCESS == rcqe->status) {
  *len_hdr = rcqe->header_data_placement_length;
  *len_data = rcqe->payload_data_placement_length;
  return 0;
 } else {
  return -1;
 }
}
