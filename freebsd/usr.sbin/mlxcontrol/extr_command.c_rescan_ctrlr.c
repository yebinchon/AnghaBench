
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MLX_RESCAN_DRIVES ;
 int close (int) ;
 int ctrlrname (int) ;
 int ctrlrpath (int) ;
 scalar_t__ ioctl (int,int ) ;
 int open (int ,int ) ;
 int warn (char*,int ) ;

__attribute__((used)) static void
rescan_ctrlr(int unit, void *junk)
{
    int fd;


    if ((fd = open(ctrlrpath(unit), 0)) < 0) {
 warn("can't open %s", ctrlrpath(unit));
 return;
    }

    if (ioctl(fd, MLX_RESCAN_DRIVES) < 0)
 warn("can't rescan %s", ctrlrname(unit));
    close(fd);
}
