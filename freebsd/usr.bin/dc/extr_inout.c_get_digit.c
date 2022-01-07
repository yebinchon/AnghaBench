
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int u_int ;


 int asprintf (char**,char*,int,int) ;
 char* bmalloc (int) ;
 int err (int,int *) ;

__attribute__((used)) static char *
get_digit(u_long num, int digits, u_int base)
{
 char *p;

 if (base <= 16) {
  p = bmalloc(2);
  p[0] = num >= 10 ? num + 'A' - 10 : num + '0';
  p[1] = '\0';
 } else {
  if (asprintf(&p, "%0*lu", digits, num) == -1)
   err(1, ((void*)0));
 }
 return (p);
}
