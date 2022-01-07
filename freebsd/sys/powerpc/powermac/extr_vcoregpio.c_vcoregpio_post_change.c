
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cf_level {TYPE_1__* rel_set; } ;
typedef int device_t ;
struct TYPE_2__ {int freq; } ;


 int DELAY (int) ;
 int GPIO_DDR_OUTPUT ;
 int macgpio_write (int ,int) ;

__attribute__((used)) static void
vcoregpio_post_change(device_t dev, const struct cf_level *level)
{
 if (level->rel_set[0].freq < 10000 ) {
  DELAY(1000);

  macgpio_write(dev, GPIO_DDR_OUTPUT | 0);
 }
}
