
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cdev {int dummy; } ;
typedef int dev_t ;
struct TYPE_2__ {int cdp_inode; } ;


 int NODEV ;
 TYPE_1__* cdev2priv (struct cdev*) ;

dev_t
dev2udev(struct cdev *x)
{
 if (x == ((void*)0))
  return (NODEV);
 return (cdev2priv(x)->cdp_inode);
}
