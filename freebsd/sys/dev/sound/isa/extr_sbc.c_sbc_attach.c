
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int32_t ;
struct sndcard_func {int func; } ;
struct sbc_softc {int bd_ver; void* child_midi2; void* child_midi1; void* child_pcm; int * ih; TYPE_1__* ihl; struct resource** irq; int * io; struct resource** drq; int dev; } ;
struct resource {int dummy; } ;
typedef int device_t ;
struct TYPE_2__ {struct sbc_softc* parent; } ;


 int BD_F_DUP_MIDI ;
 int BD_F_ESS ;
 int BD_F_MIX_CT1335 ;
 int BD_F_MIX_CT1345 ;
 int BD_F_MIX_CT1745 ;
 int BD_F_SB16 ;
 int BD_F_SB16X ;
 int DMA_NR ;
 int DV_F_DRQ_MASK ;
 int DV_F_DUAL_DMA ;
 int ENXIO ;
 int IRQ_MAX ;
 int IRQ_NR ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int M_ZERO ;
 int SCF_MIDI ;
 int SCF_PCM ;
 int SCF_SYNTH ;
 int SYS_RES_DRQ ;
 scalar_t__ alloc_resource (struct sbc_softc*) ;
 int bootverbose ;
 int bus_generic_attach (int ) ;
 int bus_set_resource (int ,int ,int,int,int) ;
 int bzero (struct sbc_softc*,int) ;
 void* device_add_child (int ,char*,int) ;
 int device_get_flags (int ) ;
 struct sbc_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 int device_set_ivars (void*,struct sndcard_func*) ;
 int isa_get_logicalid (int ) ;
 struct sndcard_func* malloc (int,int ,int) ;
 int printf (char*,...) ;
 int release_resource (struct sbc_softc*) ;
 int rman_get_start (struct resource*) ;
 int sb_identify_board (int ) ;
 scalar_t__ sb_reset_dsp (int ) ;
 int sb_setmixer (int ,int ,int) ;
 int sbc_intr ;
 int sbc_lockinit (struct sbc_softc*) ;
 scalar_t__ snd_setup_intr (int ,struct resource*,int ,int ,TYPE_1__*,int *) ;

__attribute__((used)) static int
sbc_attach(device_t dev)
{
 char *err = ((void*)0);
 struct sbc_softc *scp;
 struct sndcard_func *func;
 u_int32_t logical_id = isa_get_logicalid(dev);
     int flags = device_get_flags(dev);
 int f, dh, dl, x, irq, i;

     if (!logical_id && (flags & DV_F_DUAL_DMA)) {
         bus_set_resource(dev, SYS_RES_DRQ, 1,
     flags & DV_F_DRQ_MASK, 1);
     }

 scp = device_get_softc(dev);
 bzero(scp, sizeof(*scp));
 scp->dev = dev;
 sbc_lockinit(scp);
 err = "alloc_resource";
 if (alloc_resource(scp)) goto bad;

 err = "sb_reset_dsp";
 if (sb_reset_dsp(scp->io[0])) goto bad;
 err = "sb_identify_board";
 scp->bd_ver = sb_identify_board(scp->io[0]) & 0x00000fff;
 if (scp->bd_ver == 0) goto bad;
 f = 0;
 if (logical_id == 0x01200000 && scp->bd_ver < 0x0400) scp->bd_ver = 0x0499;
 switch ((scp->bd_ver & 0x0f00) >> 8) {
     case 1:
  break;

     case 2:
  f |= BD_F_DUP_MIDI;
  if (scp->bd_ver > 0x200) f |= BD_F_MIX_CT1335;
  break;

 case 5:
  f |= BD_F_ESS;
  scp->bd_ver = 0x0301;
     case 3:
  f |= BD_F_DUP_MIDI | BD_F_MIX_CT1345;
  break;

     case 4:
      f |= BD_F_SB16 | BD_F_MIX_CT1745;
  if (scp->drq[0]) dl = rman_get_start(scp->drq[0]); else dl = -1;
  if (scp->drq[1]) dh = rman_get_start(scp->drq[1]); else dh = dl;
  if (!logical_id && (dh < dl)) {
   struct resource *r;
   r = scp->drq[0];
   scp->drq[0] = scp->drq[1];
   scp->drq[1] = r;
   dl = rman_get_start(scp->drq[0]);
   dh = rman_get_start(scp->drq[1]);
  }

  x = -1;
  irq = rman_get_start(scp->irq[0]);
  if (irq == 5) x = 2;
  else if (irq == 7) x = 4;
  else if (irq == 9) x = 1;
  else if (irq == 10) x = 8;
  if (x == -1) {
   err = "bad irq (5/7/9/10 valid)";
   goto bad;
  }
  else sb_setmixer(scp->io[0], IRQ_NR, x);
  sb_setmixer(scp->io[0], DMA_NR, (1 << dh) | (1 << dl));
  if (bootverbose) {
   device_printf(dev, "setting card to irq %d, drq %d", irq, dl);
   if (dl != dh) printf(", %d", dh);
   printf("\n");
      }
  break;
     }

 switch (logical_id) {
     case 0x43008c0e:
 case 0x01200000:
 case 0x01000000:
  f |= BD_F_SB16X;
  break;
 }
 scp->bd_ver |= f << 16;

 err = "setup_intr";
 for (i = 0; i < IRQ_MAX; i++) {
  scp->ihl[i].parent = scp;
  if (snd_setup_intr(dev, scp->irq[i], 0, sbc_intr, &scp->ihl[i], &scp->ih[i]))
   goto bad;
 }


 func = malloc(sizeof(struct sndcard_func), M_DEVBUF, M_NOWAIT | M_ZERO);
 if (func == ((void*)0)) goto bad;
 func->func = SCF_PCM;
 scp->child_pcm = device_add_child(dev, "pcm", -1);
 device_set_ivars(scp->child_pcm, func);


 func = malloc(sizeof(struct sndcard_func), M_DEVBUF, M_NOWAIT | M_ZERO);
 if (func == ((void*)0)) goto bad;
 func->func = SCF_MIDI;
 scp->child_midi1 = device_add_child(dev, "midi", -1);
 device_set_ivars(scp->child_midi1, func);


 func = malloc(sizeof(struct sndcard_func), M_DEVBUF, M_NOWAIT | M_ZERO);
 if (func == ((void*)0)) goto bad;
 func->func = SCF_SYNTH;
 scp->child_midi2 = device_add_child(dev, "midi", -1);
 device_set_ivars(scp->child_midi2, func);


 bus_generic_attach(dev);

 return (0);

bad: if (err) device_printf(dev, "%s\n", err);
 release_resource(scp);
 return (ENXIO);
}
