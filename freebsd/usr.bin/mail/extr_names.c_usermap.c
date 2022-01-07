
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct name {char* n_name; int n_type; struct name* n_flink; } ;
struct grouphead {int dummy; } ;


 struct grouphead* findgroup (char*) ;
 struct name* gexpand (struct name*,struct grouphead*,int,int ) ;
 struct name* put (struct name*,struct name*) ;
 int * value (char*) ;

struct name *
usermap(struct name *names)
{
 struct name *new, *np, *cp;
 struct grouphead *gh;
 int metoo;

 new = ((void*)0);
 np = names;
 metoo = (value("metoo") != ((void*)0));
 while (np != ((void*)0)) {
  if (np->n_name[0] == '\\') {
   cp = np->n_flink;
   new = put(new, np);
   np = cp;
   continue;
  }
  gh = findgroup(np->n_name);
  cp = np->n_flink;
  if (gh != ((void*)0))
   new = gexpand(new, gh, metoo, np->n_type);
  else
   new = put(new, np);
  np = cp;
 }
 return (new);
}
