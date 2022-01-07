
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct name {struct name* n_blink; struct name* n_flink; } ;


 int err (int,char*) ;
 int free (char*) ;
 char* malloc (scalar_t__) ;
 struct name* nalloc (char*,int) ;
 scalar_t__ strlen (char*) ;
 char* yankword (char*,char*) ;

struct name *
extract(char *line, int ntype)
{
 char *cp, *nbuf;
 struct name *top, *np, *t;

 if (line == ((void*)0) || *line == '\0')
  return (((void*)0));
 if ((nbuf = malloc(strlen(line) + 1)) == ((void*)0))
  err(1, "Out of memory");
 top = ((void*)0);
 np = ((void*)0);
 cp = line;
 while ((cp = yankword(cp, nbuf)) != ((void*)0)) {
  t = nalloc(nbuf, ntype);
  if (top == ((void*)0))
   top = t;
  else
   np->n_flink = t;
  t->n_blink = np;
  np = t;
 }
 (void)free(nbuf);
 return (top);
}
