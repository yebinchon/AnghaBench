
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockopt_data {scalar_t__ valsize; } ;
struct ip_fw_chain {int dummy; } ;
struct _ipfw_obj_lheader {scalar_t__ size; } ;
typedef int ip_fw3_opheader ;


 int EINVAL ;
 int IPFW_UH_RLOCK (struct ip_fw_chain*) ;
 int IPFW_UH_RUNLOCK (struct ip_fw_chain*) ;
 int export_tables (struct ip_fw_chain*,struct _ipfw_obj_lheader*,struct sockopt_data*) ;
 scalar_t__ ipfw_get_sopt_header (struct sockopt_data*,int) ;

__attribute__((used)) static int
list_tables(struct ip_fw_chain *ch, ip_fw3_opheader *op3,
    struct sockopt_data *sd)
{
 struct _ipfw_obj_lheader *olh;
 int error;

 olh = (struct _ipfw_obj_lheader *)ipfw_get_sopt_header(sd,sizeof(*olh));
 if (olh == ((void*)0))
  return (EINVAL);
 if (sd->valsize < olh->size)
  return (EINVAL);

 IPFW_UH_RLOCK(ch);
 error = export_tables(ch, olh, sd);
 IPFW_UH_RUNLOCK(ch);

 return (error);
}
