
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct udl_cmd_buf {int dummy; } ;


 int UDL_REG_ADDR_START16 ;
 int UDL_REG_ADDR_START8 ;
 int UDL_REG_ADDR_STRIDE16 ;
 int UDL_REG_ADDR_STRIDE8 ;
 int UDL_REG_SYNC ;
 int udl_cmd_write_reg_1 (struct udl_cmd_buf*,int ,int) ;
 int udl_cmd_write_reg_3 (struct udl_cmd_buf*,int ,int ) ;

__attribute__((used)) static void
udl_init_fb_offsets(struct udl_cmd_buf *cb, uint32_t start16, uint32_t stride16,
    uint32_t start8, uint32_t stride8)
{
 udl_cmd_write_reg_1(cb, UDL_REG_SYNC, 0x00);
 udl_cmd_write_reg_3(cb, UDL_REG_ADDR_START16, start16);
 udl_cmd_write_reg_3(cb, UDL_REG_ADDR_STRIDE16, stride16);
 udl_cmd_write_reg_3(cb, UDL_REG_ADDR_START8, start8);
 udl_cmd_write_reg_3(cb, UDL_REG_ADDR_STRIDE8, stride8);
 udl_cmd_write_reg_1(cb, UDL_REG_SYNC, 0xff);
}
