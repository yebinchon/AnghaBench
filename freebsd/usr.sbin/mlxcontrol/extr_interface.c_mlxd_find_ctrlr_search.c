
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int unit; int ctrlr; int sysdrive; } ;


 int MLX_GET_SYSDRIVE ;
 int MLX_NEXT_CHILD ;
 int close (int) ;
 int ctrlrpath (int) ;
 scalar_t__ ioctl (int,int ,int*) ;
 TYPE_1__ mlxd_find_ctrlr_param ;
 int open (int ,int ) ;

__attribute__((used)) static void
mlxd_find_ctrlr_search(int unit, void *arg)
{
    int i, fd;


    if ((fd = open(ctrlrpath(unit), 0)) >= 0) {
 for (i = -1; ;) {

     if (ioctl(fd, MLX_NEXT_CHILD, &i) < 0)
  break;


     if (i == mlxd_find_ctrlr_param.unit) {
  mlxd_find_ctrlr_param.ctrlr = unit;
  if (ioctl(fd, MLX_GET_SYSDRIVE, &i) == 0)
      mlxd_find_ctrlr_param.sysdrive = i;
     }
 }
 close(fd);
    }
}
