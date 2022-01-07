
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int adapter_t ;


 int EINVAL ;
 int F_CQ ;
 int t3_sge_read_context (int ,int *,unsigned int,int *) ;

int t3_sge_read_cq(adapter_t *adapter, unsigned int id, u32 data[4])
{
 if (id >= 65536)
  return -EINVAL;
 return t3_sge_read_context(F_CQ, adapter, id, data);
}
