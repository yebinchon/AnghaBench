
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KENV_CHECK ;
 int M_KENV ;
 char* _getenv_dynamic (char const*,int*) ;
 int explicit_bzero (char*,int ) ;
 int free (char*,int ) ;
 int kenv_lock ;
 char** kenvp ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int strlen (char*) ;

int
kern_unsetenv(const char *name)
{
 char *cp, *oldenv;
 int i, j;

 KENV_CHECK;

 mtx_lock(&kenv_lock);
 cp = _getenv_dynamic(name, &i);
 if (cp != ((void*)0)) {
  oldenv = kenvp[i];
  for (j = i + 1; kenvp[j] != ((void*)0); j++)
   kenvp[i++] = kenvp[j];
  kenvp[i] = ((void*)0);
  mtx_unlock(&kenv_lock);
  explicit_bzero(oldenv, strlen(oldenv));
  free(oldenv, M_KENV);
  return (0);
 }
 mtx_unlock(&kenv_lock);
 return (-1);
}
