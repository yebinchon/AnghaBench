
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 char* filename ;
 int fprintf (int ,char*,char*,int,char const*) ;
 int lineno ;
 int stderr ;

void
yyerror(const char *msg)
{
 (void) fprintf(stderr, "%s: %d: error: %s\n",
     filename, lineno, msg);
 exit(4);
}
