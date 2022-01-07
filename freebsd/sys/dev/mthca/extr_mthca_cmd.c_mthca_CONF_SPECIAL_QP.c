
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct mthca_dev {int dummy; } ;


 int CMD_CONF_SPECIAL_QP ;
 int CMD_TIME_CLASS_B ;
 int EINVAL ;




 int mthca_cmd (struct mthca_dev*,int ,int ,int,int ,int ) ;

int mthca_CONF_SPECIAL_QP(struct mthca_dev *dev, int type, u32 qpn)
{
 u8 op_mod;

 switch (type) {
 case 128:
  op_mod = 0;
  break;
 case 131:
  op_mod = 1;
  break;
 case 129:
  op_mod = 2;
  break;
 case 130:
  op_mod = 3;
  break;
 default:
  return -EINVAL;
 }

 return mthca_cmd(dev, 0, qpn, op_mod, CMD_CONF_SPECIAL_QP,
    CMD_TIME_CLASS_B);
}
