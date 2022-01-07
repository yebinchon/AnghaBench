
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _IOCTL_ARG {scalar_t__ ioctl_cmnd; } ;


 int wakeup (struct _IOCTL_ARG*) ;

__attribute__((used)) static void hpt_ioctl_done(struct _IOCTL_ARG *arg)
{
 arg->ioctl_cmnd = 0;
 wakeup(arg);
}
