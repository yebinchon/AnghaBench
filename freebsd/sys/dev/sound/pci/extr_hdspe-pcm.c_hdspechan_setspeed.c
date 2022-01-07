
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct sc_pcminfo {int dev; struct sc_info* sc; } ;
struct sc_info {int type; long long ctrl_register; int speed; } ;
struct sc_chinfo {struct sc_pcminfo* parent; } ;
struct hdspe_rate {int speed; long long reg; } ;
typedef int kobj_t ;



 int HDSPE_CONTROL_REG ;
 long long HDSPE_FREQ_AIO ;
 long long HDSPE_FREQ_MASK ;
 int HDSPE_FREQ_REG ;

 int device_printf (int ,char*,int) ;
 int hdspe_running (struct sc_info*) ;
 int hdspe_write_4 (struct sc_info*,int ,long long) ;
 struct hdspe_rate* rate_map ;

__attribute__((used)) static uint32_t
hdspechan_setspeed(kobj_t obj, void *data, uint32_t speed)
{
 struct sc_pcminfo *scp;
 struct hdspe_rate *hr;
 struct sc_chinfo *ch;
 struct sc_info *sc;
 long long period;
 int threshold;
 int i;

 ch = data;
 scp = ch->parent;
 sc = scp->sc;
 hr = ((void*)0);





 if (hdspe_running(sc) == 1)
  goto end;


 for (i = 0; rate_map[i].speed != 0; i++) {
  if (rate_map[i].speed == speed)
   hr = &rate_map[i];
 }


 if (hr == ((void*)0)) {
  for (i = 0; rate_map[i].speed != 0; i++) {
   hr = &rate_map[i];
   threshold = hr->speed + ((rate_map[i + 1].speed != 0) ?
       ((rate_map[i + 1].speed - hr->speed) >> 1) : 0);
   if (speed < threshold)
    break;
  }
 }

 switch (sc->type) {
 case 128:
 case 129:
  period = HDSPE_FREQ_AIO;
  break;
 default:

  goto end;
 }


 sc->ctrl_register &= ~HDSPE_FREQ_MASK;
 sc->ctrl_register |= hr->reg;
 hdspe_write_4(sc, HDSPE_CONTROL_REG, sc->ctrl_register);

 speed = hr->speed;
 if (speed > 96000)
  speed /= 4;
 else if (speed > 48000)
  speed /= 2;


 period /= speed;
 hdspe_write_4(sc, HDSPE_FREQ_REG, period);

 sc->speed = hr->speed;
end:

 return (sc->speed);
}
