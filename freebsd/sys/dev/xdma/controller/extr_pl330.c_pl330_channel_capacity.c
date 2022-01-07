
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ chan; } ;
typedef TYPE_1__ xdma_channel_t ;
typedef int uint32_t ;
struct pl330_channel {int capacity; } ;
typedef int device_t ;



__attribute__((used)) static int
pl330_channel_capacity(device_t dev, xdma_channel_t *xchan,
    uint32_t *capacity)
{
 struct pl330_channel *chan;

 chan = (struct pl330_channel *)xchan->chan;

 *capacity = chan->capacity;

 return (0);
}
