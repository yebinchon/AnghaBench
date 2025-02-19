
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct vdso_timekeep {scalar_t__ tk_enabled; scalar_t__ tk_current; struct vdso_timehands* tk_th; } ;
struct vdso_timehands {scalar_t__ th_gen; } ;
struct vdso_sv_tk {scalar_t__ sv_timekeep_curr; scalar_t__ sv_timekeep_gen; scalar_t__ sv_timekeep_off; } ;


 scalar_t__ VDSO_TH_NUM ;
 int atomic_store_rel_32 (scalar_t__*,scalar_t__) ;
 int atomic_thread_fence_rel () ;
 scalar_t__ shared_page_mapping ;
 scalar_t__ tc_fill_vdso_timehands (struct vdso_timehands*) ;

__attribute__((used)) static void
timehands_update(struct vdso_sv_tk *svtk)
{
 struct vdso_timehands th;
 struct vdso_timekeep *tk;
 uint32_t enabled, idx;

 enabled = tc_fill_vdso_timehands(&th);
 th.th_gen = 0;
 idx = svtk->sv_timekeep_curr;
 if (++idx >= VDSO_TH_NUM)
  idx = 0;
 svtk->sv_timekeep_curr = idx;
 if (++svtk->sv_timekeep_gen == 0)
  svtk->sv_timekeep_gen = 1;

 tk = (struct vdso_timekeep *)(shared_page_mapping +
     svtk->sv_timekeep_off);
 tk->tk_th[idx].th_gen = 0;
 atomic_thread_fence_rel();
 if (enabled)
  tk->tk_th[idx] = th;
 atomic_store_rel_32(&tk->tk_th[idx].th_gen, svtk->sv_timekeep_gen);
 atomic_store_rel_32(&tk->tk_current, idx);





 tk->tk_enabled = enabled;
}
