
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jailparam {int dummy; } ;
struct cfjail {int njp; int * intparams; struct jailparam* jp; int jid; } ;


 size_t IP_ALLOW_DYING ;
 int JAIL_DYING ;
 int JAIL_UPDATE ;
 int JP_RDTUN (struct jailparam*) ;
 struct jailparam* alloca (int) ;
 scalar_t__ bool_param (int ) ;
 int failed (struct cfjail*) ;
 int jail_errmsg ;
 int jail_warnx (struct cfjail*,char*,int ) ;
 int jailparam_free (struct jailparam*,int) ;
 scalar_t__ jailparam_import_raw (struct jailparam*,int *,int) ;
 scalar_t__ jailparam_init (struct jailparam*,char*) ;
 int jailparam_set_note (struct cfjail*,struct jailparam*,int,int) ;

__attribute__((used)) static int
update_jail(struct cfjail *j)
{
 struct jailparam *jp, *setparams, *sjp;
 int ns, jid;

 ns = 0;
 for (jp = j->jp; jp < j->jp + j->njp; jp++)
  if (!JP_RDTUN(jp))
   ns++;
 if (ns == 0)
  return 0;
 sjp = setparams = alloca(++ns * sizeof(struct jailparam));
 if (jailparam_init(sjp, "jid") < 0 ||
     jailparam_import_raw(sjp, &j->jid, sizeof j->jid) < 0) {
  jail_warnx(j, "%s", jail_errmsg);
  failed(j);
  return -1;
 }
 for (jp = j->jp; jp < j->jp + j->njp; jp++)
  if (!JP_RDTUN(jp))
   *++sjp = *jp;

 jid = jailparam_set_note(j, setparams, ns,
     bool_param(j->intparams[IP_ALLOW_DYING])
     ? JAIL_UPDATE | JAIL_DYING : JAIL_UPDATE);
 if (jid < 0) {
  jail_warnx(j, "%s", jail_errmsg);
  failed(j);
 }
 jailparam_free(setparams, 1);
 return jid;
}
