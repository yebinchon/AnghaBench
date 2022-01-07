
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
struct userconf {int dummy; } ;
struct group {int gr_gid; int ** gr_mem; } ;
typedef int intmax_t ;
typedef int gid_t ;


 int ENDGRENT () ;
 struct group* GETGRGID (int) ;
 struct group* GETGRNAM (char*) ;
 int GID_MAX ;
 int SETGRENT () ;
 int groupadd (struct userconf*,char*,int,int *,int,int,int,int) ;
 int pw_checkid (char*,int ) ;
 void* pw_groupnext (struct userconf*,int) ;

__attribute__((used)) static uid_t
pw_gidpolicy(struct userconf *cnf, char *grname, char *nam, gid_t prefer, bool dryrun)
{
 struct group *grp;
 gid_t gid = (uid_t) - 1;




 SETGRENT();
 if (grname) {
  if ((grp = GETGRNAM(grname)) == ((void*)0)) {
   gid = pw_checkid(grname, GID_MAX);
   grp = GETGRGID(gid);
  }
  gid = grp->gr_gid;
 } else if ((grp = GETGRNAM(nam)) != ((void*)0) &&
     (grp->gr_mem == ((void*)0) || grp->gr_mem[0] == ((void*)0))) {
  gid = grp->gr_gid;
 } else {
  intmax_t grid = -1;
  if (GETGRGID(prefer) == ((void*)0))
   grid = prefer;
  if (dryrun) {
   gid = pw_groupnext(cnf, 1);
  } else {
   if (grid == -1)
    grid = pw_groupnext(cnf, 1);
   groupadd(cnf, nam, grid, ((void*)0), -1, 0, 0, 0);
   if ((grp = GETGRNAM(nam)) != ((void*)0))
    gid = grp->gr_gid;
  }
 }
 ENDGRENT();
 return (gid);
}
