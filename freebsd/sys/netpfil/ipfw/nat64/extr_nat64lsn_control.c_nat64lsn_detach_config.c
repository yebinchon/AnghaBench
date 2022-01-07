
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int kidx; } ;
struct nat64lsn_cfg {TYPE_1__ no; } ;
struct ip_fw_chain {int dummy; } ;


 int CHAIN_TO_SRV (struct ip_fw_chain*) ;
 int IPFW_UH_WLOCK_ASSERT (struct ip_fw_chain*) ;
 int ipfw_objhash_del (int ,TYPE_1__*) ;
 int ipfw_objhash_free_idx (int ,int ) ;

__attribute__((used)) static void
nat64lsn_detach_config(struct ip_fw_chain *ch, struct nat64lsn_cfg *cfg)
{

 IPFW_UH_WLOCK_ASSERT(ch);

 ipfw_objhash_del(CHAIN_TO_SRV(ch), &cfg->no);
 ipfw_objhash_free_idx(CHAIN_TO_SRV(ch), cfg->no.kidx);
}
