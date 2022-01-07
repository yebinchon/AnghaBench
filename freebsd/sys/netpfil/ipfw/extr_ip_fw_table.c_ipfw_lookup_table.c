
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct table_info {int (* lookup ) (struct table_info*,void*,int ,int *) ;} ;
struct ip_fw_chain {int dummy; } ;


 struct table_info* KIDX_TO_TI (struct ip_fw_chain*,int ) ;
 int stub1 (struct table_info*,void*,int ,int *) ;

int
ipfw_lookup_table(struct ip_fw_chain *ch, uint16_t tbl, uint16_t plen,
    void *paddr, uint32_t *val)
{
 struct table_info *ti;

 ti = KIDX_TO_TI(ch, tbl);

 return (ti->lookup(ti, paddr, plen, val));
}
