
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int si_note; } ;
struct uinput_cdev_state {TYPE_1__ ucs_selp; } ;
struct knote {int kn_filter; scalar_t__ kn_hook; int * kn_fop; } ;
struct cdev {int dummy; } ;
typedef scalar_t__ caddr_t ;


 int EINVAL ;

 int devfs_get_cdevpriv (void**) ;
 int knlist_add (int *,struct knote*,int ) ;
 int uinput_filterops ;

__attribute__((used)) static int
uinput_kqfilter(struct cdev *dev, struct knote *kn)
{
 struct uinput_cdev_state *state;
 int ret;

 ret = devfs_get_cdevpriv((void **)&state);
 if (ret != 0)
  return (ret);

 switch(kn->kn_filter) {
 case 128:
  kn->kn_fop = &uinput_filterops;
  break;
 default:
  return(EINVAL);
 }
 kn->kn_hook = (caddr_t)state;

 knlist_add(&state->ucs_selp.si_note, kn, 0);
 return (0);
}
