
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockopt_data {int valsize; } ;
struct ip_fw_chain {int dummy; } ;
struct TYPE_2__ {int range; } ;
typedef TYPE_1__ ipfw_range_header ;
typedef int ip_fw3_opheader ;


 int EINVAL ;
 scalar_t__ check_range_tlv (int *) ;
 scalar_t__ ipfw_get_sopt_space (struct sockopt_data*,int) ;
 int move_range (struct ip_fw_chain*,int *) ;

__attribute__((used)) static int
move_rules(struct ip_fw_chain *chain, ip_fw3_opheader *op3,
    struct sockopt_data *sd)
{
 ipfw_range_header *rh;

 if (sd->valsize != sizeof(*rh))
  return (EINVAL);

 rh = (ipfw_range_header *)ipfw_get_sopt_space(sd, sd->valsize);

 if (check_range_tlv(&rh->range) != 0)
  return (EINVAL);

 return (move_range(chain, &rh->range));
}
