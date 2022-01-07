
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GID_WHEEL ;
 int MAKEDEV_ETERNAL ;
 int UID_ROOT ;
 int devctl2_cdevsw ;
 int make_dev_credf (int ,int *,int ,int *,int ,int ,int,char*) ;

__attribute__((used)) static void
devctl2_init(void)
{

 make_dev_credf(MAKEDEV_ETERNAL, &devctl2_cdevsw, 0, ((void*)0),
     UID_ROOT, GID_WHEEL, 0600, "devctl2");
}
