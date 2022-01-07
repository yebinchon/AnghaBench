
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int BUFSIZ ;
 int fclose (int *) ;
 scalar_t__ fgetNUL (char*,int,int *) ;
 int * fopen (int ,char*) ;
 int hashit (char*,int ) ;
 int ignore (int ) ;
 int mesgpt ;
 int strings ;
 int tellpt ;

__attribute__((used)) static void
inithash(void)
{
 char buf[BUFSIZ];
 FILE *mesgread = fopen(strings, "r");

 if (mesgread == ((void*)0))
  return;
 for (;;) {
  mesgpt = tellpt;
  if (fgetNUL(buf, sizeof buf, mesgread) == 0)
   break;
  ignore(hashit(buf, 0));
 }
 ignore(fclose(mesgread));
}
