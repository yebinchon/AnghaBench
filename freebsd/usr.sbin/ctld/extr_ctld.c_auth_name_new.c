
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct auth_name {int an_initator_name; struct auth_group* an_auth_group; } const auth_name ;
struct auth_group {int ag_names; } ;


 int TAILQ_INSERT_TAIL (int *,struct auth_name const*,int ) ;
 int an_next ;
 struct auth_name const* calloc (int,int) ;
 int checked_strdup (char const*) ;
 int log_err (int,char*) ;

const struct auth_name *
auth_name_new(struct auth_group *ag, const char *name)
{
 struct auth_name *an;

 an = calloc(1, sizeof(*an));
 if (an == ((void*)0))
  log_err(1, "calloc");
 an->an_auth_group = ag;
 an->an_initator_name = checked_strdup(name);
 TAILQ_INSERT_TAIL(&ag->ag_names, an, an_next);
 return (an);
}
