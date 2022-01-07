
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int kidx; } ;
struct TYPE_5__ {int flags; } ;
struct nat64stl_cfg {TYPE_4__ no; TYPE_1__ base; int map64; int map46; } ;
struct ip_fw_chain {int dummy; } ;
struct TYPE_6__ {int ntlv6; int ntlv4; } ;
typedef TYPE_2__ ipfw_nat64stl_cfg ;


 int CHAIN_TO_SRV (struct ip_fw_chain*) ;
 int EINVAL ;
 int ENOSPC ;
 int IPFW_UH_WLOCK_ASSERT (struct ip_fw_chain*) ;
 int NAT64STL_46T ;
 int NAT64STL_64T ;
 int NAT64STL_KIDX ;
 int ipfw_objhash_add (int ,TYPE_4__*) ;
 scalar_t__ ipfw_objhash_alloc_idx (int ,int *) ;
 scalar_t__ ipfw_ref_table (struct ip_fw_chain*,int *,int *) ;

__attribute__((used)) static int
nat64stl_create_internal(struct ip_fw_chain *ch, struct nat64stl_cfg *cfg,
    ipfw_nat64stl_cfg *i)
{

 IPFW_UH_WLOCK_ASSERT(ch);

 if (ipfw_objhash_alloc_idx(CHAIN_TO_SRV(ch), &cfg->no.kidx) != 0)
  return (ENOSPC);
 cfg->base.flags |= NAT64STL_KIDX;

 if (ipfw_ref_table(ch, &i->ntlv4, &cfg->map46) != 0)
  return (EINVAL);
 cfg->base.flags |= NAT64STL_46T;

 if (ipfw_ref_table(ch, &i->ntlv6, &cfg->map64) != 0)
  return (EINVAL);
 cfg->base.flags |= NAT64STL_64T;

 ipfw_objhash_add(CHAIN_TO_SRV(ch), &cfg->no);

 return (0);
}
