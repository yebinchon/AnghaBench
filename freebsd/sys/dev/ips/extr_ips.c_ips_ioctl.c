
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct thread {int dummy; } ;
struct cdev {int * si_drv1; } ;
typedef int ips_softc_t ;
typedef int int32_t ;
typedef int caddr_t ;


 int ips_ioctl_request (int *,int ,int ,int ) ;

__attribute__((used)) static int ips_ioctl(struct cdev *dev, u_long command, caddr_t addr, int32_t flags, struct thread *td)
{
 ips_softc_t *sc;

 sc = dev->si_drv1;
 return ips_ioctl_request(sc, command, addr, flags);
}
