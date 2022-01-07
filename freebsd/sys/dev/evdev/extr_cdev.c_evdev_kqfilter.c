
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct knote {int kn_filter; scalar_t__ kn_hook; int * kn_fop; } ;
struct TYPE_2__ {int si_note; } ;
struct evdev_client {TYPE_1__ ec_selp; scalar_t__ ec_revoked; } ;
struct cdev {int dummy; } ;
typedef scalar_t__ caddr_t ;


 int EINVAL ;
 int ENODEV ;

 int devfs_get_cdevpriv (void**) ;
 int evdev_cdev_filterops ;
 int knlist_add (int *,struct knote*,int ) ;

__attribute__((used)) static int
evdev_kqfilter(struct cdev *dev, struct knote *kn)
{
 struct evdev_client *client;
 int ret;

 ret = devfs_get_cdevpriv((void **)&client);
 if (ret != 0)
  return (ret);

 if (client->ec_revoked)
  return (ENODEV);

 switch(kn->kn_filter) {
 case 128:
  kn->kn_fop = &evdev_cdev_filterops;
  break;
 default:
  return(EINVAL);
 }
 kn->kn_hook = (caddr_t)client;

 knlist_add(&client->ec_selp.si_note, kn, 0);
 return (0);
}
