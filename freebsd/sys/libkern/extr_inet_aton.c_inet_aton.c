
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct in_addr {int s_addr; } ;
typedef int in_addr_t ;


 unsigned long ULONG_MAX ;
 int htonl (int) ;
 int isspace (unsigned char) ;
 unsigned long strtoul (char const*,char**,int ) ;

int
inet_aton(const char *cp, struct in_addr *addr)
{
 u_long parts[4];
 in_addr_t val;
 const char *c;
 char *endptr;
 int gotend, n;

 c = (const char *)cp;
 n = 0;





 gotend = 0;
 while (!gotend) {
  unsigned long l;

  l = strtoul(c, &endptr, 0);

  if (l == ULONG_MAX || (l == 0 && endptr == c))
   return (0);

  val = (in_addr_t)l;







  if (endptr == c)
   return (0);
  parts[n] = val;
  c = endptr;


  switch (*c) {
  case '.' :


   if (n == 3)
    return (0);
   n++;
   c++;
   break;

  case '\0':
   gotend = 1;
   break;

  default:
   if (isspace((unsigned char)*c)) {
    gotend = 1;
    break;
   } else {


    return (0);
   }
  }

 }


 switch (n) {
 case 0:





  break;
 case 1:
  if (val > 0xffffff || parts[0] > 0xff)
   return (0);
  val |= parts[0] << 24;
  break;

 case 2:
  if (val > 0xffff || parts[0] > 0xff || parts[1] > 0xff)
   return (0);
  val |= (parts[0] << 24) | (parts[1] << 16);
  break;

 case 3:
  if (val > 0xff || parts[0] > 0xff || parts[1] > 0xff ||
      parts[2] > 0xff)
   return (0);
  val |= (parts[0] << 24) | (parts[1] << 16) | (parts[2] << 8);
  break;
 }

 if (addr != ((void*)0))
  addr->s_addr = htonl(val);
 return (1);
}
