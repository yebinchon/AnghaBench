
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intr_config_hook {int ich_arg; int (* ich_func ) (int ) ;} ;


 struct intr_config_hook* TAILQ_NEXT (struct intr_config_hook*,int ) ;
 int ich_links ;
 int intr_config_hook_lock ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 struct intr_config_hook* next_to_notify ;
 int stub1 (int ) ;

__attribute__((used)) static void
run_interrupt_driven_config_hooks()
{
 static int running;
 struct intr_config_hook *hook_entry;

 mtx_lock(&intr_config_hook_lock);







 if (running != 0) {
  mtx_unlock(&intr_config_hook_lock);
  return;
 }
 running = 1;

 while (next_to_notify != ((void*)0)) {
  hook_entry = next_to_notify;
  next_to_notify = TAILQ_NEXT(hook_entry, ich_links);
  mtx_unlock(&intr_config_hook_lock);
  (*hook_entry->ich_func)(hook_entry->ich_arg);
  mtx_lock(&intr_config_hook_lock);
 }

 running = 0;
 mtx_unlock(&intr_config_hook_lock);
}
