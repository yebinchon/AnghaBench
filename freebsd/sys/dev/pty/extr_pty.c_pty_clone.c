
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
struct make_dev_args {int mda_flags; int mda_mode; int mda_gid; int mda_uid; int * mda_devsw; } ;
struct cdev {int dummy; } ;


 int GID_WHEEL ;
 int MAKEDEV_CHECKNAME ;
 int MAKEDEV_REF ;
 int UID_ROOT ;
 scalar_t__ bcmp (char*,char*,int) ;
 int make_dev_args_init (struct make_dev_args*) ;
 int make_dev_s (struct make_dev_args*,struct cdev**,char*,char*) ;
 int ptydev_cdevsw ;

__attribute__((used)) static void
pty_clone(void *arg, struct ucred *cr, char *name, int namelen,
    struct cdev **dev)
{
 struct make_dev_args mda;
 int error;


 if (*dev != ((void*)0))
  return;


 if (namelen != 5 || bcmp(name, "pty", 3) != 0)
  return;


 if (!(name[3] >= 'l' && name[3] <= 's') &&
     !(name[3] >= 'L' && name[3] <= 'S'))
  return;


 if (!(name[4] >= '0' && name[4] <= '9') &&
     !(name[4] >= 'a' && name[4] <= 'v'))
  return;


 make_dev_args_init(&mda);
 mda.mda_flags = MAKEDEV_CHECKNAME | MAKEDEV_REF;
 mda.mda_devsw = &ptydev_cdevsw;
 mda.mda_uid = UID_ROOT;
 mda.mda_gid = GID_WHEEL;
 mda.mda_mode = 0666;
 error = make_dev_s(&mda, dev, "%s", name);
 if (error != 0)
  *dev = ((void*)0);
}
