
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int dbdma_channel_t ;


 int CHAN_CONTROL_REG ;
 int CHAN_STATUS_REG ;
 int DBDMA_REG_MASK_SHIFT ;
 int DBDMA_STATUS_ACTIVE ;
 int DBDMA_STATUS_RUN ;
 int DELAY (int) ;
 int dbdma_read_reg (int *,int ) ;
 int dbdma_write_reg (int *,int ,int ) ;

void
dbdma_stop(dbdma_channel_t *chan)
{
 uint32_t control_reg;

 control_reg = DBDMA_STATUS_RUN;
 control_reg <<= DBDMA_REG_MASK_SHIFT;

 dbdma_write_reg(chan, CHAN_CONTROL_REG, control_reg);

 while (dbdma_read_reg(chan, CHAN_STATUS_REG) & DBDMA_STATUS_ACTIVE)
  DELAY(5);
}
