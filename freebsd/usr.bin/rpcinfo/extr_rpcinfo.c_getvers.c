
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;


 int errx (int,char*,char*) ;
 scalar_t__ strtol (char*,char**,int) ;

__attribute__((used)) static u_long
getvers(char *arg)
{
 char *strptr;
 register u_long vers;

 vers = (int) strtol(arg, &strptr, 10);
 if (strptr == arg || *strptr != '\0')
  errx(1, "%s is illegal version number", arg);
 return (vers);
}
