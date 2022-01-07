
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sysctl_oid {int dummy; } ;
struct bool_flags {unsigned int flag; char* name; char* noname; } ;
struct TYPE_2__ {unsigned int pr_allow; int pr_mtx; } ;


 int CTLFLAG_MPSAFE ;
 int CTLFLAG_RW ;
 int CTLTYPE_INT ;
 int M_PRISON ;
 int M_TEMP ;
 int OID_AUTO ;
 unsigned int PR_ALLOW_ALL_STATIC ;
 struct sysctl_oid* SYSCTL_ADD_NODE (int *,int ,int ,char const*,int ,int ,char const*) ;
 int SYSCTL_ADD_PROC (int *,int ,int ,char const*,int,int *,unsigned int,int ,char*,char const*) ;
 int SYSCTL_CHILDREN (struct sysctl_oid*) ;
 scalar_t__ asprintf (char**,int ,char*,char const*,...) ;
 int free (char*,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int nitems (struct bool_flags*) ;
 struct bool_flags* pr_flag_allow ;
 TYPE_1__ prison0 ;
 scalar_t__ strcmp (char*,char*) ;
 struct sysctl_oid sysctl___security_jail ;
 struct sysctl_oid sysctl___security_jail_param_allow ;
 int sysctl_jail_default_allow ;
 int sysctl_jail_param ;

unsigned
prison_add_allow(const char *prefix, const char *name, const char *prefix_descr,
    const char *descr)
{
 struct bool_flags *bf;
 struct sysctl_oid *parent;
 char *allow_name, *allow_noname, *allowed;

 char *descr_deprecated;

 unsigned allow_flag;

 if (prefix
     ? asprintf(&allow_name, M_PRISON, "allow.%s.%s", prefix, name)
  < 0 ||
       asprintf(&allow_noname, M_PRISON, "allow.%s.no%s", prefix, name)
  < 0
     : asprintf(&allow_name, M_PRISON, "allow.%s", name) < 0 ||
       asprintf(&allow_noname, M_PRISON, "allow.no%s", name) < 0) {
  free(allow_name, M_PRISON);
  return 0;
 }





 mtx_lock(&prison0.pr_mtx);
 for (bf = pr_flag_allow;
      bf < pr_flag_allow + nitems(pr_flag_allow) && bf->flag != 0;
      bf++) {
  if (strcmp(bf->name, allow_name) == 0) {
   allow_flag = bf->flag;
   goto no_add;
  }
 }
 for (allow_flag = 1;; allow_flag <<= 1) {
  if (allow_flag == 0)
   goto no_add;
  if (allow_flag & PR_ALLOW_ALL_STATIC)
   continue;
  if ((prison0.pr_allow & allow_flag) == 0)
   break;
 }






 for (bf = pr_flag_allow; bf->flag != 0; bf++)
  if (bf == pr_flag_allow + nitems(pr_flag_allow)) {

   allow_flag = 0;
   goto no_add;
  }
 prison0.pr_allow |= allow_flag;
 bf->name = allow_name;
 bf->noname = allow_noname;
 bf->flag = allow_flag;
 mtx_unlock(&prison0.pr_mtx);





 parent = prefix
     ? SYSCTL_ADD_NODE(((void*)0),
    SYSCTL_CHILDREN(&sysctl___security_jail_param_allow),
    OID_AUTO, prefix, 0, 0, prefix_descr)
     : &sysctl___security_jail_param_allow;
 (void)SYSCTL_ADD_PROC(((void*)0), SYSCTL_CHILDREN(parent), OID_AUTO,
     name, CTLTYPE_INT | CTLFLAG_RW | CTLFLAG_MPSAFE,
     ((void*)0), 0, sysctl_jail_param, "B", descr);
 if ((prefix
      ? asprintf(&allowed, M_TEMP, "%s_%s_allowed", prefix, name)
      : asprintf(&allowed, M_TEMP, "%s_allowed", name)) >= 0) {

  (void)asprintf(&descr_deprecated, M_TEMP, "%s (deprecated)",
      descr);

  (void)SYSCTL_ADD_PROC(((void*)0),
      SYSCTL_CHILDREN(&sysctl___security_jail), OID_AUTO, allowed,
      CTLTYPE_INT | CTLFLAG_RW | CTLFLAG_MPSAFE, ((void*)0), allow_flag,
      sysctl_jail_default_allow, "I", descr_deprecated);

  free(descr_deprecated, M_TEMP);

  free(allowed, M_TEMP);
 }
 return allow_flag;

 no_add:
 mtx_unlock(&prison0.pr_mtx);
 free(allow_name, M_PRISON);
 free(allow_noname, M_PRISON);
 return allow_flag;
}
