
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fail_point {int fp_ref_cnt; } ;


 int KASSERT (int,char*) ;
 int atomic_subtract_rel_32 (int *,int) ;

__attribute__((used)) static inline void
fail_point_setting_release_ref(struct fail_point *fp)
{

 KASSERT(&fp->fp_ref_cnt > 0, ("Attempting to deref w/no refs"));
 atomic_subtract_rel_32(&fp->fp_ref_cnt, 1);
}
