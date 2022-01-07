
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct thread {int dummy; } ;
struct cdev {int si_drv1; } ;
struct TYPE_3__ {int operation; } ;
typedef TYPE_1__ mouse_info_t ;
typedef int info ;
typedef int caddr_t ;


 int CONS_MOUSECTL ;
 int MOUSE_ACTION ;
 int memset (TYPE_1__*,int ,int) ;
 int sctty_ioctl (int ,int ,int ,struct thread*) ;

__attribute__((used)) static int
consolectl_close(struct cdev *dev, int flags, int mode, struct thread *td)
{

 mouse_info_t info;
 memset(&info, 0, sizeof(info));
 info.operation = MOUSE_ACTION;





 (void) sctty_ioctl(dev->si_drv1, CONS_MOUSECTL, (caddr_t)&info, td);

 return (0);
}
