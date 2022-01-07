
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
typedef int u16 ;
struct TYPE_2__ {int flags; } ;
struct mthca_dev {TYPE_1__ cmd; } ;


 int MTHCA_CMD_USE_EVENTS ;
 int mthca_cmd_poll (struct mthca_dev*,int ,int *,int,int ,int ,int ,unsigned long) ;
 int mthca_cmd_wait (struct mthca_dev*,int ,int *,int,int ,int ,int ,unsigned long) ;

__attribute__((used)) static int mthca_cmd_imm(struct mthca_dev *dev,
    u64 in_param,
    u64 *out_param,
    u32 in_modifier,
    u8 op_modifier,
    u16 op,
    unsigned long timeout)
{
 if (dev->cmd.flags & MTHCA_CMD_USE_EVENTS)
  return mthca_cmd_wait(dev, in_param, out_param, 1,
          in_modifier, op_modifier, op,
          timeout);
 else
  return mthca_cmd_poll(dev, in_param, out_param, 1,
          in_modifier, op_modifier, op,
          timeout);
}
