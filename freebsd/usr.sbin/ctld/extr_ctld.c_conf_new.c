
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct conf {int conf_isns_period; int conf_isns_timeout; int conf_timeout; int conf_maxproc; scalar_t__ conf_debug; int conf_isns; int conf_pports; int conf_portal_groups; int conf_ports; int conf_auth_groups; int conf_targets; int conf_luns; } ;


 int TAILQ_INIT (int *) ;
 struct conf* calloc (int,int) ;
 int log_err (int,char*) ;

struct conf *
conf_new(void)
{
 struct conf *conf;

 conf = calloc(1, sizeof(*conf));
 if (conf == ((void*)0))
  log_err(1, "calloc");
 TAILQ_INIT(&conf->conf_luns);
 TAILQ_INIT(&conf->conf_targets);
 TAILQ_INIT(&conf->conf_auth_groups);
 TAILQ_INIT(&conf->conf_ports);
 TAILQ_INIT(&conf->conf_portal_groups);
 TAILQ_INIT(&conf->conf_pports);
 TAILQ_INIT(&conf->conf_isns);

 conf->conf_isns_period = 900;
 conf->conf_isns_timeout = 5;
 conf->conf_debug = 0;
 conf->conf_timeout = 60;
 conf->conf_maxproc = 30;

 return (conf);
}
