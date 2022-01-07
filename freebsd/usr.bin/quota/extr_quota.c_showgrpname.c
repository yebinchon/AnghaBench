
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct group {int gr_gid; } ;


 int GRPQUOTA ;
 struct group* getgrnam (char*) ;
 int showquotas (int ,int ,char*) ;
 int warnx (char*,char*) ;

__attribute__((used)) static int
showgrpname(char *name)
{
 struct group *grp = getgrnam(name);

 if (grp == ((void*)0)) {
  warnx("%s: unknown group", name);
  return(1);
 }
 return(showquotas(GRPQUOTA, grp->gr_gid, name));
}
