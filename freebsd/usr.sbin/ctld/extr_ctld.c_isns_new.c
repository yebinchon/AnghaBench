
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isns {int i_addr; int i_ai; struct conf* i_conf; } ;
struct conf {int conf_isns; } ;


 int TAILQ_INSERT_TAIL (int *,struct isns*,int ) ;
 struct isns* calloc (int,int) ;
 int checked_strdup (char const*) ;
 int i_next ;
 int isns_delete (struct isns*) ;
 int log_err (int,char*) ;
 int log_warnx (char*,int ) ;
 scalar_t__ parse_addr_port (int ,char*,int *) ;

int
isns_new(struct conf *conf, const char *addr)
{
 struct isns *isns;

 isns = calloc(1, sizeof(*isns));
 if (isns == ((void*)0))
  log_err(1, "calloc");
 isns->i_conf = conf;
 TAILQ_INSERT_TAIL(&conf->conf_isns, isns, i_next);
 isns->i_addr = checked_strdup(addr);

 if (parse_addr_port(isns->i_addr, "3205", &isns->i_ai)) {
  log_warnx("invalid iSNS address %s", isns->i_addr);
  isns_delete(isns);
  return (1);
 }






 return (0);
}
