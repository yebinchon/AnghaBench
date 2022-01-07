
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int tbl; TYPE_3__* dyn; } ;
struct TYPE_5__ {int mask; int addr; } ;
struct TYPE_6__ {TYPE_1__ a; } ;
struct pf_addr_wrap {int type; TYPE_4__ p; TYPE_2__ v; } ;
struct TYPE_7__ {int pfid_kt; } ;


 int AF_INET6 ;






 int PF_ANEQ (int *,int *,int ) ;
 int printf (char*,int) ;

__attribute__((used)) static int
pf_addr_wrap_neq(struct pf_addr_wrap *aw1, struct pf_addr_wrap *aw2)
{
 if (aw1->type != aw2->type)
  return (1);
 switch (aw1->type) {
 case 133:
 case 130:
  if (PF_ANEQ(&aw1->v.a.addr, &aw2->v.a.addr, AF_INET6))
   return (1);
  if (PF_ANEQ(&aw1->v.a.mask, &aw2->v.a.mask, AF_INET6))
   return (1);
  return (0);
 case 132:
  return (aw1->p.dyn->pfid_kt != aw2->p.dyn->pfid_kt);
 case 131:
 case 128:
  return (0);
 case 129:
  return (aw1->p.tbl != aw2->p.tbl);
 default:
  printf("invalid address type: %d\n", aw1->type);
  return (1);
 }
}
