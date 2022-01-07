
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct poll_table_struct {int dummy; } ;
struct ib_umad_file {int recv_list; int recv_wait; } ;
struct file {struct ib_umad_file* private_data; } ;


 unsigned int POLLIN ;
 unsigned int POLLOUT ;
 unsigned int POLLRDNORM ;
 unsigned int POLLWRNORM ;
 int list_empty (int *) ;
 int poll_wait (struct file*,int *,struct poll_table_struct*) ;

__attribute__((used)) static unsigned int ib_umad_poll(struct file *filp, struct poll_table_struct *wait)
{
 struct ib_umad_file *file = filp->private_data;


 unsigned int mask = POLLOUT | POLLWRNORM;

 poll_wait(filp, &file->recv_wait, wait);

 if (!list_empty(&file->recv_list))
  mask |= POLLIN | POLLRDNORM;

 return mask;
}
