
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ u_int ;
struct TYPE_3__ {scalar_t__ sc_off; int sc_regs; } ;
typedef TYPE_1__ dbdma_channel_t ;


 int bus_read_4 (int ,scalar_t__) ;

__attribute__((used)) static uint32_t
dbdma_read_reg(dbdma_channel_t *chan, u_int offset)
{

 return (bus_read_4(chan->sc_regs, chan->sc_off + offset));
}
