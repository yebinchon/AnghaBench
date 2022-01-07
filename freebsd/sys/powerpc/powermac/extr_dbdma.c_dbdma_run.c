
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int dbdma_channel_t ;


 int CHAN_CONTROL_REG ;
 int DBDMA_REG_MASK_SHIFT ;
 int DBDMA_STATUS_DEAD ;
 int DBDMA_STATUS_PAUSE ;
 int DBDMA_STATUS_RUN ;
 int DBDMA_STATUS_WAKE ;
 int dbdma_write_reg (int *,int ,int) ;

void
dbdma_run(dbdma_channel_t *chan)
{
 uint32_t control_reg;

 control_reg = DBDMA_STATUS_RUN | DBDMA_STATUS_PAUSE |
     DBDMA_STATUS_WAKE | DBDMA_STATUS_DEAD;
 control_reg <<= DBDMA_REG_MASK_SHIFT;

 control_reg |= DBDMA_STATUS_RUN;
 dbdma_write_reg(chan, CHAN_CONTROL_REG, control_reg);
}
