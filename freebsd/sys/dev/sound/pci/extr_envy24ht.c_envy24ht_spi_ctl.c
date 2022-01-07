
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int32_t ;
struct envy24ht_spi_codec {int cs; int cclk; int cdti; TYPE_1__* parent; } ;
struct TYPE_3__ {int dev; } ;


 int device_printf (int ,char*,unsigned int,unsigned int,unsigned int) ;
 int envy24ht_gpiord (TYPE_1__*) ;
 int envy24ht_gpiowr (TYPE_1__*,int) ;

__attribute__((used)) static void
envy24ht_spi_ctl(void *codec, unsigned int cs, unsigned int cclk, unsigned int cdti)
{
 u_int32_t data = 0;
 struct envy24ht_spi_codec *ptr = codec;




 data = envy24ht_gpiord(ptr->parent);
 data &= ~(ptr->cs | ptr->cclk | ptr->cdti);
 if (cs) data += ptr->cs;
 if (cclk) data += ptr->cclk;
 if (cdti) data += ptr->cdti;
 envy24ht_gpiowr(ptr->parent, data);
 return;
}
