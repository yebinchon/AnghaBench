
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ucred {struct prison* cr_prison; } ;
struct statfs {char* f_mntonname; } ;
struct prison {int pr_enforce_statfs; int pr_path; TYPE_1__* pr_root; } ;
struct mount {struct statfs mnt_stat; } ;
struct TYPE_2__ {struct mount* v_mount; } ;


 int ENOENT ;
 scalar_t__ strcmp (int ,char*) ;
 size_t strlen (int ) ;
 scalar_t__ strncmp (int ,char*,size_t) ;

int
prison_canseemount(struct ucred *cred, struct mount *mp)
{
 struct prison *pr;
 struct statfs *sp;
 size_t len;

 pr = cred->cr_prison;
 if (pr->pr_enforce_statfs == 0)
  return (0);
 if (pr->pr_root->v_mount == mp)
  return (0);
 if (pr->pr_enforce_statfs == 2)
  return (ENOENT);






 if (strcmp(pr->pr_path, "/") == 0)
  return (0);
 len = strlen(pr->pr_path);
 sp = &mp->mnt_stat;
 if (strncmp(pr->pr_path, sp->f_mntonname, len) != 0)
  return (ENOENT);




 if (sp->f_mntonname[len] != '\0' && sp->f_mntonname[len] != '/')
  return (ENOENT);
 return (0);
}
