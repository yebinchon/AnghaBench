
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct var {char* v_value; } ;


 char* getenv (char const*) ;
 struct var* lookup (char const*) ;

char *
value(const char *name)
{
 struct var *vp;

 if ((vp = lookup(name)) == ((void*)0))
  return (getenv(name));
 return (vp->v_value);
}
