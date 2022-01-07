
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {int dummy; } ;
struct ib_uverbs_file {TYPE_1__* device; int ucontext; } ;
struct ib_device {int (* mmap ) (int ,struct vm_area_struct*) ;} ;
struct file {struct ib_uverbs_file* private_data; } ;
struct TYPE_2__ {int disassociate_srcu; int ib_dev; } ;


 int EIO ;
 int ENODEV ;
 struct ib_device* srcu_dereference (int ,int *) ;
 int srcu_read_lock (int *) ;
 int srcu_read_unlock (int *,int) ;
 int stub1 (int ,struct vm_area_struct*) ;

__attribute__((used)) static int ib_uverbs_mmap(struct file *filp, struct vm_area_struct *vma)
{
 struct ib_uverbs_file *file = filp->private_data;
 struct ib_device *ib_dev;
 int ret = 0;
 int srcu_key;

 srcu_key = srcu_read_lock(&file->device->disassociate_srcu);
 ib_dev = srcu_dereference(file->device->ib_dev,
      &file->device->disassociate_srcu);
 if (!ib_dev) {
  ret = -EIO;
  goto out;
 }

 if (!file->ucontext)
  ret = -ENODEV;
 else
  ret = ib_dev->mmap(file->ucontext, vma);
out:
 srcu_read_unlock(&file->device->disassociate_srcu, srcu_key);
 return ret;
}
