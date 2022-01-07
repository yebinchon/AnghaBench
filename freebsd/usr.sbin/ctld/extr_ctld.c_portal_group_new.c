
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct portal_group {scalar_t__ pg_tag; struct conf* pg_conf; int pg_ports; int pg_portals; int pg_options; int pg_name; } ;
struct conf {int conf_portal_groups; } ;


 int TAILQ_INIT (int *) ;
 int TAILQ_INSERT_TAIL (int *,struct portal_group*,int ) ;
 struct portal_group* calloc (int,int) ;
 int checked_strdup (char const*) ;
 int log_err (int,char*) ;
 int log_warnx (char*,char const*) ;
 int pg_next ;
 struct portal_group* portal_group_find (struct conf*,char const*) ;

struct portal_group *
portal_group_new(struct conf *conf, const char *name)
{
 struct portal_group *pg;

 pg = portal_group_find(conf, name);
 if (pg != ((void*)0)) {
  log_warnx("duplicated portal-group \"%s\"", name);
  return (((void*)0));
 }

 pg = calloc(1, sizeof(*pg));
 if (pg == ((void*)0))
  log_err(1, "calloc");
 pg->pg_name = checked_strdup(name);
 TAILQ_INIT(&pg->pg_options);
 TAILQ_INIT(&pg->pg_portals);
 TAILQ_INIT(&pg->pg_ports);
 pg->pg_conf = conf;
 pg->pg_tag = 0;
 TAILQ_INSERT_TAIL(&conf->conf_portal_groups, pg, pg_next);

 return (pg);
}
