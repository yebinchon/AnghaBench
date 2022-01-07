
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_addr {void* s_addr; } ;
struct hostent {scalar_t__ h_addrtype; int h_length; int h_addr; } ;


 scalar_t__ AF_INET ;
 void* INADDR_ANY ;
 void* INADDR_NONE ;
 struct hostent* gethostbyname (char const*) ;
 scalar_t__ inet_aton (char const*,struct in_addr*) ;
 int isalnum (char const) ;
 int memcpy (struct in_addr*,int ,int ) ;
 int strcasecmp (char const*,char*) ;
 int * strchr (char*,char const) ;

struct in_addr
GetIpAddr(const char *cp)
{
  struct in_addr ipaddr;

  if (!strcasecmp(cp, "default"))
    ipaddr.s_addr = INADDR_ANY;
  else if (inet_aton(cp, &ipaddr) == 0) {
    const char *ptr;


    for (ptr = cp; *ptr != '\0'; ptr++)
      if (!isalnum(*ptr) && strchr("-.", *ptr) == ((void*)0))
        break;

    if (*ptr == '\0') {
      struct hostent *hp;

      hp = gethostbyname(cp);
      if (hp && hp->h_addrtype == AF_INET)
        memcpy(&ipaddr, hp->h_addr, hp->h_length);
      else
        ipaddr.s_addr = INADDR_NONE;
    } else
      ipaddr.s_addr = INADDR_NONE;
  }

  return ipaddr;
}
