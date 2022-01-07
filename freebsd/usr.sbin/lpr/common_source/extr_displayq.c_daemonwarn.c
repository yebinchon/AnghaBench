
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct printer {scalar_t__ remote; } ;


 char* current ;
 char* local_host ;
 int printf (char*,char*) ;
 int puts (char*) ;

__attribute__((used)) static void
daemonwarn(const struct printer *pp)
{
 if (pp->remote)
  printf("%s: ", local_host);
 puts("Warning: no daemon present");
 current[0] = '\0';
}
