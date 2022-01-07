
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {TYPE_1__* td_proc; } ;
struct tdfx_softc {scalar_t__ busy; } ;
struct cdev {struct tdfx_softc* si_drv1; } ;
struct TYPE_2__ {int p_pid; } ;


 int EBADF ;
 int printf (char*,int) ;

__attribute__((used)) static int
tdfx_close(struct cdev *dev, int fflag, int devtype, struct thread *td)
{




 struct tdfx_softc *tdfx_info = dev->si_drv1;
 if(tdfx_info->busy == 0) return EBADF;
 tdfx_info->busy = 0;



 return 0;
}
