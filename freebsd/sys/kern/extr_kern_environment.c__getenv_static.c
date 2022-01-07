
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* _getenv_static_from (int ,char const*) ;
 int kern_envp ;
 int md_envp ;

__attribute__((used)) static char *
_getenv_static(const char *name)
{
 char *val;

 val = _getenv_static_from(md_envp, name);
 if (val != ((void*)0))
  return (val);
 val = _getenv_static_from(kern_envp, name);
 if (val != ((void*)0))
  return (val);
 return (((void*)0));
}
