
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct sc_info {int lock; scalar_t__ spdif_enabled; } ;
struct sc_chinfo {scalar_t__ dir; int spd; struct sc_info* parent; } ;
typedef int kobj_t ;


 int CMPCI_REG_ADC_FS_MASK ;
 int CMPCI_REG_ADC_FS_SHIFT ;
 int CMPCI_REG_DAC_FS_MASK ;
 int CMPCI_REG_DAC_FS_SHIFT ;
 int CMPCI_REG_FUNC_1 ;
 int DEB (int ) ;
 scalar_t__ PCMDIR_PLAY ;
 int cmi_partial_wr4 (struct sc_info*,int ,int,int,int) ;
 int cmi_rd (struct sc_info*,int ,int) ;
 int cmi_spdif_speed (struct sc_info*,int) ;
 int cmpci_rate_to_regvalue (int) ;
 int cmpci_regvalue_to_rate (int) ;
 int printf (char*,char*,int,int,int) ;
 int snd_mtxlock (int ) ;
 int snd_mtxunlock (int ) ;

__attribute__((used)) static u_int32_t
cmichan_setspeed(kobj_t obj, void *data, u_int32_t speed)
{
 struct sc_chinfo *ch = data;
 struct sc_info *sc = ch->parent;
 u_int32_t r, rsp;

 r = cmpci_rate_to_regvalue(speed);
 snd_mtxlock(sc->lock);
 if (ch->dir == PCMDIR_PLAY) {
  if (speed < 44100) {

   cmi_spdif_speed(ch->parent, speed);
  }
  cmi_partial_wr4(ch->parent,
    CMPCI_REG_FUNC_1,
    CMPCI_REG_DAC_FS_SHIFT,
    CMPCI_REG_DAC_FS_MASK,
    r);
  if (speed >= 44100 && ch->parent->spdif_enabled) {

   cmi_spdif_speed(ch->parent, speed);
  }
  rsp = cmi_rd(ch->parent, CMPCI_REG_FUNC_1, 4);
  rsp >>= CMPCI_REG_DAC_FS_SHIFT;
  rsp &= CMPCI_REG_DAC_FS_MASK;
 } else {
  cmi_partial_wr4(ch->parent,
    CMPCI_REG_FUNC_1,
    CMPCI_REG_ADC_FS_SHIFT,
    CMPCI_REG_ADC_FS_MASK,
    r);
  rsp = cmi_rd(ch->parent, CMPCI_REG_FUNC_1, 4);
  rsp >>= CMPCI_REG_ADC_FS_SHIFT;
  rsp &= CMPCI_REG_ADC_FS_MASK;
 }
 snd_mtxunlock(sc->lock);
 ch->spd = cmpci_regvalue_to_rate(r);

 DEB(printf("cmichan_setspeed (%s) %d -> %d (%d)\n",
     (ch->dir == PCMDIR_PLAY) ? "play" : "rec",
     speed, ch->spd, cmpci_regvalue_to_rate(rsp)));

 return ch->spd;
}
