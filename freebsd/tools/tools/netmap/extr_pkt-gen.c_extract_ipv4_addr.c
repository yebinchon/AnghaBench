
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef scalar_t__ uint16_t ;
struct in_addr {int s_addr; } ;


 int AF_INET ;
 int inet_pton (int ,char*,struct in_addr*) ;
 int ntohl (int ) ;
 char* strchr (char*,char) ;
 scalar_t__ strtol (char*,int *,int ) ;

__attribute__((used)) static void
extract_ipv4_addr(char *name, uint32_t *addr, uint16_t *port)
{
 struct in_addr a;
 char *pp;

 pp = strchr(name, ':');
 if (pp != ((void*)0)) {
  *pp++ = '\0';
  *port = (uint16_t)strtol(pp, ((void*)0), 0);
 }

 inet_pton(AF_INET, name, &a);
 *addr = ntohl(a.s_addr);
}
