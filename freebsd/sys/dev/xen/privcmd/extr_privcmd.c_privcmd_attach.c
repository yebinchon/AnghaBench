
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int GID_WHEEL ;
 int MAKEDEV_ETERNAL ;
 int UID_ROOT ;
 int make_dev_credf (int ,int *,int ,int *,int ,int ,int,char*) ;
 int privcmd_devsw ;

__attribute__((used)) static int
privcmd_attach(device_t dev)
{

 make_dev_credf(MAKEDEV_ETERNAL, &privcmd_devsw, 0, ((void*)0), UID_ROOT,
     GID_WHEEL, 0600, "xen/privcmd");
 return (0);
}
