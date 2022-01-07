
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pport {int pp_ports; int pp_ctl_port; int pp_name; struct conf* pp_conf; } ;
struct conf {int conf_pports; } ;


 int TAILQ_INIT (int *) ;
 int TAILQ_INSERT_TAIL (int *,struct pport*,int ) ;
 struct pport* calloc (int,int) ;
 int checked_strdup (char const*) ;
 int log_err (int,char*) ;
 int pp_next ;

struct pport *
pport_new(struct conf *conf, const char *name, uint32_t ctl_port)
{
 struct pport *pp;

 pp = calloc(1, sizeof(*pp));
 if (pp == ((void*)0))
  log_err(1, "calloc");
 pp->pp_conf = conf;
 pp->pp_name = checked_strdup(name);
 pp->pp_ctl_port = ctl_port;
 TAILQ_INIT(&pp->pp_ports);
 TAILQ_INSERT_TAIL(&conf->conf_pports, pp, pp_next);
 return (pp);
}
