
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct grouphead {char* g_name; struct group* g_list; } ;
struct group {char* ge_name; struct group* ge_link; } ;


 struct grouphead* findgroup (char*) ;
 int printf (char*,...) ;

void
printgroup(char name[])
{
 struct grouphead *gh;
 struct group *gp;

 if ((gh = findgroup(name)) == ((void*)0)) {
  printf("\"%s\": not a group\n", name);
  return;
 }
 printf("%s\t", gh->g_name);
 for (gp = gh->g_list; gp != ((void*)0); gp = gp->ge_link)
  printf(" %s", gp->ge_name);
 printf("\n");
}
