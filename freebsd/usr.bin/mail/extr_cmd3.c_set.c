
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int varbuf ;
struct var {int v_name; struct var* v_link; } ;


 int BUFSIZ ;
 int HSHSIZE ;
 int assign (char*,char*) ;
 scalar_t__ equal (char*,char*) ;
 int printf (char*,...) ;
 scalar_t__ salloc (int) ;
 int sort (char**) ;
 char* value (char*) ;
 struct var** variables ;

int
set(void *v)
{
 char **arglist = v;
 struct var *vp;
 char *cp, *cp2;
 char varbuf[BUFSIZ], **ap, **p;
 int errs, h, s;

 if (*arglist == ((void*)0)) {
  for (h = 0, s = 1; h < HSHSIZE; h++)
   for (vp = variables[h]; vp != ((void*)0); vp = vp->v_link)
    s++;
  ap = (char **)salloc(s * sizeof(*ap));
  for (h = 0, p = ap; h < HSHSIZE; h++)
   for (vp = variables[h]; vp != ((void*)0); vp = vp->v_link)
    *p++ = vp->v_name;
  *p = ((void*)0);
  sort(ap);
  for (p = ap; *p != ((void*)0); p++)
   printf("%s\t%s\n", *p, value(*p));
  return (0);
 }
 errs = 0;
 for (ap = arglist; *ap != ((void*)0); ap++) {
  cp = *ap;
  cp2 = varbuf;
  while (cp2 < varbuf + sizeof(varbuf) - 1 && *cp != '=' && *cp != '\0')
   *cp2++ = *cp++;
  *cp2 = '\0';
  if (*cp == '\0')
   cp = "";
  else
   cp++;
  if (equal(varbuf, "")) {
   printf("Non-null variable name required\n");
   errs++;
   continue;
  }
  assign(varbuf, cp);
 }
 return (errs);
}
