
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isns {struct conf* i_conf; } ;
struct conf {int conf_targets; int conf_isns_timeout; int conf_portal_groups; } ;
typedef int hostname ;


 scalar_t__ TAILQ_EMPTY (int *) ;
 int close (int) ;
 int gethostname (char*,int) ;
 int isns_do_connect (struct isns*) ;
 int isns_do_deregister (struct isns*,int,char*) ;
 int isns_do_register (struct isns*,int,char*) ;
 int set_timeout (int ,int) ;

void
isns_register(struct isns *isns, struct isns *oldisns)
{
 struct conf *conf = isns->i_conf;
 int s;
 char hostname[256];

 if (TAILQ_EMPTY(&conf->conf_targets) ||
     TAILQ_EMPTY(&conf->conf_portal_groups))
  return;
 set_timeout(conf->conf_isns_timeout, 0);
 s = isns_do_connect(isns);
 if (s < 0) {
  set_timeout(0, 0);
  return;
 }
 gethostname(hostname, sizeof(hostname));

 if (oldisns == ((void*)0) || TAILQ_EMPTY(&oldisns->i_conf->conf_targets))
  oldisns = isns;
 isns_do_deregister(oldisns, s, hostname);
 isns_do_register(isns, s, hostname);
 close(s);
 set_timeout(0, 0);
}
