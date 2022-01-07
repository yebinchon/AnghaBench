
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef int u32 ;
struct mthca_dev {int dummy; } ;


 int CMD_TIME_CLASS_B ;
 int CMD_UNMAP_ICM ;
 int mthca_cmd (struct mthca_dev*,scalar_t__,int ,int ,int ,int ) ;
 int mthca_dbg (struct mthca_dev*,char*,int ,unsigned long long) ;

int mthca_UNMAP_ICM(struct mthca_dev *dev, u64 virt, u32 page_count)
{
 mthca_dbg(dev, "Unmapping %d pages at %llx from ICM.\n",
    page_count, (unsigned long long) virt);

 return mthca_cmd(dev, virt, page_count, 0,
   CMD_UNMAP_ICM, CMD_TIME_CLASS_B);
}
