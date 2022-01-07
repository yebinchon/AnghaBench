
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct knote {scalar_t__ kn_filter; int kn_data; struct fuse_data* kn_hook; int * kn_fop; } ;
struct TYPE_2__ {int si_note; } ;
struct fuse_data {TYPE_1__ ks_rsel; } ;
struct cdev {int dummy; } ;


 int EINVAL ;
 scalar_t__ EVFILT_READ ;
 int devfs_get_cdevpriv (void**) ;
 int fuse_device_rfiltops ;
 int knlist_add (int *,struct knote*,int ) ;

__attribute__((used)) static int
fuse_device_filter(struct cdev *dev, struct knote *kn)
{
 struct fuse_data *data;
 int error;

 error = devfs_get_cdevpriv((void **)&data);


 if (error == 0 && kn->kn_filter == EVFILT_READ) {
  kn->kn_fop = &fuse_device_rfiltops;
  kn->kn_hook = data;
  knlist_add(&data->ks_rsel.si_note, kn, 0);
  error = 0;
 } else if (error == 0) {
  error = EINVAL;
  kn->kn_data = error;
 }

 return (error);
}
