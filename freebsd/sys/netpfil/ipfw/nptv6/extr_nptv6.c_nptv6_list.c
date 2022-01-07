
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockopt_data {int valsize; } ;
struct nptv6_dump_arg {struct sockopt_data* sd; struct ip_fw_chain* ch; } ;
struct ip_fw_chain {int dummy; } ;
struct TYPE_2__ {int count; int objsize; int size; } ;
typedef TYPE_1__ ipfw_obj_lheader ;
typedef int ipfw_nptv6_cfg ;
typedef int ip_fw3_opheader ;
typedef int da ;


 int CHAIN_TO_SRV (struct ip_fw_chain*) ;
 int EINVAL ;
 int ENOMEM ;
 int IPFW_TLV_NPTV6_NAME ;
 int IPFW_UH_RLOCK (struct ip_fw_chain*) ;
 int IPFW_UH_RUNLOCK (struct ip_fw_chain*) ;
 int export_config_cb ;
 scalar_t__ ipfw_get_sopt_header (struct sockopt_data*,int) ;
 int ipfw_objhash_count_type (int ,int ) ;
 int ipfw_objhash_foreach_type (int ,int ,struct nptv6_dump_arg*,int ) ;
 int memset (struct nptv6_dump_arg*,int ,int) ;

__attribute__((used)) static int
nptv6_list(struct ip_fw_chain *ch, ip_fw3_opheader *op3,
    struct sockopt_data *sd)
{
 ipfw_obj_lheader *olh;
 struct nptv6_dump_arg da;


 if (sd->valsize < sizeof(ipfw_obj_lheader))
  return (EINVAL);

 olh = (ipfw_obj_lheader *)ipfw_get_sopt_header(sd, sizeof(*olh));

 IPFW_UH_RLOCK(ch);
 olh->count = ipfw_objhash_count_type(CHAIN_TO_SRV(ch),
     IPFW_TLV_NPTV6_NAME);
 olh->objsize = sizeof(ipfw_nptv6_cfg);
 olh->size = sizeof(*olh) + olh->count * olh->objsize;

 if (sd->valsize < olh->size) {
  IPFW_UH_RUNLOCK(ch);
  return (ENOMEM);
 }
 memset(&da, 0, sizeof(da));
 da.ch = ch;
 da.sd = sd;
 ipfw_objhash_foreach_type(CHAIN_TO_SRV(ch), export_config_cb,
     &da, IPFW_TLV_NPTV6_NAME);
 IPFW_UH_RUNLOCK(ch);

 return (0);
}
