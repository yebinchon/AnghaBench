
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_uverbs_event_file {int async_queue; } ;
struct file {struct ib_uverbs_event_file* private_data; } ;


 int fasync_helper (int,struct file*,int,int *) ;

__attribute__((used)) static int ib_uverbs_event_fasync(int fd, struct file *filp, int on)
{
 struct ib_uverbs_event_file *file = filp->private_data;

 return fasync_helper(fd, filp, on, &file->async_queue);
}
