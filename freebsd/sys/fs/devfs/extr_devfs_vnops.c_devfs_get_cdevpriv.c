
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file {struct cdev_privdata* f_cdevpriv; } ;
struct cdev_privdata {void* cdpd_data; } ;
struct TYPE_2__ {struct file* td_fpop; } ;


 int EBADF ;
 int ENOENT ;
 TYPE_1__* curthread ;

int
devfs_get_cdevpriv(void **datap)
{
 struct file *fp;
 struct cdev_privdata *p;
 int error;

 fp = curthread->td_fpop;
 if (fp == ((void*)0))
  return (EBADF);
 p = fp->f_cdevpriv;
 if (p != ((void*)0)) {
  error = 0;
  *datap = p->cdpd_data;
 } else
  error = ENOENT;
 return (error);
}
