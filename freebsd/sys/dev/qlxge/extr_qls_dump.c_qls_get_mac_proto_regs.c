
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int qla_host_t ;


 int Q81_CTL_MAC_PROTO_ADDR_DATA ;
 int Q81_CTL_MAC_PROTO_ADDR_INDEX ;
 int Q81_NUM_TYPES ;
 int Q81_RS_AND_ADR ;
 int Q81_RS_ONLY ;
 int READ_REG32 (int *,int ) ;
 int WRITE_REG32 (int *,int ,int) ;
 int printf (char*,int) ;

__attribute__((used)) static void
qls_get_mac_proto_regs(qla_host_t *ha, uint32_t* buf)
{





 uint32_t result_index, result_data;
 uint32_t type;
 uint32_t index;
 uint32_t offset;
 uint32_t val;
 uint32_t initial_val;
 uint32_t max_index;
 uint32_t max_offset;

 for (type = 0; type < 10; type ++) {
  switch (type) {

  case 0:
   initial_val = 0x06000000;
   max_index = 512;
   max_offset = 3;
   break;

  case 1:
   initial_val = 0x04000000;
   max_index = 32;
   max_offset = 2;
   break;

  case 2:
  case 3:
   initial_val = 0x04000000;
   max_index = 4096;
   max_offset = 1;
   break;

  case 4:
   initial_val = 0x04000000;
   max_index = 4;
   max_offset = 2;
   break;

  case 5:
   initial_val = 0x04000000;
   max_index = 8;
   max_offset = 2;
   break;

  case 6:
   initial_val = 0x04000000;
   max_index = 16;
   max_offset = 1;
   break;

  case 7:
   initial_val = 0x04000000;
   max_index = 4;
   max_offset = 1;
   break;

  case 8:
   initial_val = 0x04000000;
   max_index = 4;
   max_offset = 4;
   break;

  case 9:
   initial_val = 0x04000000;
   max_index = 4;
   max_offset = 1;
   break;

  default:
   printf("Bad type!!! 0x%08x\n", type);
   max_index = 0;
   max_offset = 0;
   break;
  }

  for (index = 0; index < max_index; index ++) {

   for (offset = 0; offset < max_offset; offset ++) {

    val = initial_val | (type << 16) |
     (index << 4) | (offset);

    WRITE_REG32(ha, Q81_CTL_MAC_PROTO_ADDR_INDEX, val);


    result_index = 0;

    while ((result_index & 0x40000000) == 0)
     result_index =
      READ_REG32(ha, Q81_CTL_MAC_PROTO_ADDR_INDEX);


    result_data = READ_REG32(ha, Q81_CTL_MAC_PROTO_ADDR_DATA);


    *buf = result_index;
    buf ++;

    *buf = result_data;
    buf ++;
   }
  }
 }
}
