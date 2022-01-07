
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fail_point_setting {int dummy; } ;
struct fail_point {int fp_ref_cnt; } ;


 int FP_PAUSE_CHANNEL (struct fail_point*) ;
 int PWAIT ;
 struct fail_point_setting* fail_point_swap_settings (struct fail_point*,struct fail_point_setting*) ;
 int hz ;
 int tsleep (struct fail_point**,int ,char*,int) ;
 int wakeup (int ) ;

__attribute__((used)) static inline void
fail_point_drain(struct fail_point *fp, int expected_ref)
{
 struct fail_point_setting *entries;

 entries = fail_point_swap_settings(fp, ((void*)0));





 while (fp->fp_ref_cnt > expected_ref) {
  wakeup(FP_PAUSE_CHANNEL(fp));
  tsleep(&fp, PWAIT, "fail_point_drain", hz / 100);
 }
 fail_point_swap_settings(fp, entries);
}
