
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sockopt_data {int valsize; } ;
struct ip_fw_chain {int dummy; } ;
struct TYPE_5__ {int new_set; } ;
struct TYPE_4__ {TYPE_2__ range; } ;
typedef TYPE_1__ ipfw_range_header ;
typedef int ip_fw3_opheader ;


 int EINVAL ;
 scalar_t__ check_range_tlv (TYPE_2__*) ;
 int delete_range (struct ip_fw_chain*,TYPE_2__*,int*) ;
 scalar_t__ ipfw_get_sopt_space (struct sockopt_data*,int) ;

__attribute__((used)) static int
del_rules(struct ip_fw_chain *chain, ip_fw3_opheader *op3,
    struct sockopt_data *sd)
{
 ipfw_range_header *rh;
 int error, ndel;

 if (sd->valsize != sizeof(*rh))
  return (EINVAL);

 rh = (ipfw_range_header *)ipfw_get_sopt_space(sd, sd->valsize);

 if (check_range_tlv(&rh->range) != 0)
  return (EINVAL);

 ndel = 0;
 if ((error = delete_range(chain, &rh->range, &ndel)) != 0)
  return (error);


 rh->range.new_set = ndel;
 return (0);
}
