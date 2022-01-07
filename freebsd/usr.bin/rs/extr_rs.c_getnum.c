
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atoi (char*) ;
 int errx (int,char*,char*) ;
 int isdigit (unsigned char) ;

__attribute__((used)) static char *
getnum(int *num, char *p, int strict)
{
 char *t = p;

 if (!isdigit((unsigned char)*++t)) {
  if (strict || *t == '-' || *t == '+')
   errx(1, "option %.1s requires an unsigned integer", p);
  *num = 0;
  return(p);
 }
 *num = atoi(t);
 while (*++t)
  if (!isdigit((unsigned char)*t))
   break;
 return(--t);
}
