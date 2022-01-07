
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct idm {int dummy; } ;
struct env {int sc_idms; } ;


 struct idm* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,struct idm*,int ) ;
 int free (struct idm*) ;
 int idm_entry ;

void
purge_config(struct env *env)
{
 struct idm *idm;

 while ((idm = TAILQ_FIRST(&env->sc_idms)) != ((void*)0)) {
  TAILQ_REMOVE(&env->sc_idms, idm, idm_entry);
  free(idm);
 }
}
