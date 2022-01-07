
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int u_int16_t ;
typedef int u_int ;
struct agg_rchinfo {int speed; int stereo; int srcphys; int base; int phys; int buflen; TYPE_1__* parent; scalar_t__ hwptr; } ;
typedef int bus_addr_t ;
struct TYPE_9__ {int bufsz; int active; int playchns; } ;


 int APUREG_AMPLITUDE ;
 int APUREG_APUTYPE ;
 int APUREG_EFFECT_GAIN ;
 int APUREG_ROUTING ;
 int APUTYPE_INPUTMIXER ;
 int APUTYPE_RATECONV ;
 int APU_APUTYPE_SHIFT ;
 int APU_DATASRC_A_SHIFT ;
 int APU_DMA_ENABLED ;
 int PAN_FRONT ;
 int PAN_LEFT ;
 int WAVCACHE_CHCTL_ADDRTAG_MASK ;
 int WAVCACHE_CHCTL_STEREO ;
 int WPWA_USE_SYSMEM ;
 int agg_lock (TYPE_1__*) ;
 int agg_power (TYPE_1__*,int ) ;
 int agg_unlock (TYPE_1__*) ;
 int apu_setparam (TYPE_1__*,int,int,int,int,int) ;
 int critical_enter () ;
 int critical_exit () ;
 int powerstate_active ;
 int set_timer (TYPE_1__*) ;
 int wc_wrchctl (TYPE_1__*,int,int) ;
 int wp_starttimer (TYPE_1__*) ;
 int wp_wrapu (TYPE_1__*,int,int ,int) ;

__attribute__((used)) static void
aggch_start_adc(struct agg_rchinfo *ch)
{
 bus_addr_t wpwa, wpwa2;
 u_int16_t wcreg, wcreg2;
 u_int dv;
 int pan;


 dv = ((ch->speed << 16) + 24000) / 48000;


 if (dv == 0x10000)
  dv--;

 if (ch->stereo) {
  wpwa = (ch->srcphys - ch->base) >> 1;
  wpwa2 = (ch->srcphys + ch->parent->bufsz/2 - ch->base) >> 1;
  wcreg = (ch->srcphys - 16) & WAVCACHE_CHCTL_ADDRTAG_MASK;
  wcreg2 = (ch->base - 16) & WAVCACHE_CHCTL_ADDRTAG_MASK;
  pan = PAN_LEFT - PAN_FRONT;
 } else {
  wpwa = (ch->phys - ch->base) >> 1;
  wpwa2 = (ch->srcphys - ch->base) >> 1;
  wcreg = (ch->phys - 16) & WAVCACHE_CHCTL_ADDRTAG_MASK;
  wcreg2 = (ch->base - 16) & WAVCACHE_CHCTL_ADDRTAG_MASK;
  pan = 0;
 }

 agg_lock(ch->parent);

 ch->hwptr = 0;
 agg_power(ch->parent, powerstate_active);


 wc_wrchctl(ch->parent, 0, wcreg | WAVCACHE_CHCTL_STEREO);
 wc_wrchctl(ch->parent, 1, wcreg | WAVCACHE_CHCTL_STEREO);
 wc_wrchctl(ch->parent, 2, wcreg2 | WAVCACHE_CHCTL_STEREO);
 wc_wrchctl(ch->parent, 3, wcreg2 | WAVCACHE_CHCTL_STEREO);



 apu_setparam(ch->parent, 0, WPWA_USE_SYSMEM | wpwa,
       ch->buflen >> ch->stereo, 0, dv);
 wp_wrapu(ch->parent, 0, APUREG_AMPLITUDE, 0);
 wp_wrapu(ch->parent, 0, APUREG_ROUTING, 2 << APU_DATASRC_A_SHIFT);


 apu_setparam(ch->parent, 1, WPWA_USE_SYSMEM | wpwa2,
       ch->buflen >> ch->stereo, 0, dv);
 wp_wrapu(ch->parent, 1, APUREG_AMPLITUDE, 0);
 wp_wrapu(ch->parent, 1, APUREG_ROUTING, 3 << APU_DATASRC_A_SHIFT);


 apu_setparam(ch->parent, 2, WPWA_USE_SYSMEM | 0,
       ch->parent->bufsz >> 2, pan, 0x10000);
 wp_wrapu(ch->parent, 2, APUREG_AMPLITUDE, 0);
 wp_wrapu(ch->parent, 2, APUREG_EFFECT_GAIN, 0xf0);
 wp_wrapu(ch->parent, 2, APUREG_ROUTING, 0x15 << APU_DATASRC_A_SHIFT);


 apu_setparam(ch->parent, 3, WPWA_USE_SYSMEM | (ch->parent->bufsz >> 2),
       ch->parent->bufsz >> 2, -pan, 0x10000);
 wp_wrapu(ch->parent, 3, APUREG_AMPLITUDE, 0);
 wp_wrapu(ch->parent, 3, APUREG_EFFECT_GAIN, 0xf0);
 wp_wrapu(ch->parent, 3, APUREG_ROUTING, 0x14 << APU_DATASRC_A_SHIFT);


 ch->parent->active |= (1 << ch->parent->playchns);


 critical_enter();
 wp_wrapu(ch->parent, 0, APUREG_APUTYPE,
     (APUTYPE_RATECONV << APU_APUTYPE_SHIFT) | APU_DMA_ENABLED | 0xf);
 wp_wrapu(ch->parent, 1, APUREG_APUTYPE,
     (APUTYPE_RATECONV << APU_APUTYPE_SHIFT) | APU_DMA_ENABLED | 0xf);
 wp_wrapu(ch->parent, 2, APUREG_APUTYPE,
     (APUTYPE_INPUTMIXER << APU_APUTYPE_SHIFT) | 0xf);
 wp_wrapu(ch->parent, 3, APUREG_APUTYPE,
     (APUTYPE_INPUTMIXER << APU_APUTYPE_SHIFT) | 0xf);
 critical_exit();

 set_timer(ch->parent);
 wp_starttimer(ch->parent);
 agg_unlock(ch->parent);
}
