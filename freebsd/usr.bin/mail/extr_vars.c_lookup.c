
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct var {char const* v_name; struct var* v_link; } ;


 scalar_t__ equal (char const*,char const*) ;
 size_t hash (char const*) ;
 struct var** variables ;

struct var *
lookup(const char *name)
{
 struct var *vp;

 for (vp = variables[hash(name)]; vp != ((void*)0); vp = vp->v_link)
  if (*vp->v_name == *name && equal(vp->v_name, name))
   return (vp);
 return (((void*)0));
}
