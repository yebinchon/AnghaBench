
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
typedef int qla_host_t ;


 int Q8_FW_IMAGE_ADDR ;
 scalar_t__ READ_REG32 (int *,int ) ;
 scalar_t__ ql83xx_firmware ;
 int ql83xx_firmware_len ;
 int qla_load_offchip_mem (int *,scalar_t__,int*,int) ;

__attribute__((used)) static int
qla_load_fwimage(qla_host_t *ha)
{
        uint64_t addr;
        uint32_t *data32;
        uint32_t len32;
        int ret;

        addr = (uint64_t)(READ_REG32(ha, Q8_FW_IMAGE_ADDR));
        data32 = (uint32_t *)ql83xx_firmware;
        len32 = ql83xx_firmware_len >> 2;

        ret = qla_load_offchip_mem(ha, addr, data32, len32);

        return (ret);
}
