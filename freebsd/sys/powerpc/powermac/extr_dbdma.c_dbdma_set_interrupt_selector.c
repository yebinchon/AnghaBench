
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int dbdma_channel_t ;


 int CHAN_INTR_SELECT ;
 int DBDMA_REG_MASK_SHIFT ;
 int dbdma_write_reg (int *,int ,int ) ;

void
dbdma_set_interrupt_selector(dbdma_channel_t *chan, uint8_t mask, uint8_t val)
{
 uint32_t intr_select;

 intr_select = mask;
 intr_select <<= DBDMA_REG_MASK_SHIFT;

 intr_select |= val;
 dbdma_write_reg(chan, CHAN_INTR_SELECT, intr_select);
}
