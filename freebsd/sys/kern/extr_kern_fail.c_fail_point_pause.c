
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtx {int dummy; } ;
struct fail_point {int fp_post_sleep_arg; int (* fp_post_sleep_fn ) (int ) ;int fp_pre_sleep_arg; int (* fp_pre_sleep_fn ) (int ) ;} ;
typedef enum fail_point_return_code { ____Placeholder_fail_point_return_code } fail_point_return_code ;


 int FP_PAUSE_CHANNEL (struct fail_point*) ;
 int msleep_spin (int ,struct mtx*,char*,int ) ;
 int stub1 (int ) ;
 int stub2 (int ) ;

__attribute__((used)) static inline void
fail_point_pause(struct fail_point *fp, enum fail_point_return_code *pret,
        struct mtx *mtx_sleep)
{

 if (fp->fp_pre_sleep_fn)
  fp->fp_pre_sleep_fn(fp->fp_pre_sleep_arg);

 msleep_spin(FP_PAUSE_CHANNEL(fp), mtx_sleep, "failpt", 0);

 if (fp->fp_post_sleep_fn)
  fp->fp_post_sleep_fn(fp->fp_post_sleep_arg);
}
