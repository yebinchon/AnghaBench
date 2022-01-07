
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct envy24ht_spi_codec {int info; TYPE_1__* parent; } ;
struct TYPE_2__ {int dev; } ;


 int device_printf (int ,char*) ;
 int spicds_reinit (int ) ;

__attribute__((used)) static void
envy24ht_spi_reinit(void *codec)
{
 struct envy24ht_spi_codec *ptr = codec;
 if (ptr == ((void*)0))
  return;




 spicds_reinit(ptr->info);
}
