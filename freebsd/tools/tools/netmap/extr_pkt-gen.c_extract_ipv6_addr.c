
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint16_t ;
struct in6_addr {int dummy; } ;


 int AF_INET6 ;
 int inet_pton (int ,char*,struct in6_addr*) ;
 char* strchr (char*,char) ;
 scalar_t__ strtol (char*,int *,int ) ;

__attribute__((used)) static void
extract_ipv6_addr(char *name, struct in6_addr *addr, uint16_t *port,
    uint8_t *group)
{
 char *pp;







 pp = strchr(name, '@');
 if (pp != ((void*)0)) {
  *pp++ = '\0';
  *group = (uint8_t)strtol(name, ((void*)0), 0);
  if (*group > 7)
   *group = 7;
  name = pp;
 }
 if (name[0] == '[')
  name++;
 pp = strchr(name, ']');
 if (pp != ((void*)0))
  *pp++ = '\0';
 if (pp != ((void*)0) && *pp != ':')
  pp = ((void*)0);
 if (pp != ((void*)0)) {
  *pp++ = '\0';
  *port = (uint16_t)strtol(pp, ((void*)0), 0);
 }
 inet_pton(AF_INET6, name, addr);
}
