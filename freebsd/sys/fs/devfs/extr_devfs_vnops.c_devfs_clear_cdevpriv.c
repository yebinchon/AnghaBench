
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file {int dummy; } ;
struct TYPE_2__ {struct file* td_fpop; } ;


 TYPE_1__* curthread ;
 int devfs_fpdrop (struct file*) ;

void
devfs_clear_cdevpriv(void)
{
 struct file *fp;

 fp = curthread->td_fpop;
 if (fp == ((void*)0))
  return;
 devfs_fpdrop(fp);
}
