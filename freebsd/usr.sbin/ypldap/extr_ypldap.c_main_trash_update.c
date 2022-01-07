
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct userent {struct userent* ge_line; struct userent* ue_netid_line; struct userent* ue_line; } ;
struct groupent {struct groupent* ge_line; struct groupent* ue_netid_line; struct groupent* ue_line; } ;
struct env {int update_trashed; struct userent* sc_group_names_t; struct userent* sc_user_names_t; } ;


 int RB_REMOVE (int ,struct userent*,struct userent*) ;
 struct userent* RB_ROOT (struct userent*) ;
 int free (struct userent*) ;
 int group_name_tree ;
 int user_name_tree ;

void
main_trash_update(struct env *env)
{
 struct userent *ue;
 struct groupent *ge;

 env->update_trashed = 1;

 while ((ue = RB_ROOT(env->sc_user_names_t)) != ((void*)0)) {
  RB_REMOVE(user_name_tree,
      env->sc_user_names_t, ue);
  free(ue->ue_line);
  free(ue->ue_netid_line);
  free(ue);
 }
 free(env->sc_user_names_t);
 env->sc_user_names_t = ((void*)0);
 while ((ge = RB_ROOT(env->sc_group_names_t))
     != ((void*)0)) {
  RB_REMOVE(group_name_tree,
      env->sc_group_names_t, ge);
  free(ge->ge_line);
  free(ge);
 }
 free(env->sc_group_names_t);
 env->sc_group_names_t = ((void*)0);
}
