
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KENV_CHECK ;
 int KENV_MNAMELEN ;
 int KENV_MVALLEN ;
 int KENV_SIZE ;
 int M_KENV ;
 int M_WAITOK ;
 char* _getenv_dynamic (char const*,int*) ;
 int dynamic_kenv ;
 int free (char*,int ) ;
 int kenv_lock ;
 char** kenvp ;
 char* malloc (int,int ,int ) ;
 scalar_t__ md_env_len ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int setenv_static (char const*,char const*) ;
 int sprintf (char*,char*,char const*,char const*) ;
 int strlen (char const*) ;

int
kern_setenv(const char *name, const char *value)
{
 char *buf, *cp, *oldenv;
 int namelen, vallen, i;

 if (!dynamic_kenv && md_env_len > 0)
  return (setenv_static(name, value));

 KENV_CHECK;

 namelen = strlen(name) + 1;
 if (namelen > KENV_MNAMELEN + 1)
  return (-1);
 vallen = strlen(value) + 1;
 if (vallen > KENV_MVALLEN + 1)
  return (-1);
 buf = malloc(namelen + vallen, M_KENV, M_WAITOK);
 sprintf(buf, "%s=%s", name, value);

 mtx_lock(&kenv_lock);
 cp = _getenv_dynamic(name, &i);
 if (cp != ((void*)0)) {
  oldenv = kenvp[i];
  kenvp[i] = buf;
  mtx_unlock(&kenv_lock);
  free(oldenv, M_KENV);
 } else {

  for (i = 0; (cp = kenvp[i]) != ((void*)0); i++)
   ;


  if (i < 0 || i >= KENV_SIZE) {
   free(buf, M_KENV);
   mtx_unlock(&kenv_lock);
   return (-1);
  }

  kenvp[i] = buf;
  kenvp[i + 1] = ((void*)0);
  mtx_unlock(&kenv_lock);
 }
 return (0);
}
