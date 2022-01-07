
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int ocs_hw_t ;
struct TYPE_2__ {int seq; int wqcb; int * hw; } ;
typedef TYPE_1__ ocs_hw_send_frame_context_t ;
typedef int int32_t ;


 int ocs_hw_reqtag_free (int *,int ) ;
 int ocs_hw_sequence_free (int *,int ) ;

__attribute__((used)) static void
ocs_sframe_common_send_cb(void *arg, uint8_t *cqe, int32_t status)
{
 ocs_hw_send_frame_context_t *ctx = arg;
 ocs_hw_t *hw = ctx->hw;


 ocs_hw_reqtag_free(hw, ctx->wqcb);


 ocs_hw_sequence_free(hw, ctx->seq);
}
