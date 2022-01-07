
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct thread {int dummy; } ;
struct disk {int d_drv1; } ;


 int mmcsd_ioctl (int ,int ,void*,int,struct thread*) ;

__attribute__((used)) static int
mmcsd_ioctl_disk(struct disk *disk, u_long cmd, void *data, int fflag,
    struct thread *td)
{

 return (mmcsd_ioctl(disk->d_drv1, cmd, data, fflag, td));
}
