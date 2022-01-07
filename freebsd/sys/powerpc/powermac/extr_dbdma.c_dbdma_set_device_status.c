
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int dbdma_channel_t ;


 int CHAN_CONTROL_REG ;
 int DBDMA_REG_MASK_SHIFT ;
 int dbdma_write_reg (int *,int ,int ) ;

void
dbdma_set_device_status(dbdma_channel_t *chan, uint8_t mask, uint8_t value)
{
 uint32_t control_reg;

 control_reg = mask;
 control_reg <<= DBDMA_REG_MASK_SHIFT;
 control_reg |= value;

 dbdma_write_reg(chan, CHAN_CONTROL_REG, control_reg);
}
