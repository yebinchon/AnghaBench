
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sockopt_data {int valsize; scalar_t__ kbuf; } ;
struct nptv6_cfg {int stats; } ;
struct ip_fw_chain {int dummy; } ;
struct TYPE_3__ {scalar_t__ set; int name; } ;
struct TYPE_4__ {TYPE_1__ ntlv; } ;
typedef TYPE_2__ ipfw_obj_header ;
typedef int ip_fw3_opheader ;


 int CHAIN_TO_SRV (struct ip_fw_chain*) ;
 int COUNTER_ARRAY_ZERO (int ,int ) ;
 int EINVAL ;
 int ESRCH ;
 scalar_t__ IPFW_MAX_SETS ;
 int IPFW_UH_WLOCK (struct ip_fw_chain*) ;
 int IPFW_UH_WUNLOCK (struct ip_fw_chain*) ;
 int NPTV6STATS ;
 scalar_t__ ipfw_check_object_name_generic (int ) ;
 struct nptv6_cfg* nptv6_find (int ,int ,scalar_t__) ;

__attribute__((used)) static int
nptv6_reset_stats(struct ip_fw_chain *ch, ip_fw3_opheader *op,
    struct sockopt_data *sd)
{
 struct nptv6_cfg *cfg;
 ipfw_obj_header *oh;

 if (sd->valsize != sizeof(*oh))
  return (EINVAL);
 oh = (ipfw_obj_header *)sd->kbuf;
 if (ipfw_check_object_name_generic(oh->ntlv.name) != 0 ||
     oh->ntlv.set >= IPFW_MAX_SETS)
  return (EINVAL);

 IPFW_UH_WLOCK(ch);
 cfg = nptv6_find(CHAIN_TO_SRV(ch), oh->ntlv.name, oh->ntlv.set);
 if (cfg == ((void*)0)) {
  IPFW_UH_WUNLOCK(ch);
  return (ESRCH);
 }
 COUNTER_ARRAY_ZERO(cfg->stats, NPTV6STATS);
 IPFW_UH_WUNLOCK(ch);
 return (0);
}
