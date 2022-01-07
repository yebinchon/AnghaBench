
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MLX_DETACH_DRIVE ;
 int close (int) ;
 int ctrlrpath (int) ;
 int drivename (int) ;
 scalar_t__ ioctl (int,int ,int*) ;
 int open (int ,int ) ;
 int warn (char*,int ) ;

__attribute__((used)) static void
detach_drive(int unit, void *arg)
{
    int fd;


    if ((fd = open(ctrlrpath(unit), 0)) < 0) {
 warn("can't open %s", ctrlrpath(unit));
 return;
    }

    if (ioctl(fd, MLX_DETACH_DRIVE, &unit) < 0)
 warn("can't detach %s", drivename(unit));
    close(fd);
}
