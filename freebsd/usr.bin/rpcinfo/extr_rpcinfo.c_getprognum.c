
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct rpcent {int r_number; } ;


 int errx (int,char*,char*) ;
 struct rpcent* getrpcbyname (char*) ;
 scalar_t__ isalpha (char) ;
 scalar_t__ isdigit (int ) ;
 int strtol (char*,char**,int) ;

__attribute__((used)) static u_long
getprognum (char *arg)
{
 char *strptr;
 register struct rpcent *rpc;
 register u_long prognum;
 char *tptr = arg;

 while (*tptr && isdigit(*tptr++));
 if (*tptr || isalpha(*(tptr - 1))) {
  rpc = getrpcbyname(arg);
  if (rpc == ((void*)0))
   errx(1, "%s is unknown service", arg);
  prognum = rpc->r_number;
 } else {
  prognum = strtol(arg, &strptr, 10);
  if (strptr == arg || *strptr != '\0')
   errx(1, "%s is illegal program number", arg);
 }
 return (prognum);
}
