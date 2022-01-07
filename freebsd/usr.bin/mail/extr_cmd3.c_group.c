
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct grouphead {struct group* g_list; struct grouphead* g_link; void* g_name; } ;
struct group {struct group* ge_link; void* ge_name; } ;


 int HSHSIZE ;
 void* calloc (int,int) ;
 int err (int,char*) ;
 struct grouphead* findgroup (char*) ;
 struct grouphead** groups ;
 int hash (char*) ;
 int printgroup (char*) ;
 scalar_t__ salloc (int) ;
 int sort (char**) ;
 void* vcopy (char*) ;

int
group(void *v)
{
 char **argv = v;
 struct grouphead *gh;
 struct group *gp;
 char **ap, *gname, **p;
 int h, s;

 if (*argv == ((void*)0)) {
  for (h = 0, s = 1; h < HSHSIZE; h++)
   for (gh = groups[h]; gh != ((void*)0); gh = gh->g_link)
    s++;
  ap = (char **)salloc(s * sizeof(*ap));
  for (h = 0, p = ap; h < HSHSIZE; h++)
   for (gh = groups[h]; gh != ((void*)0); gh = gh->g_link)
    *p++ = gh->g_name;
  *p = ((void*)0);
  sort(ap);
  for (p = ap; *p != ((void*)0); p++)
   printgroup(*p);
  return (0);
 }
 if (argv[1] == ((void*)0)) {
  printgroup(*argv);
  return (0);
 }
 gname = *argv;
 h = hash(gname);
 if ((gh = findgroup(gname)) == ((void*)0)) {
  if ((gh = calloc(1, sizeof(*gh))) == ((void*)0))
   err(1, "Out of memory");
  gh->g_name = vcopy(gname);
  gh->g_list = ((void*)0);
  gh->g_link = groups[h];
  groups[h] = gh;
 }







 for (ap = argv+1; *ap != ((void*)0); ap++) {
  if ((gp = calloc(1, sizeof(*gp))) == ((void*)0))
   err(1, "Out of memory");
  gp->ge_name = vcopy(*ap);
  gp->ge_link = gh->g_list;
  gh->g_list = gp;
 }
 return (0);
}
