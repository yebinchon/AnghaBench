
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct auth {struct auth* a_mutual_secret; struct auth* a_mutual_user; struct auth* a_secret; struct auth* a_user; TYPE_1__* a_auth_group; } ;
struct TYPE_2__ {int ag_auths; } ;


 int TAILQ_REMOVE (int *,struct auth*,int ) ;
 int a_next ;
 int free (struct auth*) ;

__attribute__((used)) static void
auth_delete(struct auth *auth)
{
 TAILQ_REMOVE(&auth->a_auth_group->ag_auths, auth, a_next);

 free(auth->a_user);
 free(auth->a_secret);
 free(auth->a_mutual_user);
 free(auth->a_mutual_secret);
 free(auth);
}
