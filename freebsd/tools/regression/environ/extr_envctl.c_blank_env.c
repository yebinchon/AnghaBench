
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char** environ ;
 char** malloc (int) ;
 int strlen (char const*) ;
 scalar_t__ strncmp (char*,char const*,int) ;

__attribute__((used)) static void
blank_env(const char *var)
{
 char **newenviron;
 int n, varlen;

 if (environ == ((void*)0))
  return;

 for (n = 0; environ[n] != ((void*)0); n++)
  ;
 newenviron = malloc(sizeof(char *) * (n + 1));
 varlen = strlen(var);
 for (; n >= 0; n--) {
  newenviron[n] = environ[n];
  if (newenviron[n] != ((void*)0) &&
      strncmp(newenviron[n], var, varlen) == 0 &&
      newenviron[n][varlen] == '=')
   newenviron[n] += strlen(newenviron[n]);
 }
 environ = newenviron;
}
