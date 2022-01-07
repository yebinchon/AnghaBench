
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {void* ss_family; } ;
struct sockaddr_in6 {int sin6_family; int sin6_len; int sin6_addr; } ;
struct sockaddr_in {int sin_family; int sin_len; int sin_addr; } ;
struct ncprange {int ncprange_family; int ncprange_ip6width; int ncprange_ip6addr; int ncprange_ip4mask; int ncprange_ip4addr; } ;




 void* AF_UNSPEC ;
 int bits2mask6 (int ) ;
 int memset (struct sockaddr_storage*,char,int) ;

void
ncprange_getsa(const struct ncprange *range, struct sockaddr_storage *host,
               struct sockaddr_storage *mask)
{
  struct sockaddr_in *host4 = (struct sockaddr_in *)host;
  struct sockaddr_in *mask4 = (struct sockaddr_in *)mask;

  struct sockaddr_in6 *host6 = (struct sockaddr_in6 *)host;
  struct sockaddr_in6 *mask6 = (struct sockaddr_in6 *)mask;


  memset(host, '\0', sizeof(*host));
  if (mask)
    memset(mask, '\0', sizeof(*mask));

  switch (range->ncprange_family) {
  case 129:
    host4->sin_family = 129;
    host4->sin_len = sizeof(*host4);
    host4->sin_addr = range->ncprange_ip4addr;
    if (mask4) {
      mask4->sin_family = 129;
      mask4->sin_len = sizeof(*host4);
      mask4->sin_addr = range->ncprange_ip4mask;
    }
    break;


  case 128:
    host6->sin6_family = 128;
    host6->sin6_len = sizeof(*host6);
    host6->sin6_addr = range->ncprange_ip6addr;
    if (mask6) {
      mask6->sin6_family = 128;
      mask6->sin6_len = sizeof(*host6);
      mask6->sin6_addr = bits2mask6(range->ncprange_ip6width);
    }
    break;


  default:
    host->ss_family = AF_UNSPEC;
    if (mask)
      mask->ss_family = AF_UNSPEC;
    break;
  }
}
