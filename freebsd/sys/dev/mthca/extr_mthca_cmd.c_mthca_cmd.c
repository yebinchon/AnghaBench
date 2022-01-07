
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
typedef int u16 ;
struct mthca_dev {int dummy; } ;


 int mthca_cmd_box (struct mthca_dev*,int ,int ,int ,int ,int ,unsigned long) ;

__attribute__((used)) static int mthca_cmd(struct mthca_dev *dev,
       u64 in_param,
       u32 in_modifier,
       u8 op_modifier,
       u16 op,
       unsigned long timeout)
{
 return mthca_cmd_box(dev, in_param, 0, in_modifier,
        op_modifier, op, timeout);
}
