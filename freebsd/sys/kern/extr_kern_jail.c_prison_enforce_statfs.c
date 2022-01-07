
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ucred {struct prison* cr_prison; } ;
struct statfs {char* f_mntonname; } ;
struct prison {scalar_t__ pr_enforce_statfs; int pr_path; TYPE_1__* pr_root; } ;
struct mount {int dummy; } ;
typedef int jpath ;
struct TYPE_2__ {struct mount* v_mount; } ;


 int MAXPATHLEN ;
 int bzero (char*,int) ;
 scalar_t__ prison_canseemount (struct ucred*,struct mount*) ;
 scalar_t__ strcmp (int ,char*) ;
 int strlcpy (char*,char*,int) ;
 size_t strlen (int ) ;

void
prison_enforce_statfs(struct ucred *cred, struct mount *mp, struct statfs *sp)
{
 char jpath[MAXPATHLEN];
 struct prison *pr;
 size_t len;

 pr = cred->cr_prison;
 if (pr->pr_enforce_statfs == 0)
  return;
 if (prison_canseemount(cred, mp) != 0) {
  bzero(sp->f_mntonname, sizeof(sp->f_mntonname));
  strlcpy(sp->f_mntonname, "[restricted]",
      sizeof(sp->f_mntonname));
  return;
 }
 if (pr->pr_root->v_mount == mp) {




  bzero(sp->f_mntonname, sizeof(sp->f_mntonname));
  *sp->f_mntonname = '/';
  return;
 }




 if (strcmp(pr->pr_path, "/") == 0)
  return;
 len = strlen(pr->pr_path);
 strlcpy(jpath, sp->f_mntonname + len, sizeof(jpath));




 bzero(sp->f_mntonname, sizeof(sp->f_mntonname));
 if (*jpath == '\0') {

  *sp->f_mntonname = '/';
 } else {
  strlcpy(sp->f_mntonname, jpath, sizeof(sp->f_mntonname));
 }
}
