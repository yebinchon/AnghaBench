
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int* s6_addr32; } ;
struct sockaddr_in6 {TYPE_1__ sin6_addr; } ;
struct TYPE_4__ {int s_addr; } ;
struct sockaddr_in {TYPE_2__ sin_addr; } ;
struct sockaddr {int sa_family; } ;





uint32_t
sctp_get_ifa_hash_val(struct sockaddr *addr)
{
 switch (addr->sa_family) {
 default:
  break;
 }
 return (0);
}
