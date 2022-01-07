
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* expand (char*) ;
 int printf (char*,...) ;

int
echo(char **argv)
{
 char **ap, *cp;

 for (ap = argv; *ap != ((void*)0); ap++) {
  cp = *ap;
  if ((cp = expand(cp)) != ((void*)0)) {
   if (ap != argv)
    printf(" ");
   printf("%s", cp);
  }
 }
 printf("\n");
 return (0);
}
