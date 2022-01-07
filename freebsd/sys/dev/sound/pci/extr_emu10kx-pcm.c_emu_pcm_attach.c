
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct emu_sc_info {int dummy; } ;
struct TYPE_4__ {unsigned int* routing_left; int* amounts_left; unsigned int* routing_right; int* amounts_right; } ;
struct TYPE_3__ {unsigned int* routing_left; int* amounts_left; unsigned int* routing_right; int* amounts_right; } ;
struct emu_pcm_info {int is_emu10k1; int mch_disabled; int** emu10k1_volcache; uintptr_t route; scalar_t__ lock; int * codec; scalar_t__ pnum; struct emu_sc_info* card; int ihandle; TYPE_2__ rt_mono; TYPE_1__ rt; int * ac97_mixerclass; int dev; } ;
typedef int device_t ;


 void* AC97_CREATE (int ,struct emu_pcm_info*,int ) ;
 uintptr_t BUS_READ_IVAR (int ,int ,int ,uintptr_t*) ;
 int EMU_INTE_INTERTIMERENB ;
 int EMU_IPR_INTERVALTIMER ;
 int EMU_VAR_ISEMU10K1 ;
 int EMU_VAR_MCH_DISABLED ;
 int EMU_VAR_ROUTE ;
 int ENXIO ;
 int MAX_CHANNELS ;
 int M_DEVBUF ;
 int M_WAITOK ;
 int M_ZERO ;
 int PCMDIR_PLAY ;
 int PCMDIR_REC ;






 int SD_F_MPSAFE ;
 int SND_STATUSLEN ;
 int ac97_destroy (int *) ;
 int * ac97_getmixerclass () ;
 char* device_get_nameunit (int ) ;
 int device_get_parent (int ) ;
 scalar_t__ device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int emu_ac97 ;
 int emu_eac97 ;
 int emu_intr_register (struct emu_sc_info*,int ,int ,int *,struct emu_pcm_info*) ;
 int emu_pcm_init (struct emu_pcm_info*) ;
 int emu_pcm_intr ;
 int emudspmixer_class ;
 int emuefxmixer_class ;
 int emufxrchan_class ;
 int emupchan_class ;
 int emurchan_class ;
 int free (struct emu_pcm_info*,int ) ;
 struct emu_pcm_info* malloc (int,int ,int) ;
 int mixer_init (int ,int *,struct emu_pcm_info*) ;
 int pcm_addchan (int ,int ,int *,struct emu_pcm_info*) ;
 int pcm_getflags (int ) ;
 scalar_t__ pcm_register (int ,struct emu_pcm_info*,int,int) ;
 int pcm_setflags (int ,int) ;
 int pcm_setstatus (int ,char*) ;
 scalar_t__ snd_mtxcreate (char*,char*) ;
 int snd_mtxfree (scalar_t__) ;
 int snprintf (char*,int,char*,char*) ;

