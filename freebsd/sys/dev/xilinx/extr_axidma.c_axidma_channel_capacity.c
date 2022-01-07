
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ chan; } ;
typedef TYPE_1__ xdma_channel_t ;
typedef scalar_t__ uint32_t ;
struct axidma_channel {scalar_t__ descs_used_count; scalar_t__ descs_num; } ;
typedef int device_t ;



__attribute__((used)) static int
axidma_channel_capacity(device_t dev, xdma_channel_t *xchan,
    uint32_t *capacity)
{
 struct axidma_channel *chan;
 uint32_t c;

 chan = (struct axidma_channel *)xchan->chan;


 c = (chan->descs_num - chan->descs_used_count - 1);

 *capacity = c;

 return (0);
}
