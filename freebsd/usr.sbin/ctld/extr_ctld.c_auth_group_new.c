
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct conf {int conf_auth_groups; } ;
struct auth_group {struct conf* ag_conf; int ag_portals; int ag_names; int ag_auths; int ag_name; } ;


 int TAILQ_INIT (int *) ;
 int TAILQ_INSERT_TAIL (int *,struct auth_group*,int ) ;
 int ag_next ;
 struct auth_group* auth_group_find (struct conf*,char const*) ;
 struct auth_group* calloc (int,int) ;
 int checked_strdup (char const*) ;
 int log_err (int,char*) ;
 int log_warnx (char*,char const*) ;

struct auth_group *
auth_group_new(struct conf *conf, const char *name)
{
 struct auth_group *ag;

 if (name != ((void*)0)) {
  ag = auth_group_find(conf, name);
  if (ag != ((void*)0)) {
   log_warnx("duplicated auth-group \"%s\"", name);
   return (((void*)0));
  }
 }

 ag = calloc(1, sizeof(*ag));
 if (ag == ((void*)0))
  log_err(1, "calloc");
 if (name != ((void*)0))
  ag->ag_name = checked_strdup(name);
 TAILQ_INIT(&ag->ag_auths);
 TAILQ_INIT(&ag->ag_names);
 TAILQ_INIT(&ag->ag_portals);
 ag->ag_conf = conf;
 TAILQ_INSERT_TAIL(&conf->conf_auth_groups, ag, ag_next);

 return (ag);
}
