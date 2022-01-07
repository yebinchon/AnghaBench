
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct target {int t_ports; struct conf* t_conf; int * t_name; } ;
struct conf {int conf_targets; } ;


 int TAILQ_INIT (int *) ;
 int TAILQ_INSERT_TAIL (int *,struct target*,int ) ;
 struct target* calloc (int,int) ;
 int * checked_strdup (char const*) ;
 int log_err (int,char*) ;
 int log_warnx (char*,char const*) ;
 int strlen (char const*) ;
 int t_next ;
 struct target* target_find (struct conf*,char const*) ;
 int tolower (int ) ;
 int valid_iscsi_name (char const*) ;

struct target *
target_new(struct conf *conf, const char *name)
{
 struct target *targ;
 int i, len;

 targ = target_find(conf, name);
 if (targ != ((void*)0)) {
  log_warnx("duplicated target \"%s\"", name);
  return (((void*)0));
 }
 if (valid_iscsi_name(name) == 0) {
  log_warnx("target name \"%s\" is invalid", name);
  return (((void*)0));
 }
 targ = calloc(1, sizeof(*targ));
 if (targ == ((void*)0))
  log_err(1, "calloc");
 targ->t_name = checked_strdup(name);




 len = strlen(name);
 for (i = 0; i < len; i++)
  targ->t_name[i] = tolower(targ->t_name[i]);

 targ->t_conf = conf;
 TAILQ_INIT(&targ->t_ports);
 TAILQ_INSERT_TAIL(&conf->conf_targets, targ, t_next);

 return (targ);
}
