
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct envy24_delta_ak4524_codec {int info; TYPE_1__* parent; } ;
struct TYPE_2__ {int dev; } ;


 int device_printf (int ,char*) ;
 int spicds_reinit (int ) ;

__attribute__((used)) static void
envy24_delta_ak4524_reinit(void *codec)
{
 struct envy24_delta_ak4524_codec *ptr = codec;
 if (ptr == ((void*)0))
  return;




 spicds_reinit(ptr->info);
}
