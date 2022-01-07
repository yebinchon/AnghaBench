
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct auth_group {int ag_auths; } ;
struct auth {struct auth_group* a_auth_group; } ;


 int TAILQ_INSERT_TAIL (int *,struct auth*,int ) ;
 int a_next ;
 struct auth* calloc (int,int) ;
 int log_err (int,char*) ;

__attribute__((used)) static struct auth *
auth_new(struct auth_group *ag)
{
 struct auth *auth;

 auth = calloc(1, sizeof(*auth));
 if (auth == ((void*)0))
  log_err(1, "calloc");
 auth->a_auth_group = ag;
 TAILQ_INSERT_TAIL(&ag->ag_auths, auth, a_next);
 return (auth);
}
