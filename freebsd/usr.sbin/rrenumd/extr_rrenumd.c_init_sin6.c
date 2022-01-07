
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in6 {int sin6_len; int sin6_addr; int sin6_family; } ;


 int AF_INET6 ;
 int inet_pton (int ,char const*,int *) ;
 int memset (struct sockaddr_in6*,int ,int) ;

__attribute__((used)) static void
init_sin6(struct sockaddr_in6 *sin6, const char *addr_ascii)
{
 memset(sin6, 0, sizeof(*sin6));
 sin6->sin6_len = sizeof(*sin6);
 sin6->sin6_family = AF_INET6;
 if (inet_pton(AF_INET6, addr_ascii, &sin6->sin6_addr) != 1)
  ;
}
