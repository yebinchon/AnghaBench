
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct grouphead {char* g_name; struct grouphead* g_link; } ;


 scalar_t__ equal (char*,char*) ;
 struct grouphead** groups ;
 size_t hash (char*) ;

struct grouphead *
findgroup(char name[])
{
 struct grouphead *gh;

 for (gh = groups[hash(name)]; gh != ((void*)0); gh = gh->g_link)
  if (*gh->g_name == *name && equal(gh->g_name, name))
   return (gh);
 return (((void*)0));
}
