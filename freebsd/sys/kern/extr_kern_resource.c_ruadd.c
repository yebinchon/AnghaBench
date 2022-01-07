
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rusage_ext {scalar_t__ rux_tu; scalar_t__ rux_su; scalar_t__ rux_uu; scalar_t__ rux_iticks; scalar_t__ rux_sticks; scalar_t__ rux_uticks; scalar_t__ rux_runtime; } ;
struct rusage {int dummy; } ;


 int rucollect (struct rusage*,struct rusage*) ;

void
ruadd(struct rusage *ru, struct rusage_ext *rux, struct rusage *ru2,
    struct rusage_ext *rux2)
{

 rux->rux_runtime += rux2->rux_runtime;
 rux->rux_uticks += rux2->rux_uticks;
 rux->rux_sticks += rux2->rux_sticks;
 rux->rux_iticks += rux2->rux_iticks;
 rux->rux_uu += rux2->rux_uu;
 rux->rux_su += rux2->rux_su;
 rux->rux_tu += rux2->rux_tu;
 rucollect(ru, ru2);
}
