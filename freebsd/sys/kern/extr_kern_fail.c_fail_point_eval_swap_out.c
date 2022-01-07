
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fail_point_setting {int dummy; } ;
struct fail_point {struct fail_point_setting* fp_setting; } ;


 int fail_point_swap_settings (struct fail_point*,int *) ;

__attribute__((used)) static inline void
fail_point_eval_swap_out(struct fail_point *fp,
        struct fail_point_setting *fp_setting)
{


 if (fp->fp_setting == fp_setting)
  fail_point_swap_settings(fp, ((void*)0));
}
