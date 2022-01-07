
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct poll_table_struct {int dummy; } ;
struct ib_ucm_file {int events; int poll_wait; } ;
struct file {struct ib_ucm_file* private_data; } ;


 unsigned int POLLIN ;
 unsigned int POLLRDNORM ;
 int list_empty (int *) ;
 int poll_wait (struct file*,int *,struct poll_table_struct*) ;

__attribute__((used)) static unsigned int ib_ucm_poll(struct file *filp,
    struct poll_table_struct *wait)
{
 struct ib_ucm_file *file = filp->private_data;
 unsigned int mask = 0;

 poll_wait(filp, &file->poll_wait, wait);

 if (!list_empty(&file->events))
  mask = POLLIN | POLLRDNORM;

 return mask;
}
