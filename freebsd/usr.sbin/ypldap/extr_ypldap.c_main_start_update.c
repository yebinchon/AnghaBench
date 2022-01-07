
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct env {int * sc_group_names_t; int * sc_user_names_t; scalar_t__ sc_group_line_len; scalar_t__ sc_user_line_len; scalar_t__ update_trashed; } ;


 int RB_INIT (int *) ;
 void* calloc (int,int) ;
 int fatal (int *) ;
 int log_debug (char*) ;

void
main_start_update(struct env *env)
{
 env->update_trashed = 0;

 log_debug("starting directory update");
 env->sc_user_line_len = 0;
 env->sc_group_line_len = 0;
 if ((env->sc_user_names_t = calloc(1,
     sizeof(*env->sc_user_names_t))) == ((void*)0) ||
     (env->sc_group_names_t = calloc(1,
     sizeof(*env->sc_group_names_t))) == ((void*)0))
  fatal(((void*)0));
 RB_INIT(env->sc_user_names_t);
 RB_INIT(env->sc_group_names_t);
}
