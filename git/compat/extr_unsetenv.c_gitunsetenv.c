
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t strlen (char const*) ;
 scalar_t__ strncmp (char*,char const*,size_t) ;

void gitunsetenv (const char *name)
{

     extern char **environ;

     int src, dst;
     size_t nmln;

     nmln = strlen(name);

     for (src = dst = 0; environ[src]; ++src) {
   size_t enln;
   enln = strlen(environ[src]);
   if (enln > nmln) {

        if (0 == strncmp (environ[src], name, nmln)
     && '=' == environ[src][nmln])

      continue;
   }
   environ[dst] = environ[src];
   ++dst;
     }
     environ[dst] = ((void*)0);
}
