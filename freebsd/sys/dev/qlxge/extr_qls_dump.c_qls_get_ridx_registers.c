
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int qla_host_t ;


 int Q81_CTL_ROUTING_DATA ;
 int Q81_CTL_ROUTING_INDEX ;
 int READ_REG32 (int *,int ) ;
 int WRITE_REG32 (int *,int ,int) ;

__attribute__((used)) static void
qls_get_ridx_registers(qla_host_t *ha, uint32_t *buf)
{
 uint32_t type, idx, idx_max;
 uint32_t r_idx;
 uint32_t r_data;
 uint32_t val;

 for (type = 0; type < 4; type ++) {
  if (type < 2)
   idx_max = 8;
  else
   idx_max = 16;

  for (idx = 0; idx < idx_max; idx ++) {

   val = 0x04000000 | (type << 16) | (idx << 8);
   WRITE_REG32(ha, Q81_CTL_ROUTING_INDEX, val);

   r_idx = 0;
   while ((r_idx & 0x40000000) == 0)
    r_idx = READ_REG32(ha, Q81_CTL_ROUTING_INDEX);

   r_data = READ_REG32(ha, Q81_CTL_ROUTING_DATA);

   *buf = type;
   buf ++;
   *buf = idx;
   buf ++;
   *buf = r_idx;
   buf ++;
   *buf = r_data;
   buf ++;
  }
 }
}
