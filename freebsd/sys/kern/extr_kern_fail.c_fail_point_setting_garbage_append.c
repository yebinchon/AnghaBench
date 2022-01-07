
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fail_point_setting {int dummy; } ;


 int STAILQ_INSERT_TAIL (int *,struct fail_point_setting*,int ) ;
 int fp_setting_garbage ;
 int fs_garbage_link ;
 int mtx_garbage_list ;
 int mtx_lock_spin (int *) ;
 int mtx_unlock_spin (int *) ;

__attribute__((used)) static inline void
fail_point_setting_garbage_append(struct fail_point_setting *fp_setting)
{

 mtx_lock_spin(&mtx_garbage_list);
 STAILQ_INSERT_TAIL(&fp_setting_garbage, fp_setting,
         fs_garbage_link);
 mtx_unlock_spin(&mtx_garbage_list);
}
