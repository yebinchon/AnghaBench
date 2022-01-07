
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int dbdma_channel_t ;


 int dbdma_get_chan_status (int *) ;

uint8_t
dbdma_get_device_status(dbdma_channel_t *chan)
{
 return (dbdma_get_chan_status(chan) & 0x00ff);
}
