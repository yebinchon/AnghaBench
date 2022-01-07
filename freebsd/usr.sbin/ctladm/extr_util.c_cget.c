
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct get_hook {size_t got; size_t argc; char** argv; } ;


 int exit (int) ;
 int fprintf (int ,char*) ;
 int printf (char*,char*,char*) ;
 int stderr ;
 int usage (int ) ;
 scalar_t__ verbose ;

char *
cget(void *hook, char *name)
{
 struct get_hook *h = (struct get_hook *)hook;
 char *arg;

 if (h->got >= h->argc)
 {
  fprintf(stderr, "Expecting a character pointer argument.\n");
  usage(0);
  exit(1);
 }
 arg = h->argv[h->got];
 h->got++;

 if (verbose && name)
  printf("cget: %s: %s", name, arg);

 return arg;
}
