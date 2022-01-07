
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct per_user_data {scalar_t__ ring_cons; scalar_t__ ring_prod; int ring_prod_mutex; int ev_rsel; } ;
struct cdev {int dummy; } ;


 int POLLERR ;
 int POLLIN ;
 int POLLOUT ;
 int POLLRDNORM ;
 int POLLWRNORM ;
 int devfs_get_cdevpriv (void**) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int selrecord (struct thread*,int *) ;

__attribute__((used)) static int
evtchn_poll(struct cdev *dev, int events, struct thread *td)
{
 struct per_user_data *u;
 int error, mask;

 error = devfs_get_cdevpriv((void **)&u);
 if (error != 0)
  return (POLLERR);


 mask = events & (POLLOUT | POLLWRNORM);

 mtx_lock(&u->ring_prod_mutex);
 if (events & (POLLIN | POLLRDNORM)) {
  if (u->ring_cons != u->ring_prod) {
   mask |= events & (POLLIN | POLLRDNORM);
  } else {

   selrecord(td, &u->ev_rsel);
  }
 }
 mtx_unlock(&u->ring_prod_mutex);

 return (mask);
}
