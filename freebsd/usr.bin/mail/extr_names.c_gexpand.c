
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct name {int n_type; } ;
struct grouphead {struct group* g_list; int g_name; } ;
struct group {char* ge_name; struct group* ge_link; } ;


 int GDEL ;
 int MAXEXP ;
 struct grouphead* findgroup (char*) ;
 int myname ;
 struct name* nalloc (char*,int) ;
 int printf (char*,int) ;
 struct name* put (struct name*,struct name*) ;
 scalar_t__ strcmp (char*,int ) ;

struct name *
gexpand(struct name *nlist, struct grouphead *gh, int metoo, int ntype)
{
 struct group *gp;
 struct grouphead *ngh;
 struct name *np;
 static int depth;
 char *cp;

 if (depth > MAXEXP) {
  printf("Expanding alias to depth larger than %d\n", MAXEXP);
  return (nlist);
 }
 depth++;
 for (gp = gh->g_list; gp != ((void*)0); gp = gp->ge_link) {
  cp = gp->ge_name;
  if (*cp == '\\')
   goto quote;
  if (strcmp(cp, gh->g_name) == 0)
   goto quote;
  if ((ngh = findgroup(cp)) != ((void*)0)) {
   nlist = gexpand(nlist, ngh, metoo, ntype);
   continue;
  }
quote:
  np = nalloc(cp, ntype);




  if (gp == gh->g_list && gp->ge_link == ((void*)0))
   goto skip;
  if (!metoo && strcmp(cp, myname) == 0)
   np->n_type |= GDEL;
skip:
  nlist = put(nlist, np);
 }
 depth--;
 return (nlist);
}
