
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EVENTHANDLER_REGISTER (int ,int ,int ,int) ;
 int GID_WHEEL ;
 int MAKEDEV_ETERNAL ;
 int UID_ROOT ;
 int ctty ;
 int ctty_cdevsw ;
 int ctty_clone ;
 int dev_clone ;
 int make_dev_credf (int ,int *,int ,int *,int ,int ,int,char*) ;

__attribute__((used)) static void
ctty_drvinit(void *unused)
{

 EVENTHANDLER_REGISTER(dev_clone, ctty_clone, 0, 1000);
 ctty = make_dev_credf(MAKEDEV_ETERNAL, &ctty_cdevsw, 0, ((void*)0), UID_ROOT,
     GID_WHEEL, 0666, "ctty");
}
