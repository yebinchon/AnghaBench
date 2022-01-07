
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct poll_table_struct {int dummy; } ;
struct ib_uverbs_event_file {int lock; int event_list; int poll_wait; } ;
struct file {struct ib_uverbs_event_file* private_data; } ;


 unsigned int POLLIN ;
 unsigned int POLLRDNORM ;
 int list_empty (int *) ;
 int poll_wait (struct file*,int *,struct poll_table_struct*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static unsigned int ib_uverbs_event_poll(struct file *filp,
      struct poll_table_struct *wait)
{
 unsigned int pollflags = 0;
 struct ib_uverbs_event_file *file = filp->private_data;

 poll_wait(filp, &file->poll_wait, wait);

 spin_lock_irq(&file->lock);
 if (!list_empty(&file->event_list))
  pollflags = POLLIN | POLLRDNORM;
 spin_unlock_irq(&file->lock);

 return pollflags;
}
