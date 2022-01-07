
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct make_dev_args {int mda_flags; int mda_mode; int mda_gid; int mda_uid; int * mda_devsw; } ;


 int GID_WHEEL ;
 int MAKEDEV_CHECKNAME ;
 int MAKEDEV_WAITOK ;
 int UID_ROOT ;
 int make_dev_args_init (struct make_dev_args*) ;
 int make_dev_s (struct make_dev_args*,int *,char*) ;
 int uinput_cdev ;
 int uinput_cdevsw ;

__attribute__((used)) static int
uinput_cdev_create(void)
{
 struct make_dev_args mda;
 int ret;

 make_dev_args_init(&mda);
 mda.mda_flags = MAKEDEV_WAITOK | MAKEDEV_CHECKNAME;
 mda.mda_devsw = &uinput_cdevsw;
 mda.mda_uid = UID_ROOT;
 mda.mda_gid = GID_WHEEL;
 mda.mda_mode = 0600;

 ret = make_dev_s(&mda, &uinput_cdev, "uinput");

 return (ret);
}
