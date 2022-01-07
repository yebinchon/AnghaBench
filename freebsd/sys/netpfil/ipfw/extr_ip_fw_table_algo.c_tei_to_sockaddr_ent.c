
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tentry_info {int masklen; scalar_t__ subtype; scalar_t__ paddr; } ;
struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {int sin6_addr; scalar_t__ sin6_family; TYPE_1__ sin_addr; scalar_t__ sin_family; } ;
struct sockaddr {int dummy; } ;
struct sa_in6 {int sin6_addr; scalar_t__ sin6_family; TYPE_1__ sin_addr; scalar_t__ sin_family; } ;
struct in6_addr {int dummy; } ;
typedef int in_addr_t ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 int APPLY_MASK (int *,int *) ;
 int KEY_LEN (struct sockaddr_in) ;
 int KEY_LEN_INET ;
 int KEY_LEN_INET6 ;
 int htonl (int) ;
 int ipv6_writemask (int *,int) ;
 int memcpy (int *,scalar_t__,int) ;

__attribute__((used)) static void
tei_to_sockaddr_ent(struct tentry_info *tei, struct sockaddr *sa,
    struct sockaddr *ma, int *set_mask)
{
 int mlen;






 in_addr_t a4;

 mlen = tei->masklen;

 if (tei->subtype == AF_INET) {
 }
}
