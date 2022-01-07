
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct dbdma_command {int dummy; } ;
struct TYPE_3__ {int sc_nslots; } ;
typedef TYPE_1__ dbdma_channel_t ;


 int PAGE_SIZE ;

int
dbdma_resize_channel(dbdma_channel_t *chan, int newslots)
{

 if (newslots > (PAGE_SIZE / sizeof(struct dbdma_command)))
  return (-1);

 chan->sc_nslots = newslots;
 return (0);
}
