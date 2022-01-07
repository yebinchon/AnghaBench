
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sc_dev; } ;
struct i2s_softc {TYPE_1__ aoa; } ;
typedef int device_t ;
struct TYPE_4__ {struct i2s_softc* i2s; } ;


 int GPIO_CTRL_NUM ;
 int M_TEMP ;
 int config_intrhook_disestablish (int ) ;
 int free (int ,int ) ;
 TYPE_2__** gpio_ctrls ;
 int i2s_audio_hw_reset (struct i2s_softc*) ;
 int i2s_cint (struct i2s_softc*) ;
 int i2s_delayed_attach ;
 scalar_t__ i2s_mixer ;
 int i2s_mixer_class ;
 int mixer_init (int ,int ,scalar_t__) ;

__attribute__((used)) static void
i2s_postattach(void *xsc)
{
 struct i2s_softc *sc = xsc;
 device_t self;
 int i;

 self = sc->aoa.sc_dev;


 i2s_audio_hw_reset(sc);


 if (i2s_mixer)
  mixer_init(self, i2s_mixer_class, i2s_mixer);


 i2s_cint(sc);


 for (i = 0; i < GPIO_CTRL_NUM; i++)
  if (gpio_ctrls[i])
   gpio_ctrls[i]->i2s = sc;

 config_intrhook_disestablish(i2s_delayed_attach);
 free(i2s_delayed_attach, M_TEMP);
}
