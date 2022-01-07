
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tid_info {int dummy; } ;
struct sockopt_data {int valsize; } ;
struct ip_fw_chain {int dummy; } ;
struct _ipfw_obj_header {int ntlv; } ;
typedef int ipfw_obj_ntlv ;
typedef int ip_fw3_opheader ;


 int EINVAL ;
 int ntlv_to_ti (int *,struct tid_info*) ;
 int swap_tables (struct ip_fw_chain*,struct tid_info*,struct tid_info*) ;

__attribute__((used)) static int
swap_table(struct ip_fw_chain *ch, ip_fw3_opheader *op3,
    struct sockopt_data *sd)
{
 int error;
 struct _ipfw_obj_header *oh;
 struct tid_info ti_a, ti_b;

 if (sd->valsize != sizeof(*oh) + sizeof(ipfw_obj_ntlv))
  return (EINVAL);

 oh = (struct _ipfw_obj_header *)op3;
 ntlv_to_ti(&oh->ntlv, &ti_a);
 ntlv_to_ti((ipfw_obj_ntlv *)(oh + 1), &ti_b);

 error = swap_tables(ch, &ti_a, &ti_b);

 return (error);
}
