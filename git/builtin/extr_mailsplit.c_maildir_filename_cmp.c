
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isdigit (char const) ;
 long strtol (char const*,char**,int) ;

__attribute__((used)) static int maildir_filename_cmp(const char *a, const char *b)
{
 while (*a && *b) {
  if (isdigit(*a) && isdigit(*b)) {
   long int na, nb;
   na = strtol(a, (char **)&a, 10);
   nb = strtol(b, (char **)&b, 10);
   if (na != nb)
    return na - nb;

  }
  else {
   if (*a != *b)
    return (unsigned char)*a - (unsigned char)*b;
   a++;
   b++;
  }
 }
 return (unsigned char)*a - (unsigned char)*b;
}
