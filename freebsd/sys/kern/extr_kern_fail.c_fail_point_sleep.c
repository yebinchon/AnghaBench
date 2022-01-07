
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fail_point {int fp_flags; int fp_post_sleep_arg; int (* fp_post_sleep_fn ) (int ) ;int fp_pre_sleep_arg; int (* fp_pre_sleep_fn ) (int ) ;} ;
typedef int int64_t ;
typedef enum fail_point_return_code { ____Placeholder_fail_point_return_code } fail_point_return_code ;


 int FAIL_POINT_RC_QUEUED ;
 int FAIL_POINT_USE_TIMEOUT_PATH ;
 int FP_SLEEP_CHANNEL (struct fail_point*) ;
 int PWAIT ;
 int howmany (int,long) ;
 int hz ;
 int stub1 (int ) ;
 int stub2 (int ) ;
 int stub3 (int ) ;
 int timeout (int (*) (int ),int ,int) ;
 int tsleep (int ,int ,char*,int) ;

__attribute__((used)) static inline void
fail_point_sleep(struct fail_point *fp, int msecs,
        enum fail_point_return_code *pret)
{
 int timo;


 timo = howmany((int64_t)msecs * hz, 1000L);

 if (timo > 0) {
  if (!(fp->fp_flags & FAIL_POINT_USE_TIMEOUT_PATH)) {
   if (fp->fp_pre_sleep_fn)
    fp->fp_pre_sleep_fn(fp->fp_pre_sleep_arg);

   tsleep(FP_SLEEP_CHANNEL(fp), PWAIT, "failpt", timo);

   if (fp->fp_post_sleep_fn)
    fp->fp_post_sleep_fn(fp->fp_post_sleep_arg);
  } else {
   if (fp->fp_pre_sleep_fn)
    fp->fp_pre_sleep_fn(fp->fp_pre_sleep_arg);

   timeout(fp->fp_post_sleep_fn, fp->fp_post_sleep_arg,
       timo);
   *pret = FAIL_POINT_RC_QUEUED;
  }
 }
}
