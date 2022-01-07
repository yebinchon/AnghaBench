
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct var {int v_value; int v_name; struct var* v_link; } ;


 int free (struct var*) ;
 scalar_t__ getenv (char*) ;
 int hash (char*) ;
 struct var* lookup (char*) ;
 int printf (char*,char*) ;
 int sourcing ;
 int unsetenv (char*) ;
 struct var** variables ;
 int vfree (int ) ;

int
unset(void *v)
{
 char **arglist = v;
 struct var *vp, *vp2;
 int errs, h;
 char **ap;

 errs = 0;
 for (ap = arglist; *ap != ((void*)0); ap++) {
  if ((vp2 = lookup(*ap)) == ((void*)0)) {
   if (getenv(*ap))
    unsetenv(*ap);
   else if (!sourcing) {
    printf("\"%s\": undefined variable\n", *ap);
    errs++;
   }
   continue;
  }
  h = hash(*ap);
  if (vp2 == variables[h]) {
   variables[h] = variables[h]->v_link;
   vfree(vp2->v_name);
   vfree(vp2->v_value);
   (void)free(vp2);
   continue;
  }
  for (vp = variables[h]; vp->v_link != vp2; vp = vp->v_link)
   ;
  vp->v_link = vp2->v_link;
  vfree(vp2->v_name);
  vfree(vp2->v_value);
  (void)free(vp2);
 }
 return (errs);
}
