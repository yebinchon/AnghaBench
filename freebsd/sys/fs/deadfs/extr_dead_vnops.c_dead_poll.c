
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_poll_args {int a_events; } ;


 int POLLHUP ;
 int POLLIN ;
 int POLLNVAL ;
 int POLLRDNORM ;
 int POLLSTANDARD ;

int
dead_poll(struct vop_poll_args *ap)
{

 if (ap->a_events & ~POLLSTANDARD)
  return (POLLNVAL);




 return (POLLHUP | ((POLLIN | POLLRDNORM) & ap->a_events));

}
