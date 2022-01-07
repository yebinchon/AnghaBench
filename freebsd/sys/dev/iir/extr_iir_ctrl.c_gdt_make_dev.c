
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdt_softc {int dummy; } ;
struct cdev {struct gdt_softc* si_drv1; } ;


 int GID_OPERATOR ;
 int S_IRUSR ;
 int S_IWUSR ;
 int UID_ROOT ;
 int iir_cdevsw ;
 struct cdev* make_dev (int *,int ,int ,int ,int,char*,...) ;
 int sdev_lock ;
 int sdev_made ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;
 int unit ;

struct cdev *
gdt_make_dev(struct gdt_softc *gdt)
{
    struct cdev *dev;






    sx_xlock(&sdev_lock);
    if (sdev_made)
        return (((void*)0));
    dev = make_dev(&iir_cdevsw, 0, UID_ROOT, GID_OPERATOR,
                   S_IRUSR | S_IWUSR, "iir");
    sdev_made = 1;
    sx_xunlock(&sdev_lock);

    return (dev);
}
