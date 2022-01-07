
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct thread {int dummy; } ;
struct nvd_disk {int ns; } ;
struct disk {struct nvd_disk* d_drv1; } ;


 int nvme_ns_ioctl_process (int ,int ,void*,int,struct thread*) ;

__attribute__((used)) static int
nvd_ioctl(struct disk *dp, u_long cmd, void *data, int fflag,
    struct thread *td)
{
 struct nvd_disk *ndisk = dp->d_drv1;

 return (nvme_ns_ioctl_process(ndisk->ns, cmd, data, fflag, td));
}
