
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int dbdma_channel_t ;


 int CHAN_WAIT_SELECT ;
 int DBDMA_REG_MASK_SHIFT ;
 int dbdma_write_reg (int *,int ,int ) ;

void
dbdma_set_wait_selector(dbdma_channel_t *chan, uint8_t mask, uint8_t val)
{
 uint32_t wait_select;

 wait_select = mask;
 wait_select <<= DBDMA_REG_MASK_SHIFT;
 wait_select |= val;
 dbdma_write_reg(chan, CHAN_WAIT_SELECT, wait_select);
}
