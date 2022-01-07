
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct make_dev_args {int mda_flags; int mda_mode; struct evdev_dev* mda_si_drv1; int mda_gid; int mda_uid; int * mda_devsw; } ;
struct evdev_dev {int ev_unit; int ev_cdev; } ;


 int EEXIST ;
 int GID_WHEEL ;
 int MAKEDEV_CHECKNAME ;
 int MAKEDEV_WAITOK ;
 int UID_ROOT ;
 int evdev_cdevsw ;
 int make_dev_args_init (struct make_dev_args*) ;
 int make_dev_s (struct make_dev_args*,int *,char*,int) ;

int
evdev_cdev_create(struct evdev_dev *evdev)
{
 struct make_dev_args mda;
 int ret, unit = 0;

 make_dev_args_init(&mda);
 mda.mda_flags = MAKEDEV_WAITOK | MAKEDEV_CHECKNAME;
 mda.mda_devsw = &evdev_cdevsw;
 mda.mda_uid = UID_ROOT;
 mda.mda_gid = GID_WHEEL;
 mda.mda_mode = 0600;
 mda.mda_si_drv1 = evdev;


 while ((ret = make_dev_s(&mda, &evdev->ev_cdev, "input/event%d", unit))
     == EEXIST)
  unit++;

 if (ret == 0)
  evdev->ev_unit = unit;

 return (ret);
}
