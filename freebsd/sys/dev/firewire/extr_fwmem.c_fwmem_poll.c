
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdev {int dummy; } ;
typedef int fw_proc ;


 int EINVAL ;

int
fwmem_poll(struct cdev *dev, int events, fw_proc *td)
{
 return EINVAL;
}
