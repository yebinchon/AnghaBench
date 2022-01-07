
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct sockopt_data {int valsize; } ;
struct nat64stl_cfg {int dummy; } ;
struct TYPE_5__ {size_t length; int type; } ;
struct ipfw_nat64stl_stats {int count; int objsize; int version; TYPE_2__ head; } ;
struct ip_fw_chain {int dummy; } ;
typedef int stats ;
struct TYPE_4__ {int set; int name; } ;
struct TYPE_6__ {TYPE_1__ ntlv; } ;
typedef TYPE_3__ ipfw_obj_header ;
typedef struct ipfw_nat64stl_stats ipfw_obj_ctlv ;
typedef int ip_fw3_opheader ;


 int CHAIN_TO_SRV (struct ip_fw_chain*) ;
 int EINVAL ;
 int ENOMEM ;
 int ESRCH ;
 int IPFW_NAT64_VERSION ;
 int IPFW_TLV_COUNTERS ;
 int IPFW_UH_RLOCK (struct ip_fw_chain*) ;
 int IPFW_UH_RUNLOCK (struct ip_fw_chain*) ;
 int export_stats (struct ip_fw_chain*,struct nat64stl_cfg*,struct ipfw_nat64stl_stats*) ;
 scalar_t__ ipfw_get_sopt_header (struct sockopt_data*,size_t) ;
 int memcpy (struct ipfw_nat64stl_stats*,struct ipfw_nat64stl_stats*,int) ;
 int memset (struct ipfw_nat64stl_stats*,int ,int) ;
 struct nat64stl_cfg* nat64stl_find (int ,int ,int ) ;

__attribute__((used)) static int
nat64stl_stats(struct ip_fw_chain *ch, ip_fw3_opheader *op,
    struct sockopt_data *sd)
{
 struct ipfw_nat64stl_stats stats;
 struct nat64stl_cfg *cfg;
 ipfw_obj_header *oh;
 ipfw_obj_ctlv *ctlv;
 size_t sz;

 sz = sizeof(ipfw_obj_header) + sizeof(ipfw_obj_ctlv) + sizeof(stats);
 if (sd->valsize % sizeof(uint64_t))
  return (EINVAL);
 if (sd->valsize < sz)
  return (ENOMEM);
 oh = (ipfw_obj_header *)ipfw_get_sopt_header(sd, sz);
 if (oh == ((void*)0))
  return (EINVAL);
 memset(&stats, 0, sizeof(stats));

 IPFW_UH_RLOCK(ch);
 cfg = nat64stl_find(CHAIN_TO_SRV(ch), oh->ntlv.name, oh->ntlv.set);
 if (cfg == ((void*)0)) {
  IPFW_UH_RUNLOCK(ch);
  return (ESRCH);
 }
 export_stats(ch, cfg, &stats);
 IPFW_UH_RUNLOCK(ch);

 ctlv = (ipfw_obj_ctlv *)(oh + 1);
 memset(ctlv, 0, sizeof(*ctlv));
 ctlv->head.type = IPFW_TLV_COUNTERS;
 ctlv->head.length = sz - sizeof(ipfw_obj_header);
 ctlv->count = sizeof(stats) / sizeof(uint64_t);
 ctlv->objsize = sizeof(uint64_t);
 ctlv->version = IPFW_NAT64_VERSION;
 memcpy(ctlv + 1, &stats, sizeof(stats));
 return (0);
}
