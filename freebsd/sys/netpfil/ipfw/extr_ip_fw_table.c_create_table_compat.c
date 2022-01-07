
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int xi ;
typedef int uint16_t ;
struct tid_info {int dummy; } ;
struct ip_fw_chain {int dummy; } ;
struct TYPE_4__ {int vmask; } ;
typedef TYPE_1__ ipfw_xtable_info ;


 int IPFW_VTYPE_LEGACY ;
 int create_table_internal (struct ip_fw_chain*,struct tid_info*,int *,TYPE_1__*,int *,int) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static int
create_table_compat(struct ip_fw_chain *ch, struct tid_info *ti,
    uint16_t *pkidx)
{
 ipfw_xtable_info xi;
 int error;

 memset(&xi, 0, sizeof(xi));

 xi.vmask = IPFW_VTYPE_LEGACY;

 error = create_table_internal(ch, ti, ((void*)0), &xi, pkidx, 1);
 if (error != 0)
  return (error);

 return (0);
}
