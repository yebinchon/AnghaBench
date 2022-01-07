
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* _getenv_dynamic (char const*,int *) ;
 char* _getenv_static (char const*) ;
 scalar_t__ dynamic_kenv ;
 int kenv_lock ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int strlcpy (char*,char*,int) ;

int
getenv_string(const char *name, char *data, int size)
{
 char *cp;

 if (dynamic_kenv) {
  mtx_lock(&kenv_lock);
  cp = _getenv_dynamic(name, ((void*)0));
  if (cp != ((void*)0))
   strlcpy(data, cp, size);
  mtx_unlock(&kenv_lock);
 } else {
  cp = _getenv_static(name);
  if (cp != ((void*)0))
   strlcpy(data, cp, size);
 }
 return (cp != ((void*)0));
}
