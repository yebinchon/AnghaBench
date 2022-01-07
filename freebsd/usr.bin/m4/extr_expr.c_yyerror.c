
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* copy_toeval ;
 int fprintf (int ,char*,char const*,char*) ;
 int stderr ;

int
yyerror(const char *msg)
{
 fprintf(stderr, "m4: %s in expr %s\n", msg, copy_toeval);
 return(0);
}
