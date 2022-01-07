
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxd_foreach_action {int arg; int (* func ) (int,int ) ;} ;


 int MLX_NEXT_CHILD ;
 int close (int) ;
 int ctrlrpath (int) ;
 int drivepath (int) ;
 scalar_t__ ioctl (int,int ,int*) ;
 int open (int ,int ) ;
 int stub1 (int,int ) ;

void
mlxd_foreach_ctrlr(int unit, void *arg)
{
    struct mlxd_foreach_action *ma = (struct mlxd_foreach_action *)arg;
    int i, fd, ctrlfd;


    if ((ctrlfd = open(ctrlrpath(unit), 0)) < 0)
 return;

    for (i = -1; ;) {

 if (ioctl(ctrlfd, MLX_NEXT_CHILD, &i) < 0) {
     close(ctrlfd);
     return;
 }


 if ((fd = open(drivepath(i), 0)) >= 0)
     close(fd);

 if (fd >= 0) {
     ma->func(i, ma->arg);
 }
    }
}
