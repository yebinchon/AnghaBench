
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct envy24ht_spi_codec {scalar_t__ num; int info; TYPE_2__* parent; int cdti; int cclk; int cs; } ;
struct TYPE_4__ {TYPE_1__* cfg; int dev; } ;
struct TYPE_3__ {scalar_t__ type; int cif; int cdti; int cclk; int cs; } ;


 int AK452X_DVC_DEMOFF ;
 int AK452X_FORMAT_1X ;
 int AK452X_FORMAT_256FSN ;
 int AK452X_FORMAT_I2S ;
 scalar_t__ SPICDS_TYPE_AK4524 ;
 scalar_t__ SPICDS_TYPE_AK4528 ;
 int device_printf (int ,char*) ;
 int spicds_init (int ) ;
 int spicds_setcif (int ,int ) ;
 int spicds_setdvc (int ,int ) ;
 int spicds_setformat (int ,int) ;
 int spicds_settype (int ,scalar_t__) ;

__attribute__((used)) static void
envy24ht_spi_init(void *codec)
{
 struct envy24ht_spi_codec *ptr = codec;
 if (ptr == ((void*)0))
  return;



        ptr->cs = ptr->parent->cfg->cs;
 ptr->cclk = ptr->parent->cfg->cclk;
 ptr->cdti = ptr->parent->cfg->cdti;
 spicds_settype(ptr->info, ptr->parent->cfg->type);
 spicds_setcif(ptr->info, ptr->parent->cfg->cif);
 if (ptr->parent->cfg->type == SPICDS_TYPE_AK4524 || ptr->parent->cfg->type == SPICDS_TYPE_AK4528) {

 spicds_setformat(ptr->info,
     AK452X_FORMAT_I2S | AK452X_FORMAT_256FSN | AK452X_FORMAT_1X);
 spicds_setdvc(ptr->info, AK452X_DVC_DEMOFF);
 }


 if (ptr->num == 0)
 spicds_init(ptr->info);
}
