
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
typedef int dbdma_channel_t ;


 int CHAN_STATUS_REG ;
 int dbdma_read_reg (int *,int ) ;

uint16_t
dbdma_get_chan_status(dbdma_channel_t *chan)
{
 uint32_t status_reg;

 status_reg = dbdma_read_reg(chan, CHAN_STATUS_REG);
 return (status_reg & 0x0000ffff);
}
