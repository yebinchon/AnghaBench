
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct target {int t_ports; int t_name; } ;
struct portal_group {int pg_ports; int pg_name; } ;
struct port {char* p_name; struct portal_group* p_portal_group; struct target* p_target; scalar_t__ p_ioctl_port; struct conf* p_conf; } ;
struct conf {int conf_ports; } ;


 int TAILQ_INSERT_TAIL (int *,struct port*,int ) ;
 int asprintf (char**,char*,int ,int ) ;
 struct port* calloc (int,int) ;
 int free (char*) ;
 int log_err (int,char*) ;
 int log_warnx (char*,char*) ;
 int p_next ;
 int p_pgs ;
 int p_ts ;
 int * port_find (struct conf*,char*) ;

struct port *
port_new(struct conf *conf, struct target *target, struct portal_group *pg)
{
 struct port *port;
 char *name;
 int ret;

 ret = asprintf(&name, "%s-%s", pg->pg_name, target->t_name);
 if (ret <= 0)
  log_err(1, "asprintf");
 if (port_find(conf, name) != ((void*)0)) {
  log_warnx("duplicate port \"%s\"", name);
  free(name);
  return (((void*)0));
 }
 port = calloc(1, sizeof(*port));
 if (port == ((void*)0))
  log_err(1, "calloc");
 port->p_conf = conf;
 port->p_name = name;
 port->p_ioctl_port = 0;
 TAILQ_INSERT_TAIL(&conf->conf_ports, port, p_next);
 TAILQ_INSERT_TAIL(&target->t_ports, port, p_ts);
 port->p_target = target;
 TAILQ_INSERT_TAIL(&pg->pg_ports, port, p_pgs);
 port->p_portal_group = pg;
 return (port);
}
