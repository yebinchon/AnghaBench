
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {int ss_family; } ;
struct sockaddr_in6 {int sin6_family; int sin6_len; int sin6_addr; } ;
struct sockaddr_in {int sin_family; int sin_len; int sin_addr; } ;
struct ncpaddr {int ncpaddr_family; int ncpaddr_ip6addr; int ncpaddr_ip4addr; } ;




 int AF_UNSPEC ;
 int memset (struct sockaddr_storage*,char,int) ;

void
ncpaddr_getsa(const struct ncpaddr *addr, struct sockaddr_storage *host)
{
  struct sockaddr_in *host4 = (struct sockaddr_in *)host;

  struct sockaddr_in6 *host6 = (struct sockaddr_in6 *)host;


  memset(host, '\0', sizeof(*host));

  switch (addr->ncpaddr_family) {
  case 129:
    host4->sin_family = 129;
    host4->sin_len = sizeof(*host4);
    host4->sin_addr = addr->ncpaddr_ip4addr;
    break;


  case 128:
    host6->sin6_family = 128;
    host6->sin6_len = sizeof(*host6);
    host6->sin6_addr = addr->ncpaddr_ip6addr;
    break;


  default:
    host->ss_family = AF_UNSPEC;
    break;
  }
}
