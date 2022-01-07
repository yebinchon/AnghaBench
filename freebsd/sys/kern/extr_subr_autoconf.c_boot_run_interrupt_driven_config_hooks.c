
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EWOULDBLOCK ;
 int TAILQ_EMPTY (int *) ;
 int TSUNWAIT (char*) ;
 int TSWAIT (char*) ;
 int WARNING_INTERVAL_SECS ;
 int hz ;
 int intr_config_hook_list ;
 int intr_config_hook_lock ;
 scalar_t__ msleep (int *,int *,int ,char*,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int run_interrupt_driven_config_hooks () ;
 int run_interrupt_driven_config_hooks_warning (int) ;

__attribute__((used)) static void
boot_run_interrupt_driven_config_hooks(void *dummy)
{
 int warned;

 run_interrupt_driven_config_hooks();


 TSWAIT("config hooks");
 mtx_lock(&intr_config_hook_lock);
 warned = 0;
 while (!TAILQ_EMPTY(&intr_config_hook_list)) {
  if (msleep(&intr_config_hook_list, &intr_config_hook_lock,
      0, "conifhk", WARNING_INTERVAL_SECS * hz) ==
      EWOULDBLOCK) {
   mtx_unlock(&intr_config_hook_lock);
   warned++;
   run_interrupt_driven_config_hooks_warning(warned);
   mtx_lock(&intr_config_hook_lock);
  }
 }
 mtx_unlock(&intr_config_hook_lock);
 TSUNWAIT("config hooks");
}
