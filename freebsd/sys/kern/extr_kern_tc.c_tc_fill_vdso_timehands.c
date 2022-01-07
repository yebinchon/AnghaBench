
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct vdso_timehands {int th_boottime; int th_offset; int th_counter_mask; int th_offset_count; int th_scale; } ;
struct timehands {TYPE_1__* th_counter; int th_boottime; int th_offset; int th_offset_count; int th_scale; } ;
struct TYPE_2__ {scalar_t__ (* tc_fill_vdso_timehands ) (struct vdso_timehands*,TYPE_1__*) ;int tc_counter_mask; } ;


 scalar_t__ stub1 (struct vdso_timehands*,TYPE_1__*) ;
 struct timehands* timehands ;
 int vdso_th_enable ;

uint32_t
tc_fill_vdso_timehands(struct vdso_timehands *vdso_th)
{
 struct timehands *th;
 uint32_t enabled;

 th = timehands;
 vdso_th->th_scale = th->th_scale;
 vdso_th->th_offset_count = th->th_offset_count;
 vdso_th->th_counter_mask = th->th_counter->tc_counter_mask;
 vdso_th->th_offset = th->th_offset;
 vdso_th->th_boottime = th->th_boottime;
 if (th->th_counter->tc_fill_vdso_timehands != ((void*)0)) {
  enabled = th->th_counter->tc_fill_vdso_timehands(vdso_th,
      th->th_counter);
 } else
  enabled = 0;
 if (!vdso_th_enable)
  enabled = 0;
 return (enabled);
}
