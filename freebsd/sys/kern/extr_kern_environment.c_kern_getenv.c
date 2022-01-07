
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int KENV_MNAMELEN ;
 scalar_t__ KENV_MVALLEN ;
 int M_KENV ;
 int WARN_GIANTOK ;
 int WARN_SLEEPOK ;
 int WITNESS_WARN (int,int *,char*) ;
 char* _getenv_static (char const*) ;
 scalar_t__ dynamic_kenv ;
 scalar_t__ getenv_string (char const*,char*,int) ;
 char* strdup (char*,int ) ;

char *
kern_getenv(const char *name)
{
 char buf[KENV_MNAMELEN + 1 + KENV_MVALLEN + 1];
 char *ret;

 if (dynamic_kenv) {
  if (getenv_string(name, buf, sizeof(buf))) {
   ret = strdup(buf, M_KENV);
  } else {
   ret = ((void*)0);
   WITNESS_WARN(WARN_GIANTOK | WARN_SLEEPOK, ((void*)0),
       "getenv");
  }
 } else
  ret = _getenv_static(name);
 return (ret);
}
