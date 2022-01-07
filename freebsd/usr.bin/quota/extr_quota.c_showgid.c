
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct group {char* gr_name; } ;


 int GRPQUOTA ;
 struct group* getgrgid (int ) ;
 int showquotas (int ,int ,char const*) ;

__attribute__((used)) static int
showgid(u_long gid)
{
 struct group *grp = getgrgid(gid);
 const char *name;

 if (grp == ((void*)0))
  name = "(no entry)";
 else
  name = grp->gr_name;
 return(showquotas(GRPQUOTA, gid, name));
}
