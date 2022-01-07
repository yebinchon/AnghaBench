
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdev {int dummy; } ;


 int GID_WHEEL ;
 int MAKEDEV_ETERNAL ;
 int UID_ROOT ;
 int fildesc_cdevsw ;
 int make_dev_alias (struct cdev*,char*) ;
 struct cdev* make_dev_credf (int ,int *,int,int *,int ,int ,int,char*) ;

__attribute__((used)) static void
fildesc_drvinit(void *unused)
{
 struct cdev *dev;

 dev = make_dev_credf(MAKEDEV_ETERNAL, &fildesc_cdevsw, 0, ((void*)0),
     UID_ROOT, GID_WHEEL, 0666, "fd/0");
 make_dev_alias(dev, "stdin");
 dev = make_dev_credf(MAKEDEV_ETERNAL, &fildesc_cdevsw, 1, ((void*)0),
     UID_ROOT, GID_WHEEL, 0666, "fd/1");
 make_dev_alias(dev, "stdout");
 dev = make_dev_credf(MAKEDEV_ETERNAL, &fildesc_cdevsw, 2, ((void*)0),
     UID_ROOT, GID_WHEEL, 0666, "fd/2");
 make_dev_alias(dev, "stderr");
}
