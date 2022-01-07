
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct mlx4_next_alias_guid_work {int dummy; } ;
struct TYPE_4__ {int ag_work_lock; } ;
struct TYPE_3__ {TYPE_2__ alias_guid; } ;
struct mlx4_ib_dev {TYPE_1__ sriov; } ;


 int ENOENT ;
 int get_low_record_time_index (struct mlx4_ib_dev*,int ,int *) ;
 int set_required_record (struct mlx4_ib_dev*,int ,struct mlx4_next_alias_guid_work*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int get_next_record_to_update(struct mlx4_ib_dev *dev, u8 port,
         struct mlx4_next_alias_guid_work *rec)
{
 unsigned long flags;
 int record_index;
 int ret = 0;

 spin_lock_irqsave(&dev->sriov.alias_guid.ag_work_lock, flags);
 record_index = get_low_record_time_index(dev, port, ((void*)0));

 if (record_index < 0) {
  ret = -ENOENT;
  goto out;
 }

 set_required_record(dev, port, rec, record_index);
out:
 spin_unlock_irqrestore(&dev->sriov.alias_guid.ag_work_lock, flags);
 return ret;
}
