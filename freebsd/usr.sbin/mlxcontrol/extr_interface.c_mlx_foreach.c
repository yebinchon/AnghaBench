
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int close (int) ;
 int ctrlrpath (int) ;
 int open (int ,int ) ;

void
mlx_foreach(void (*func)(int unit, void *arg), void *arg)
{
    int i, fd;


    for (i = 0; i < 64; i++) {

 if ((fd = open(ctrlrpath(i), 0)) >= 0)
     close(fd);

 if (fd >= 0) {
     func(i, arg);
 }
    }
}
