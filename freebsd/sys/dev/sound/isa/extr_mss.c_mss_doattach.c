
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mss_info {int bd_id; int bufsize; int irq; int io_base; int parent_dmat; int ih; int drq2; int drq1; int lock; } ;
typedef int device_t ;


 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXADDR_24BIT ;
 int DV_F_TRUE_MSS ;
 int ENXIO ;
 int Giant ;

 int MD_YM0020 ;
 int MSS_DEFAULT_BUFSZ ;
 int PCMDIR_PLAY ;
 int PCMDIR_REC ;
 int SD_F_SIMPLEX ;
 int SND_STATUSLEN ;
 scalar_t__ bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,int ,int,int,int ,int ,int *,int *) ;
 int bus_get_dma_tag (int ) ;
 int busdma_lock_mutex ;
 int device_get_flags (int ) ;
 int device_get_nameunit (int ) ;
 int device_printf (int ,char*) ;
 int io_rd (struct mss_info*,int) ;
 int io_wr (struct mss_info*,int ,char) ;
 int mixer_init (int ,int *,struct mss_info*) ;
 int mss_alloc_resources (struct mss_info*,int ) ;
 int mss_init (struct mss_info*,int ) ;
 int mss_intr ;
 int mss_release_resources (struct mss_info*,int ) ;
 int msschan_class ;
 int mssmix_mixer_class ;
 int opti931_intr ;
 int pcm_addchan (int ,int ,int *,struct mss_info*) ;
 int pcm_getbuffersize (int ,int,int ,int) ;
 int pcm_getflags (int ) ;
 scalar_t__ pcm_register (int ,struct mss_info*,int,int) ;
 int pcm_setflags (int ,int) ;
 int pcm_setstatus (int ,char*) ;
 int printf (char*,int,...) ;
 size_t rman_get_start (int ) ;
 int snd_mtxcreate (int ,char*) ;
 int snd_setup_intr (int ,int ,int ,int ,struct mss_info*,int *) ;
 int snprintf (char*,int,char*,size_t,...) ;
 int ymmix_mixer_class ;

__attribute__((used)) static int
mss_doattach(device_t dev, struct mss_info *mss)
{
     int pdma, rdma, flags = device_get_flags(dev);
     char status[SND_STATUSLEN], status2[SND_STATUSLEN];

 mss->lock = snd_mtxcreate(device_get_nameunit(dev), "snd_mss softc");
 mss->bufsize = pcm_getbuffersize(dev, 4096, MSS_DEFAULT_BUFSZ, 65536);
     if (!mss_alloc_resources(mss, dev)) goto no;
     mss_init(mss, dev);
 pdma = rman_get_start(mss->drq1);
 rdma = rman_get_start(mss->drq2);
     if (flags & DV_F_TRUE_MSS) {

  static char interrupt_bits[12] =
      {-1, -1, -1, -1, -1, 0x28, -1, 0x08, -1, 0x10, 0x18, 0x20};
  static char pdma_bits[4] = {1, 2, -1, 3};
  static char valid_rdma[4] = {1, 0, -1, 0};
  char bits;

  if (!mss->irq || (bits = interrupt_bits[rman_get_start(mss->irq)]) == -1)
   goto no;
  io_wr(mss, 0, bits | 0x40);
  if ((io_rd(mss, 3) & 0x40) == 0) device_printf(dev, "IRQ Conflict?\n");

  if (pdma_bits[pdma] == -1) goto no;
  bits |= pdma_bits[pdma];
  if (pdma != rdma) {
       if (rdma == valid_rdma[pdma]) bits |= 4;
       else {
    printf("invalid dual dma config %d:%d\n", pdma, rdma);
    goto no;
       }
  }
  io_wr(mss, 0, bits);
  printf("drq/irq conf %x\n", io_rd(mss, 0));
     }
     mixer_init(dev, (mss->bd_id == MD_YM0020)? &ymmix_mixer_class : &mssmix_mixer_class, mss);
     switch (mss->bd_id) {
     case 128:
  snd_setup_intr(dev, mss->irq, 0, opti931_intr, mss, &mss->ih);
  break;
     default:
  snd_setup_intr(dev, mss->irq, 0, mss_intr, mss, &mss->ih);
     }
     if (pdma == rdma)
  pcm_setflags(dev, pcm_getflags(dev) | SD_F_SIMPLEX);
     if (bus_dma_tag_create( bus_get_dma_tag(dev), 2,
               0,
              BUS_SPACE_MAXADDR_24BIT,
               BUS_SPACE_MAXADDR,
             ((void*)0), ((void*)0),
              mss->bufsize, 1,
              0x3ffff, 0,
               busdma_lock_mutex, &Giant,
   &mss->parent_dmat) != 0) {
  device_printf(dev, "unable to create dma tag\n");
  goto no;
     }

     if (pdma != rdma)
  snprintf(status2, SND_STATUSLEN, ":%d", rdma);
 else
  status2[0] = '\0';

     snprintf(status, SND_STATUSLEN, "at io 0x%jx irq %jd drq %d%s bufsz %u",
           rman_get_start(mss->io_base), rman_get_start(mss->irq), pdma, status2, mss->bufsize);

     if (pcm_register(dev, mss, 1, 1)) goto no;
     pcm_addchan(dev, PCMDIR_REC, &msschan_class, mss);
     pcm_addchan(dev, PCMDIR_PLAY, &msschan_class, mss);
     pcm_setstatus(dev, status);

     return 0;
no:
     mss_release_resources(mss, dev);
     return ENXIO;
}
