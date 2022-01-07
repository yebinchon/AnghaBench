
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 int GID_OPERATOR ;
 int S_IRGRP ;
 int S_IROTH ;
 int S_IRUSR ;
 int S_IWGRP ;
 int S_IWOTH ;
 int S_IWUSR ;
 int UID_ROOT ;
 int * fuse_dev ;
 int fuse_device_cdevsw ;
 int * make_dev (int *,int ,int ,int ,int,char*) ;

int
fuse_device_init(void)
{

 fuse_dev = make_dev(&fuse_device_cdevsw, 0, UID_ROOT, GID_OPERATOR,
     S_IRUSR | S_IWUSR | S_IRGRP | S_IWGRP | S_IROTH | S_IWOTH, "fuse");
 if (fuse_dev == ((void*)0))
  return (ENOMEM);
 return (0);
}
