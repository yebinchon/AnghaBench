
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int type; } ;
struct pf_rule_addr {TYPE_4__ addr; } ;
struct TYPE_8__ {int addr32; } ;
struct TYPE_7__ {int addr32; } ;
struct TYPE_9__ {TYPE_2__ mask; TYPE_1__ addr; } ;
struct TYPE_11__ {TYPE_3__ a; int tblname; int ifname; } ;
struct TYPE_12__ {TYPE_5__ v; int iflags; int type; } ;
typedef int MD5_CTX ;





 int PF_MD5_UPD (struct pf_rule_addr*,int ) ;
 TYPE_6__ addr ;
 int neg ;
 int * port ;
 int port_op ;

__attribute__((used)) static void
pf_hash_rule_addr(MD5_CTX *ctx, struct pf_rule_addr *pfr)
{
 PF_MD5_UPD(pfr, addr.type);
 switch (pfr->addr.type) {
  case 129:
   PF_MD5_UPD(pfr, addr.v.ifname);
   PF_MD5_UPD(pfr, addr.iflags);
   break;
  case 128:
   PF_MD5_UPD(pfr, addr.v.tblname);
   break;
  case 130:

   PF_MD5_UPD(pfr, addr.v.a.addr.addr32);
   PF_MD5_UPD(pfr, addr.v.a.mask.addr32);
   break;
 }

 PF_MD5_UPD(pfr, port[0]);
 PF_MD5_UPD(pfr, port[1]);
 PF_MD5_UPD(pfr, neg);
 PF_MD5_UPD(pfr, port_op);
}
