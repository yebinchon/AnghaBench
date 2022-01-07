
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct ib_uverbs_file {int is_closed; int ref; TYPE_1__* async_file; struct ib_uverbs_device* device; int list; int cleanup_mutex; int * ucontext; } ;
struct ib_uverbs_device {int kobj; int lists_mutex; } ;
struct file {struct ib_uverbs_file* private_data; } ;
struct TYPE_2__ {int ref; } ;


 int ib_uverbs_cleanup_ucontext (struct ib_uverbs_file*,int *) ;
 int ib_uverbs_release_event_file ;
 int ib_uverbs_release_file ;
 int kobject_put (int *) ;
 int kref_put (int *,int ) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int ib_uverbs_close(struct inode *inode, struct file *filp)
{
 struct ib_uverbs_file *file = filp->private_data;
 struct ib_uverbs_device *dev = file->device;

 mutex_lock(&file->cleanup_mutex);
 if (file->ucontext) {
  ib_uverbs_cleanup_ucontext(file, file->ucontext);
  file->ucontext = ((void*)0);
 }
 mutex_unlock(&file->cleanup_mutex);

 mutex_lock(&file->device->lists_mutex);
 if (!file->is_closed) {
  list_del(&file->list);
  file->is_closed = 1;
 }
 mutex_unlock(&file->device->lists_mutex);

 if (file->async_file)
  kref_put(&file->async_file->ref, ib_uverbs_release_event_file);

 kref_put(&file->ref, ib_uverbs_release_file);
 kobject_put(&dev->kobj);

 return 0;
}
