
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_paddr_t ;
typedef int vm_ooffset_t ;
typedef int vm_memattr_t ;
struct tty {int dummy; } ;
struct cdev {struct tty* si_drv1; } ;


 int tty_unlock (struct tty*) ;
 int ttydev_enter (struct tty*) ;
 int ttydevsw_mmap (struct tty*,int ,int *,int,int *) ;

__attribute__((used)) static int
ttydev_mmap(struct cdev *dev, vm_ooffset_t offset, vm_paddr_t *paddr,
    int nprot, vm_memattr_t *memattr)
{
 struct tty *tp = dev->si_drv1;
 int error;



 error = ttydev_enter(tp);
 if (error)
  return (-1);
 error = ttydevsw_mmap(tp, offset, paddr, nprot, memattr);
 tty_unlock(tp);

 return (error);
}
