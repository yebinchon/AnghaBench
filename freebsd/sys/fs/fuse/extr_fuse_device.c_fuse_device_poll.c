
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct fuse_data {int ms_mtx; int ks_rsel; int ms_head; } ;
struct cdev {int dummy; } ;


 int POLLHUP ;
 int POLLIN ;
 int POLLOUT ;
 int POLLRDNORM ;
 int POLLWRNORM ;
 scalar_t__ STAILQ_FIRST (int *) ;
 int devfs_get_cdevpriv (void**) ;
 scalar_t__ fdata_get_dead (struct fuse_data*) ;
 int fuse_lck_mtx_lock (int ) ;
 int fuse_lck_mtx_unlock (int ) ;
 int selrecord (struct thread*,int *) ;

int
fuse_device_poll(struct cdev *dev, int events, struct thread *td)
{
 struct fuse_data *data;
 int error, revents = 0;

 error = devfs_get_cdevpriv((void **)&data);
 if (error != 0)
  return (events &
      (POLLHUP|POLLIN|POLLRDNORM|POLLOUT|POLLWRNORM));

 if (events & (POLLIN | POLLRDNORM)) {
  fuse_lck_mtx_lock(data->ms_mtx);
  if (fdata_get_dead(data) || STAILQ_FIRST(&data->ms_head))
   revents |= events & (POLLIN | POLLRDNORM);
  else
   selrecord(td, &data->ks_rsel);
  fuse_lck_mtx_unlock(data->ms_mtx);
 }
 if (events & (POLLOUT | POLLWRNORM)) {
  revents |= events & (POLLOUT | POLLWRNORM);
 }
 return (revents);
}
