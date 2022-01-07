
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sockopt_data {int valsize; scalar_t__ kbuf; } ;
struct TYPE_6__ {int cnt; } ;
struct TYPE_7__ {TYPE_2__ stats; } ;
struct nat64lsn_cfg {TYPE_3__ base; } ;
struct ip_fw_chain {int dummy; } ;
struct TYPE_5__ {scalar_t__ set; int name; } ;
struct TYPE_8__ {TYPE_1__ ntlv; } ;
typedef TYPE_4__ ipfw_obj_header ;
typedef int ip_fw3_opheader ;


 int CHAIN_TO_SRV (struct ip_fw_chain*) ;
 int COUNTER_ARRAY_ZERO (int ,int ) ;
 int EINVAL ;
 int ENOENT ;
 scalar_t__ IPFW_MAX_SETS ;
 int IPFW_UH_WLOCK (struct ip_fw_chain*) ;
 int IPFW_UH_WUNLOCK (struct ip_fw_chain*) ;
 int NAT64STATS ;
 scalar_t__ ipfw_check_object_name_generic (int ) ;
 struct nat64lsn_cfg* nat64lsn_find (int ,int ,scalar_t__) ;

__attribute__((used)) static int
nat64lsn_reset_stats(struct ip_fw_chain *ch, ip_fw3_opheader *op,
    struct sockopt_data *sd)
{
 struct nat64lsn_cfg *cfg;
 ipfw_obj_header *oh;

 if (sd->valsize != sizeof(*oh))
  return (EINVAL);
 oh = (ipfw_obj_header *)sd->kbuf;
 if (ipfw_check_object_name_generic(oh->ntlv.name) != 0 ||
     oh->ntlv.set >= IPFW_MAX_SETS)
  return (EINVAL);

 IPFW_UH_WLOCK(ch);
 cfg = nat64lsn_find(CHAIN_TO_SRV(ch), oh->ntlv.name, oh->ntlv.set);
 if (cfg == ((void*)0)) {
  IPFW_UH_WUNLOCK(ch);
  return (ENOENT);
 }
 COUNTER_ARRAY_ZERO(cfg->base.stats.cnt, NAT64STATS);
 IPFW_UH_WUNLOCK(ch);
 return (0);
}
