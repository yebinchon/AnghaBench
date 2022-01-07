
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int * ich_func; } ;
struct atiixp_info {int polling; int codec_not_ready_bits; int dev; int irq; int reg; int * codec; int codec_found; scalar_t__ codec_idx; int lock; TYPE_1__ delayed_attach; } ;


 int * AC97_CREATE (int ,struct atiixp_info*,int ) ;
 int AC97_F_EAPD_INV ;
 int ATI_IXP_NPCHAN ;
 int ATI_IXP_NRCHAN ;
 int ATI_REG_ISR_CODEC0_NOT_READY ;
 int ATI_REG_ISR_CODEC1_NOT_READY ;
 int ATI_REG_ISR_CODEC2_NOT_READY ;
 int CTLFLAG_RW ;
 int CTLTYPE_INT ;
 int OID_AUTO ;
 int PCMDIR_PLAY ;
 int PCMDIR_REC ;
 int PCM_KLDSTRING (int ) ;
 int PWAIT ;
 int SND_STATUSLEN ;
 int SYSCTL_ADD_PROC (int ,int ,int ,char*,int,int ,int,int ,char*,char*) ;
 int SYSCTL_CHILDREN (int ) ;
 int ac97_getflags (int *) ;
 int ac97_getmixerclass () ;
 int ac97_setflags (int *,int) ;
 int atiixp_ac97 ;
 int atiixp_chan_class ;
 int atiixp_disable_interrupts (struct atiixp_info*) ;
 int atiixp_enable_interrupts (struct atiixp_info*) ;
 int atiixp_lock (struct atiixp_info*) ;
 int atiixp_release_resource (struct atiixp_info*) ;
 int atiixp_unlock (struct atiixp_info*) ;
 int config_intrhook_disestablish (TYPE_1__*) ;
 int device_get_sysctl_ctx (int ) ;
 int device_get_sysctl_tree (int ) ;
 int device_printf (int ,char*) ;
 int hz ;
 int max (int,int) ;
 int mixer_init (int ,int ,int *) ;
 int msleep (struct atiixp_info*,int ,int ,char*,int ) ;
 int pci_get_subdevice (int ) ;
 int pci_get_subvendor (int ) ;
 int pcm_addchan (int ,int ,int *,struct atiixp_info*) ;
 scalar_t__ pcm_register (int ,struct atiixp_info*,int,int) ;
 int pcm_setstatus (int ,char*) ;
 int rman_get_start (int ) ;
 int snd_atiixp ;
 int snprintf (char*,int,char*,int ,int ,int ) ;
 int sysctl_atiixp_polling ;

__attribute__((used)) static void
atiixp_chip_post_init(void *arg)
{
 struct atiixp_info *sc = (struct atiixp_info *)arg;
 uint32_t subdev;
 int i, timeout, found, polling;
 char status[SND_STATUSLEN];

 atiixp_lock(sc);

 if (sc->delayed_attach.ich_func) {
  config_intrhook_disestablish(&sc->delayed_attach);
  sc->delayed_attach.ich_func = ((void*)0);
 }

 polling = sc->polling;
 sc->polling = 0;

 timeout = 10;
 if (sc->codec_not_ready_bits == 0) {

  do {
   msleep(sc, sc->lock, PWAIT, "ixpslp", max(hz / 10, 1));
   if (sc->codec_not_ready_bits != 0)
    break;
  } while (--timeout);
 }

 sc->polling = polling;
 atiixp_disable_interrupts(sc);

 if (sc->codec_not_ready_bits == 0 && timeout == 0) {
  device_printf(sc->dev,
   "WARNING: timeout during codec detection; "
   "codecs might be present but haven't interrupted\n");
  atiixp_unlock(sc);
  goto postinitbad;
 }

 found = 0;





 if (!(sc->codec_not_ready_bits & ATI_REG_ISR_CODEC0_NOT_READY)) {

  sc->codec_found++;
  sc->codec_idx = 0;
  found++;
 }

 if (!(sc->codec_not_ready_bits & ATI_REG_ISR_CODEC1_NOT_READY)) {

  sc->codec_found++;
 }

 if (!(sc->codec_not_ready_bits & ATI_REG_ISR_CODEC2_NOT_READY)) {

  sc->codec_found++;
 }

 atiixp_unlock(sc);

 if (found == 0)
  goto postinitbad;


 sc->codec = AC97_CREATE(sc->dev, sc, atiixp_ac97);
 if (sc->codec == ((void*)0))
  goto postinitbad;

 subdev = (pci_get_subdevice(sc->dev) << 16) |
     pci_get_subvendor(sc->dev);
 switch (subdev) {
 case 0x11831043:
 case 0x2043161f:
  ac97_setflags(sc->codec, ac97_getflags(sc->codec) |
      AC97_F_EAPD_INV);
  break;
 default:
  break;
 }

 mixer_init(sc->dev, ac97_getmixerclass(), sc->codec);

 if (pcm_register(sc->dev, sc, ATI_IXP_NPCHAN, ATI_IXP_NRCHAN))
  goto postinitbad;

 for (i = 0; i < ATI_IXP_NPCHAN; i++)
  pcm_addchan(sc->dev, PCMDIR_PLAY, &atiixp_chan_class, sc);
 for (i = 0; i < ATI_IXP_NRCHAN; i++)
  pcm_addchan(sc->dev, PCMDIR_REC, &atiixp_chan_class, sc);

 SYSCTL_ADD_PROC(device_get_sysctl_ctx(sc->dev),
     SYSCTL_CHILDREN(device_get_sysctl_tree(sc->dev)), OID_AUTO,
     "polling", CTLTYPE_INT | CTLFLAG_RW, sc->dev, sizeof(sc->dev),
     sysctl_atiixp_polling, "I", "Enable polling mode");

 snprintf(status, SND_STATUSLEN, "at memory 0x%jx irq %jd %s",
     rman_get_start(sc->reg), rman_get_start(sc->irq),
     PCM_KLDSTRING(snd_atiixp));

 pcm_setstatus(sc->dev, status);

 atiixp_lock(sc);
 if (sc->polling == 0)
  atiixp_enable_interrupts(sc);
 atiixp_unlock(sc);

 return;

postinitbad:
 atiixp_release_resource(sc);
}
