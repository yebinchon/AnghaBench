
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct table_info {int dummy; } ;
struct TYPE_13__ {int sin6_addr; } ;
struct radix_addr_xentry {int value; int masklen; TYPE_5__ addr6; } ;
struct TYPE_10__ {int s_addr; } ;
struct TYPE_11__ {scalar_t__ sin_family; TYPE_2__ sin_addr; } ;
struct radix_addr_entry {int value; int masklen; TYPE_3__ addr; } ;
struct in6_addr {int dummy; } ;
struct TYPE_14__ {int kidx; } ;
struct TYPE_9__ {int s_addr; } ;
struct TYPE_12__ {int addr6; TYPE_1__ addr; } ;
struct TYPE_15__ {TYPE_6__ v; scalar_t__ subtype; int masklen; TYPE_4__ k; } ;
typedef TYPE_7__ ipfw_obj_tentry ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static int
ta_dump_radix_tentry(void *ta_state, struct table_info *ti, void *e,
    ipfw_obj_tentry *tent)
{
 struct radix_addr_entry *n;




 n = (struct radix_addr_entry *)e;


 if (n->addr.sin_family == AF_INET) {
  tent->k.addr.s_addr = n->addr.sin_addr.s_addr;
  tent->masklen = n->masklen;
  tent->subtype = AF_INET;
  tent->v.kidx = n->value;
 }

 return (0);
}
