
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int close (int) ;
 int ctrlrpath (int) ;
 int open (int ,int ) ;

void
mlx_perform(int unit, void (*func)(int fd, void *arg), void *arg)
{
    int fd;

    if ((fd = open(ctrlrpath(unit), 0)) >= 0) {
 func(fd, arg);
 close(fd);
    }
}
