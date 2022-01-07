
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {double v_forks; double v_vforks; double v_rforks; scalar_t__ v_rforkpages; scalar_t__ v_vforkpages; scalar_t__ v_forkpages; } ;


 int fill_vmmeter (TYPE_1__*) ;
 TYPE_1__ sum ;
 int xo_close_container (char*) ;
 int xo_emit (char*,double,scalar_t__,double) ;
 int xo_open_container (char*) ;

__attribute__((used)) static void
doforkst(void)
{

 fill_vmmeter(&sum);
 xo_open_container("fork-statistics");
 xo_emit("{:fork/%u} {N:forks}, {:fork-pages/%u} {N:pages}, "
     "{L:average} {:fork-average/%.2f}\n",
     sum.v_forks, sum.v_forkpages,
     sum.v_forks == 0 ? 0.0 :
     (double)sum.v_forkpages / sum.v_forks);
 xo_emit("{:vfork/%u} {N:vforks}, {:vfork-pages/%u} {N:pages}, "
     "{L:average} {:vfork-average/%.2f}\n",
     sum.v_vforks, sum.v_vforkpages,
     sum.v_vforks == 0 ? 0.0 :
     (double)sum.v_vforkpages / sum.v_vforks);
 xo_emit("{:rfork/%u} {N:rforks}, {:rfork-pages/%u} {N:pages}, "
     "{L:average} {:rfork-average/%.2f}\n",
     sum.v_rforks, sum.v_rforkpages,
     sum.v_rforks == 0 ? 0.0 :
     (double)sum.v_rforkpages / sum.v_rforks);
 xo_close_container("fork-statistics");
}
