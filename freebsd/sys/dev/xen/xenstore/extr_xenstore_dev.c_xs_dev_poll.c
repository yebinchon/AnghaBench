
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xs_dev_data {scalar_t__ read_cons; scalar_t__ read_prod; int ev_rsel; } ;
struct thread {int dummy; } ;
struct cdev {int dummy; } ;


 int POLLERR ;
 int POLLIN ;
 int POLLOUT ;
 int POLLRDNORM ;
 int POLLWRNORM ;
 int devfs_get_cdevpriv (void**) ;
 int selrecord (struct thread*,int *) ;

__attribute__((used)) static int
xs_dev_poll(struct cdev *dev, int events, struct thread *td)
{
 struct xs_dev_data *u;
 int error, mask;

 error = devfs_get_cdevpriv((void **)&u);
 if (error != 0)
  return (POLLERR);


 mask = events & (POLLOUT | POLLWRNORM);

 if (events & (POLLIN | POLLRDNORM)) {
  if (u->read_cons != u->read_prod) {
   mask |= events & (POLLIN | POLLRDNORM);
  } else {

   selrecord(td, &u->ev_rsel);
  }
 }

 return (mask);
}
