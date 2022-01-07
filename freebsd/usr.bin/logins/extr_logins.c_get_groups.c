
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct group {char* gr_name; char* gr_passwd; int ** gr_mem; int gr_gid; } ;
struct TYPE_4__ {char* gr_mem; int gr_gid; void* gr_passwd; void* gr_name; } ;


 int endgrent () ;
 struct group* getgrent () ;
 TYPE_1__* grps ;
 int grpsz ;
 int ngrps ;
 int setgrent () ;
 scalar_t__ sprintf (char*,char*,int *) ;
 scalar_t__ strlen (int *) ;
 char* xmalloc (size_t) ;
 TYPE_1__* xrealloc (TYPE_1__*,int) ;
 void* xstrdup (char*) ;

__attribute__((used)) static void
get_groups(void)
{
 struct group *grp;
 size_t len;
 int i;

 setgrent();
 for (;;) {
  if (ngrps == grpsz) {
   grpsz += grpsz ? grpsz : 128;
   grps = xrealloc(grps, grpsz * sizeof *grps);
  }
  if ((grp = getgrent()) == ((void*)0))
   break;
  grps[ngrps].gr_name = xstrdup(grp->gr_name);
  grps[ngrps].gr_passwd = xstrdup(grp->gr_passwd);
  grps[ngrps].gr_gid = grp->gr_gid;
  grps[ngrps].gr_mem = xstrdup("");
  for (i = 0, len = 1; grp->gr_mem[i] != ((void*)0); ++i)
   len += strlen(grp->gr_mem[i]) + 1;
  grps[ngrps].gr_mem = xmalloc(len);
  for (i = 0, len = 0; grp->gr_mem[i] != ((void*)0); ++i)
   len += sprintf(grps[ngrps].gr_mem + len,
       i ? ",%s" : "%s", grp->gr_mem[i]);
  grps[ngrps].gr_mem[len] = '\0';
  ngrps++;
 }
 endgrent();
}
