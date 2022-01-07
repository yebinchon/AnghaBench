
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct var {void* v_value; struct var* v_link; void* v_name; } ;


 struct var* calloc (int,int) ;
 int err (int,char*) ;
 int hash (char const*) ;
 struct var* lookup (char const*) ;
 struct var** variables ;
 void* vcopy (char const*) ;
 int vfree (void*) ;

void
assign(const char *name, const char *value)
{
 struct var *vp;
 int h;

 h = hash(name);
 vp = lookup(name);
 if (vp == ((void*)0)) {
  if ((vp = calloc(1, sizeof(*vp))) == ((void*)0))
   err(1, "Out of memory");
  vp->v_name = vcopy(name);
  vp->v_link = variables[h];
  variables[h] = vp;
 }
 else
  vfree(vp->v_value);
 vp->v_value = vcopy(value);
}
