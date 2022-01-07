
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tentry_info {int masklen; scalar_t__ subtype; scalar_t__ paddr; } ;
struct in6_addr {int dummy; } ;
struct TYPE_2__ {int a4; int a6; } ;
struct chashentry {TYPE_1__ a; scalar_t__ type; } ;
typedef int in_addr_t ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 int APPLY_MASK (int *,struct in6_addr*) ;
 int EINVAL ;
 int ipv6_writemask (struct in6_addr*,int) ;
 int memcpy (int *,scalar_t__,int) ;
 int ntohl (int ) ;

__attribute__((used)) static int
tei_to_chash_ent(struct tentry_info *tei, struct chashentry *ent)
{
 int mlen;





 mlen = tei->masklen;

 if (tei->subtype == AF_INET) {
 } else {

  return (EINVAL);
 }

 return (0);
}
