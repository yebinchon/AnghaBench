
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fail_point_setting {int dummy; } ;
struct fail_point {struct fail_point_setting* fp_setting; int fp_ref_cnt; } ;


 int atomic_add_acq_32 (int *,int) ;

__attribute__((used)) static inline struct fail_point_setting *
fail_point_setting_get_ref(struct fail_point *fp)
{
 struct fail_point_setting *fp_setting;


 atomic_add_acq_32(&fp->fp_ref_cnt, 1);
 fp_setting = fp->fp_setting;

 return (fp_setting);
}
