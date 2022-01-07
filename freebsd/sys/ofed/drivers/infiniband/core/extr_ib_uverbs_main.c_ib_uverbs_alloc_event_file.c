
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ib_uverbs_file {int ref; struct ib_uverbs_event_file* async_file; int event_handler; TYPE_1__* device; } ;
struct ib_uverbs_event_file {int is_async; int ref; struct ib_uverbs_file* uverbs_file; int list; scalar_t__ is_closed; int * async_queue; int poll_wait; int event_list; int lock; } ;
struct ib_device {int dummy; } ;
struct file {struct ib_uverbs_event_file* private_data; } ;
struct TYPE_2__ {int lists_mutex; int uverbs_events_file_list; } ;


 int ENOMEM ;
 struct file* ERR_PTR (int) ;
 int FMODE_READ ;
 int GFP_KERNEL ;
 int INIT_IB_EVENT_HANDLER (int *,struct ib_device*,int ) ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IS_ERR (struct file*) ;
 int WARN_ON (struct ib_uverbs_event_file*) ;
 struct file* alloc_file (int ,int ) ;
 int fops_get (int *) ;
 int fput (struct file*) ;
 int ib_register_event_handler (int *) ;
 int ib_uverbs_event_handler ;
 int ib_uverbs_release_event_file ;
 int ib_uverbs_release_file ;
 int init_waitqueue_head (int *) ;
 int kref_get (int *) ;
 int kref_init (int *) ;
 int kref_put (int *,int ) ;
 struct ib_uverbs_event_file* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_init (int *) ;
 int uverbs_event_fops ;

struct file *ib_uverbs_alloc_event_file(struct ib_uverbs_file *uverbs_file,
     struct ib_device *ib_dev,
     int is_async)
{
 struct ib_uverbs_event_file *ev_file;
 struct file *filp;
 int ret;

 ev_file = kzalloc(sizeof(*ev_file), GFP_KERNEL);
 if (!ev_file)
  return ERR_PTR(-ENOMEM);

 kref_init(&ev_file->ref);
 spin_lock_init(&ev_file->lock);
 INIT_LIST_HEAD(&ev_file->event_list);
 init_waitqueue_head(&ev_file->poll_wait);
 ev_file->uverbs_file = uverbs_file;
 kref_get(&ev_file->uverbs_file->ref);
 ev_file->async_queue = ((void*)0);
 ev_file->is_closed = 0;






 filp = alloc_file(FMODE_READ, fops_get(&uverbs_event_fops));
 if (IS_ERR(filp))
  goto err_put_refs;
 filp->private_data = ev_file;

 mutex_lock(&uverbs_file->device->lists_mutex);
 list_add_tail(&ev_file->list,
        &uverbs_file->device->uverbs_events_file_list);
 mutex_unlock(&uverbs_file->device->lists_mutex);

 if (is_async) {
  WARN_ON(uverbs_file->async_file);
  uverbs_file->async_file = ev_file;
  kref_get(&uverbs_file->async_file->ref);
  INIT_IB_EVENT_HANDLER(&uverbs_file->event_handler,
          ib_dev,
          ib_uverbs_event_handler);
  ret = ib_register_event_handler(&uverbs_file->event_handler);
  if (ret)
   goto err_put_file;


  ev_file->is_async = 1;
 }

 return filp;

err_put_file:
 fput(filp);
 kref_put(&uverbs_file->async_file->ref, ib_uverbs_release_event_file);
 uverbs_file->async_file = ((void*)0);
 return ERR_PTR(ret);

err_put_refs:
 kref_put(&ev_file->uverbs_file->ref, ib_uverbs_release_file);
 kref_put(&ev_file->ref, ib_uverbs_release_event_file);
 return filp;
}
