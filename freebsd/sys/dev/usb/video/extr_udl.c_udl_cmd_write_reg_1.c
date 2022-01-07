
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct udl_cmd_buf {int dummy; } ;


 int UDL_BULK_CMD_REG_WRITE_1 ;
 int UDL_BULK_SOC ;
 int udl_cmd_insert_int_1 (struct udl_cmd_buf*,int ) ;

__attribute__((used)) static void
udl_cmd_write_reg_1(struct udl_cmd_buf *cb, uint8_t reg, uint8_t val)
{

 udl_cmd_insert_int_1(cb, UDL_BULK_SOC);
 udl_cmd_insert_int_1(cb, UDL_BULK_CMD_REG_WRITE_1);
 udl_cmd_insert_int_1(cb, reg);
 udl_cmd_insert_int_1(cb, val);
}