__attribute__((used)) static int
emu_pcm_attach(device_t dev)
{
 struct emu_pcm_info *sc;
 unsigned int i;
 char status[SND_STATUSLEN];
 uint32_t inte, ipr;
 uintptr_t route, r, ivar;

 sc = malloc(sizeof(*sc), M_DEVBUF, M_WAITOK | M_ZERO);
 sc->card = (struct emu_sc_info *)(device_get_softc(device_get_parent(dev)));
 if (sc->card == ((void*)0)) {
  device_printf(dev, "cannot get bridge conf\n");
  free(sc, M_DEVBUF);
  return (ENXIO);
 }

 sc->lock = snd_mtxcreate(device_get_nameunit(dev), "snd_emu10kx pcm softc");
 sc->dev = dev;

 r = BUS_READ_IVAR(device_get_parent(dev), dev, EMU_VAR_ISEMU10K1, &ivar);
 sc->is_emu10k1 = ivar ? 1 : 0;

 r = BUS_READ_IVAR(device_get_parent(dev), dev, EMU_VAR_MCH_DISABLED, &ivar);
 sc->mch_disabled = ivar ? 1 : 0;

 sc->codec = ((void*)0);

 for (i = 0; i < 8; i++) {
  sc->rt.routing_left[i] = i;
  sc->rt.amounts_left[i] = 0x00;
  sc->rt.routing_right[i] = i;
  sc->rt.amounts_right[i] = 0x00;
 }

 for (i = 0; i < 8; i++) {
  sc->rt_mono.routing_left[i] = i;
  sc->rt_mono.amounts_left[i] = 0x00;
  sc->rt_mono.routing_right[i] = i;
  sc->rt_mono.amounts_right[i] = 0x00;
 }

 sc->emu10k1_volcache[0][0] = 75;
 sc->emu10k1_volcache[1][0] = 75;
 sc->emu10k1_volcache[0][1] = 75;
 sc->emu10k1_volcache[1][1] = 75;
 r = BUS_READ_IVAR(device_get_parent(dev), dev, EMU_VAR_ROUTE, &route);
 sc->route = route;
 switch (route) {
 case 132:
  sc->rt.amounts_left[0] = 0xff;
  sc->rt.amounts_right[1] = 0xff;
  sc->rt_mono.amounts_left[0] = 0xff;
  sc->rt_mono.amounts_left[1] = 0xff;
  if (sc->is_emu10k1)
   sc->codec = AC97_CREATE(dev, sc, emu_ac97);
  else
   sc->codec = AC97_CREATE(dev, sc, emu_eac97);
  sc->ac97_mixerclass = ((void*)0);
  if (sc->codec != ((void*)0))
   sc->ac97_mixerclass = ac97_getmixerclass();
  if (mixer_init(dev, &emudspmixer_class, sc)) {
   device_printf(dev, "failed to initialize DSP mixer\n");
   goto bad;
  }
  break;
 case 130:
  sc->rt.amounts_left[2] = 0xff;
  sc->rt.amounts_right[3] = 0xff;
  sc->rt_mono.amounts_left[2] = 0xff;
  sc->rt_mono.amounts_left[3] = 0xff;
  if (mixer_init(dev, &emudspmixer_class, sc)) {
   device_printf(dev, "failed to initialize mixer\n");
   goto bad;
  }
  break;
 case 133:
  sc->rt.amounts_left[4] = 0xff;
  sc->rt_mono.amounts_left[4] = 0xff;
  if (mixer_init(dev, &emudspmixer_class, sc)) {
   device_printf(dev, "failed to initialize mixer\n");
   goto bad;
  }
  break;
 case 128:
  sc->rt.amounts_left[5] = 0xff;
  sc->rt_mono.amounts_left[5] = 0xff;
  if (mixer_init(dev, &emudspmixer_class, sc)) {
   device_printf(dev, "failed to initialize mixer\n");
   goto bad;
  }
  break;
 case 129:
  sc->rt.amounts_left[6] = 0xff;
  sc->rt.amounts_right[7] = 0xff;
  sc->rt_mono.amounts_left[6] = 0xff;
  sc->rt_mono.amounts_left[7] = 0xff;
  if (mixer_init(dev, &emudspmixer_class, sc)) {
   device_printf(dev, "failed to initialize mixer\n");
   goto bad;
  }
  break;
 case 131:
  if (mixer_init(dev, &emuefxmixer_class, sc)) {
   device_printf(dev, "failed to initialize EFX mixer\n");
   goto bad;
  }
  break;
 default:
  device_printf(dev, "invalid default route\n");
  goto bad;
 }

 inte = EMU_INTE_INTERTIMERENB;
 ipr = EMU_IPR_INTERVALTIMER;
 sc->ihandle = emu_intr_register(sc->card, inte, ipr, &emu_pcm_intr, sc);

 if (emu_pcm_init(sc) == -1) {
  device_printf(dev, "unable to initialize PCM part of the card\n");
  goto bad;
 }





 pcm_setflags(dev, pcm_getflags(dev) | SD_F_MPSAFE);


 if (pcm_register(dev, sc, (route == 132) ? MAX_CHANNELS : 1, (route == 132) ? 1 : 0)) {
  device_printf(dev, "can't register PCM channels!\n");
  goto bad;
 }
 sc->pnum = 0;
 if (route != 131)
  pcm_addchan(dev, PCMDIR_PLAY, &emupchan_class, sc);
 if (route == 132) {
  for (i = 1; i < MAX_CHANNELS; i++)
   pcm_addchan(dev, PCMDIR_PLAY, &emupchan_class, sc);
  pcm_addchan(dev, PCMDIR_REC, &emurchan_class, sc);
 }
 if (route == 131)
  pcm_addchan(dev, PCMDIR_REC, &emufxrchan_class, sc);

 snprintf(status, SND_STATUSLEN, "on %s", device_get_nameunit(device_get_parent(dev)));
 pcm_setstatus(dev, status);

 return (0);

bad:
 if (sc->codec)
  ac97_destroy(sc->codec);
 if (sc->lock)
  snd_mtxfree(sc->lock);
 free(sc, M_DEVBUF);
 return (ENXIO);
}
