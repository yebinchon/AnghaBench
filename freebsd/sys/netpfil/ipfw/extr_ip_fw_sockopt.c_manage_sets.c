
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct sockopt_data {int valsize; } ;
struct ip_fw_chain {int dummy; } ;
typedef int ipfw_range_tlv ;
struct TYPE_7__ {int length; } ;
struct TYPE_10__ {scalar_t__ set; scalar_t__ new_set; TYPE_1__ head; } ;
struct TYPE_8__ {TYPE_4__ range; } ;
typedef TYPE_2__ ipfw_range_header ;
struct TYPE_9__ {int opcode; } ;
typedef TYPE_3__ ip_fw3_opheader ;


 int EINVAL ;
 scalar_t__ IPFW_MAX_SETS ;
 int IPFW_UH_WLOCK (struct ip_fw_chain*) ;
 int IPFW_UH_WUNLOCK (struct ip_fw_chain*) ;



 int enable_sets (struct ip_fw_chain*,TYPE_4__*) ;
 scalar_t__ ipfw_get_sopt_space (struct sockopt_data*,int) ;
 int swap_sets (struct ip_fw_chain*,TYPE_4__*,int) ;

__attribute__((used)) static int
manage_sets(struct ip_fw_chain *chain, ip_fw3_opheader *op3,
    struct sockopt_data *sd)
{
 ipfw_range_header *rh;
 int ret;

 if (sd->valsize != sizeof(*rh))
  return (EINVAL);

 rh = (ipfw_range_header *)ipfw_get_sopt_space(sd, sd->valsize);

 if (rh->range.head.length != sizeof(ipfw_range_tlv))
  return (1);

 if (op3->opcode != 130 &&
     (rh->range.set >= IPFW_MAX_SETS ||
     rh->range.new_set >= IPFW_MAX_SETS))
  return (EINVAL);

 ret = 0;
 IPFW_UH_WLOCK(chain);
 switch (op3->opcode) {
 case 128:
 case 129:
  ret = swap_sets(chain, &rh->range,
      op3->opcode == 129);
  break;
 case 130:
  enable_sets(chain, &rh->range);
  break;
 }
 IPFW_UH_WUNLOCK(chain);

 return (ret);
}
