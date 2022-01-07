
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct table_info {int dummy; } ;
struct in6_addr {int dummy; } ;
struct TYPE_9__ {int a4; int a6; } ;
struct chashentry {scalar_t__ type; int value; TYPE_3__ a; } ;
struct chash_cfg {int mask4; int mask6; } ;
struct TYPE_10__ {int kidx; } ;
struct TYPE_7__ {int s_addr; } ;
struct TYPE_8__ {int addr6; TYPE_1__ addr; } ;
struct TYPE_11__ {int masklen; TYPE_4__ v; scalar_t__ subtype; TYPE_2__ k; } ;
typedef TYPE_5__ ipfw_obj_tentry ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 int htonl (int) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static int
ta_dump_chash_tentry(void *ta_state, struct table_info *ti, void *e,
    ipfw_obj_tentry *tent)
{
 struct chash_cfg *cfg;
 struct chashentry *ent;

 cfg = (struct chash_cfg *)ta_state;
 ent = (struct chashentry *)e;

 if (ent->type == AF_INET) {
  tent->k.addr.s_addr = htonl(ent->a.a4 << (32 - cfg->mask4));
  tent->masklen = cfg->mask4;
  tent->subtype = AF_INET;
  tent->v.kidx = ent->value;







 }

 return (0);
}
