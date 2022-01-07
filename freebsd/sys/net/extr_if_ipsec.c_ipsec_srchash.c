
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint32_t ;
struct sockaddr_in6 {int sin6_addr; } ;
struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; } ;
struct sockaddr {int sa_family; } ;
struct ipsec_iflist {int dummy; } ;
struct in6_addr {int dummy; } ;
typedef int in_addr_t ;




 int FNV1_32_INIT ;
 int IPSEC_HASH_SIZE ;
 struct ipsec_iflist* V_ipsec4_srchtbl ;
 struct ipsec_iflist* V_ipsec6_srchtbl ;
 size_t fnv_32_buf (int *,int,int ) ;

__attribute__((used)) static struct ipsec_iflist *
ipsec_srchash(const struct sockaddr *sa)
{
 uint32_t hval;

 switch (sa->sa_family) {
 }
 return (((void*)0));
}
