
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef size_t u16 ;
struct TYPE_2__ {size_t token_mask; struct mthca_cmd_context* context; } ;
struct mthca_dev {TYPE_1__ cmd; } ;
struct mthca_cmd_context {size_t token; int done; int out_param; int status; scalar_t__ result; } ;


 int complete (int *) ;

void mthca_cmd_event(struct mthca_dev *dev,
       u16 token,
       u8 status,
       u64 out_param)
{
 struct mthca_cmd_context *context =
  &dev->cmd.context[token & dev->cmd.token_mask];


 if (token != context->token)
  return;

 context->result = 0;
 context->status = status;
 context->out_param = out_param;

 complete(&context->done);
}
