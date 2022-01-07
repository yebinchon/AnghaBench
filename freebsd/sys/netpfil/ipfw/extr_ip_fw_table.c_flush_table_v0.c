
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct tid_info {int dummy; } ;
struct sockopt_data {int valsize; } ;
struct ip_fw_chain {int dummy; } ;
struct _ipfw_obj_header {int dummy; } ;
struct TYPE_3__ {scalar_t__ opcode; } ;
typedef TYPE_1__ ip_fw3_opheader ;


 int EINVAL ;
 int ENOTSUP ;
 scalar_t__ IP_FW_TABLE_XDESTROY ;
 scalar_t__ IP_FW_TABLE_XFLUSH ;
 int destroy_table (struct ip_fw_chain*,struct tid_info*) ;
 int flush_table (struct ip_fw_chain*,struct tid_info*) ;
 int objheader_to_ti (struct _ipfw_obj_header*,struct tid_info*) ;

__attribute__((used)) static int
flush_table_v0(struct ip_fw_chain *ch, ip_fw3_opheader *op3,
    struct sockopt_data *sd)
{
 int error;
 struct _ipfw_obj_header *oh;
 struct tid_info ti;

 if (sd->valsize != sizeof(*oh))
  return (EINVAL);

 oh = (struct _ipfw_obj_header *)op3;
 objheader_to_ti(oh, &ti);

 if (op3->opcode == IP_FW_TABLE_XDESTROY)
  error = destroy_table(ch, &ti);
 else if (op3->opcode == IP_FW_TABLE_XFLUSH)
  error = flush_table(ch, &ti);
 else
  return (ENOTSUP);

 return (error);
}
