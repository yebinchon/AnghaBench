
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sc_info {long long ctrl_register; int period; long long speed; int type; long long settings_register; } ;



 int ENXIO ;
 int HDSPE_CONTROL_REG ;
 long long HDSPE_FREQ_AIO ;
 long long HDSPE_FREQ_MASK ;
 long long HDSPE_FREQ_MASK_DEFAULT ;
 int HDSPE_FREQ_REG ;
 int HDSPE_SETTINGS_REG ;
 long long HDSPE_SPEED_DEFAULT ;
 long long HDSPM_CLOCK_MODE_MASTER ;

 long long hdspe_encode_latency (int) ;
 int hdspe_write_4 (struct sc_info*,int ,long long) ;

__attribute__((used)) static int
hdspe_init(struct sc_info *sc)
{
 long long period;


 sc->ctrl_register |= HDSPM_CLOCK_MODE_MASTER;


 sc->period = 32;
 sc->ctrl_register = hdspe_encode_latency(7);


 sc->speed = HDSPE_SPEED_DEFAULT;
 sc->ctrl_register &= ~HDSPE_FREQ_MASK;
 sc->ctrl_register |= HDSPE_FREQ_MASK_DEFAULT;
 hdspe_write_4(sc, HDSPE_CONTROL_REG, sc->ctrl_register);

 switch (sc->type) {
 case 128:
 case 129:
  period = HDSPE_FREQ_AIO;
  break;
 default:
  return (ENXIO);
 }


 period /= sc->speed;
 hdspe_write_4(sc, HDSPE_FREQ_REG, period);


 sc->settings_register = 0;
 hdspe_write_4(sc, HDSPE_SETTINGS_REG, sc->settings_register);

 return (0);
}
