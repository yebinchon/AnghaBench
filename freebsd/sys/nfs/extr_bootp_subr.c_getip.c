
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_addr {int s_addr; } ;


 int getdec (char**) ;
 int htonl (unsigned int) ;

__attribute__((used)) static int
getip(char **ptr, struct in_addr *addr)
{
 char *p;
 unsigned int ip;
 int val;

 p = *ptr;
 ip = 0;
 if (((val = getdec(&p)) < 0) || (val > 255))
  return 0;
 ip = val << 24;
 if (*p != '.')
  return 0;
 p++;
 if (((val = getdec(&p)) < 0) || (val > 255))
  return 0;
 ip |= (val << 16);
 if (*p != '.')
  return 0;
 p++;
 if (((val = getdec(&p)) < 0) || (val > 255))
  return 0;
 ip |= (val << 8);
 if (*p != '.')
  return 0;
 p++;
 if (((val = getdec(&p)) < 0) || (val > 255))
  return 0;
 ip |= val;

 addr->s_addr = htonl(ip);
 *ptr = p;
 return 1;
}
