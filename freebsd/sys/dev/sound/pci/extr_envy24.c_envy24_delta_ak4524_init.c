
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int32_t ;
struct envy24_delta_ak4524_codec {int cs; int num; TYPE_2__* parent; int info; int cdti; int cclk; } ;
struct TYPE_5__ {int dev; TYPE_1__* cfg; } ;
struct TYPE_4__ {int cs; int subvendor; int subdevice; int cif; int type; int cdti; int cclk; } ;


 int AK452X_DVC_DEMOFF ;
 int AK452X_FORMAT_1X ;
 int AK452X_FORMAT_256FSN ;
 int AK452X_FORMAT_I2S ;
 int ENVY24_GPIO_AK4524_CCLK ;
 int ENVY24_GPIO_AK4524_CS0 ;
 int ENVY24_GPIO_AK4524_CS1 ;
 int ENVY24_GPIO_CS8414_STATUS ;
 int PCA9554_DIR ;
 int PCA9554_I2CDEV ;
 int PCA9554_OUT ;
 int device_printf (int ,char*) ;
 int envy24_gpio_i2c_ctl ;
 int envy24_gpiosetdir (TYPE_2__*,int ) ;
 int envy24_gpiosetmask (TYPE_2__*,int ) ;
 int i2c_wr (struct envy24_delta_ak4524_codec*,int ,int ,int ,int) ;
 int spicds_init (int ) ;
 int spicds_setcif (int ,int ) ;
 int spicds_setdvc (int ,int ) ;
 int spicds_setformat (int ,int) ;
 int spicds_settype (int ,int ) ;

__attribute__((used)) static void
envy24_delta_ak4524_init(void *codec)
{



 struct envy24_delta_ak4524_codec *ptr = codec;
 if (ptr == ((void*)0))
  return;
 ptr->cs = ptr->parent->cfg->cs;
 ptr->cclk = ptr->parent->cfg->cclk;
 ptr->cdti = ptr->parent->cfg->cdti;
 spicds_settype(ptr->info, ptr->parent->cfg->type);
 spicds_setcif(ptr->info, ptr->parent->cfg->cif);
 spicds_setformat(ptr->info,
     AK452X_FORMAT_I2S | AK452X_FORMAT_256FSN | AK452X_FORMAT_1X);
 spicds_setdvc(ptr->info, AK452X_DVC_DEMOFF);

 if (ptr->num == 0)
  spicds_init(ptr->info);


        if (ptr->parent->cfg->subvendor == 0x153b && ptr->parent->cfg->subdevice == 0x1138 && ptr->num == 100) {

                ptr->cs = 0x02;
                spicds_init(ptr->info);
                device_printf(ptr->parent->dev, "6fire rear input init\n");
                i2c_wr(ptr, envy24_gpio_i2c_ctl, PCA9554_I2CDEV, PCA9554_DIR, 0x80);

                i2c_wr(ptr, envy24_gpio_i2c_ctl, PCA9554_I2CDEV, PCA9554_OUT, 0x02);

        }
}
