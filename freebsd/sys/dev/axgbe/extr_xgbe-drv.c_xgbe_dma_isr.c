
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_channel {int dummy; } ;


 int xgbe_one_poll (struct xgbe_channel*,int) ;

__attribute__((used)) static void xgbe_dma_isr(void *data)
{
 struct xgbe_channel *channel = data;

 xgbe_one_poll(channel, 16);
}
