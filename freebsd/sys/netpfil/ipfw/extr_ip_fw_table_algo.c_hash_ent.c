
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_2__ {int a6; int a4; } ;
struct chashentry {TYPE_1__ a; } ;


 int AF_INET ;
 scalar_t__ hash_ip (int ,scalar_t__) ;
 scalar_t__ hash_ip6 (int *,scalar_t__) ;
 scalar_t__ hash_ip64 (int *,scalar_t__) ;

__attribute__((used)) static uint32_t
hash_ent(struct chashentry *ent, int af, int mlen, uint32_t size)
{
 uint32_t hash;

 hash = 0;

 if (af == AF_INET) {



 } else {






 }

 return (hash);
}
