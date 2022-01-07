
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int M_KENV ;
 scalar_t__ dynamic_kenv ;
 int explicit_bzero (char*,int ) ;
 int free (char*,int ) ;
 int strlen (char*) ;

void
freeenv(char *env)
{

 if (dynamic_kenv && env != ((void*)0)) {
  explicit_bzero(env, strlen(env));
  free(env, M_KENV);
 }
}
