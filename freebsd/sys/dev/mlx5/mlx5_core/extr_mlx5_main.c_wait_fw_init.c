
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct mlx5_core_dev {TYPE_1__* iseg; } ;
struct TYPE_2__ {int initializing; } ;


 int EBUSY ;
 int FW_INIT_WAIT_MS ;
 int MPASS (int) ;
 int fw_initializing (struct mlx5_core_dev*) ;
 int ioread32be (int *) ;
 int jiffies ;
 int jiffies_to_msecs (int) ;
 int mlx5_core_dbg (struct mlx5_core_dev*,char*,int ) ;
 int mlx5_core_warn (struct mlx5_core_dev*,char*,unsigned int) ;
 int msecs_to_jiffies (scalar_t__) ;
 int msleep (int ) ;
 scalar_t__ time_after (int,int) ;

__attribute__((used)) static int wait_fw_init(struct mlx5_core_dev *dev, u32 max_wait_mili,
   u32 warn_time_mili)
{
 int warn = jiffies + msecs_to_jiffies(warn_time_mili);
 int end = jiffies + msecs_to_jiffies(max_wait_mili);
 int err = 0;

 MPASS(max_wait_mili > warn_time_mili);

 while (fw_initializing(dev) == 1) {
  if (time_after(jiffies, end)) {
   err = -EBUSY;
   break;
  }
  if (warn_time_mili && time_after(jiffies, warn)) {
   mlx5_core_warn(dev,
       "Waiting for FW initialization, timeout abort in %u s\n",
       (unsigned int)(jiffies_to_msecs(end - warn) / 1000));
   warn = jiffies + msecs_to_jiffies(warn_time_mili);
  }
  msleep(FW_INIT_WAIT_MS);
 }

 if (err != 0)
  mlx5_core_dbg(dev, "Full initializing bit dword = 0x%x\n",
      ioread32be(&dev->iseg->initializing));

 return err;
}
