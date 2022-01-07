
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct name {int n_type; struct name* n_flink; int n_name; } ;


 int GCOMMA ;
 int GMASK ;
 scalar_t__ debug ;
 int fprintf (int ,char*) ;
 char* salloc (int) ;
 int stderr ;
 int strlcpy (char*,int ,scalar_t__) ;
 scalar_t__ strlen (int ) ;

char *
detract(struct name *np, int ntype)
{
 int s, comma;
 char *cp, *top;
 struct name *p;

 comma = ntype & GCOMMA;
 if (np == ((void*)0))
  return (((void*)0));
 ntype &= ~GCOMMA;
 s = 0;
 if (debug && comma)
  fprintf(stderr, "detract asked to insert commas\n");
 for (p = np; p != ((void*)0); p = p->n_flink) {
  if (ntype && (p->n_type & GMASK) != ntype)
   continue;
  s += strlen(p->n_name) + 1;
  if (comma)
   s++;
 }
 if (s == 0)
  return (((void*)0));
 s += 2;
 top = salloc(s);
 cp = top;
 for (p = np; p != ((void*)0); p = p->n_flink) {
  if (ntype && (p->n_type & GMASK) != ntype)
   continue;
  cp += strlcpy(cp, p->n_name, strlen(p->n_name) + 1);
  if (comma && p->n_flink != ((void*)0))
   *cp++ = ',';
  *cp++ = ' ';
 }
 *--cp = '\0';
 if (comma && *--cp == ',')
  *cp = '\0';
 return (top);
}
