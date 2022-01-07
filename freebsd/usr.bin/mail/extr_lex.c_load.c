
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int Fclose (int *) ;
 int * Fopen (char*,char*) ;
 int commands () ;
 int * input ;
 int loading ;
 int sourcing ;

void
load(char *name)
{
 FILE *in, *oldin;

 if ((in = Fopen(name, "r")) == ((void*)0))
  return;
 oldin = input;
 input = in;
 loading = 1;
 sourcing = 1;
 commands();
 loading = 0;
 sourcing = 0;
 input = oldin;
 (void)Fclose(in);
}
