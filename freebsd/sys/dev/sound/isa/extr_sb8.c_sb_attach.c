
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sb_info {uintptr_t bd_id; uintptr_t bd_flags; int bufsize; int drq; int irq; int io_base; int parent_dmat; int ih; int parent_dev; } ;
typedef int device_t ;


 int BUS_READ_IVAR (int ,int ,int,uintptr_t*) ;
 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXADDR_24BIT ;
 int ENXIO ;
 int Giant ;
 int M_DEVBUF ;
 int M_WAITOK ;
 int M_ZERO ;
 int PCMDIR_PLAY ;
 int PCMDIR_REC ;
 int PCM_KLDSTRING (int ) ;
 int SB_DEFAULT_BUFSZ ;
 int SD_F_SIMPLEX ;
 int SND_STATUSLEN ;
 scalar_t__ bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,int ,int,int,int ,int ,int *,int *) ;
 int bus_get_dma_tag (int ) ;
 int busdma_lock_mutex ;
 int device_get_parent (int ) ;
 int device_printf (int ,char*) ;
 struct sb_info* malloc (int,int ,int) ;
 scalar_t__ mixer_init (int ,int *,struct sb_info*) ;
 int pcm_addchan (int ,int ,int *,struct sb_info*) ;
 int pcm_getbuffersize (int ,int,int ,int) ;
 int pcm_getflags (int ) ;
 scalar_t__ pcm_register (int ,struct sb_info*,int,int) ;
 int pcm_setflags (int ,int) ;
 int pcm_setstatus (int ,char*) ;
 int rman_get_start (int ) ;
 scalar_t__ sb_alloc_resources (struct sb_info*,int ) ;
 int sb_intr ;
 int sb_release_resources (struct sb_info*,int ) ;
 scalar_t__ sb_reset_dsp (struct sb_info*) ;
 int sbchan_class ;
 int sbmix_mixer_class ;
 int sbpromix_mixer_class ;
 int snd_sb8 ;
 scalar_t__ snd_setup_intr (int ,int ,int ,int ,struct sb_info*,int *) ;
 int snprintf (char*,int,char*,int ,int ,int ,int ,int ) ;

__attribute__((used)) static int
sb_attach(device_t dev)
{
     struct sb_info *sb;
     char status[SND_STATUSLEN];
 uintptr_t ver;

     sb = malloc(sizeof(*sb), M_DEVBUF, M_WAITOK | M_ZERO);
 sb->parent_dev = device_get_parent(dev);
 BUS_READ_IVAR(device_get_parent(dev), dev, 1, &ver);
 sb->bd_id = ver & 0x0000ffff;
 sb->bd_flags = (ver & 0xffff0000) >> 16;
 sb->bufsize = pcm_getbuffersize(dev, 4096, SB_DEFAULT_BUFSZ, 65536);

     if (sb_alloc_resources(sb, dev))
  goto no;
     if (sb_reset_dsp(sb))
  goto no;
     if (mixer_init(dev, (sb->bd_id < 0x300)? &sbmix_mixer_class : &sbpromix_mixer_class, sb))
  goto no;
 if (snd_setup_intr(dev, sb->irq, 0, sb_intr, sb, &sb->ih))
  goto no;

 pcm_setflags(dev, pcm_getflags(dev) | SD_F_SIMPLEX);

     if (bus_dma_tag_create( bus_get_dma_tag(dev), 2,
               0,
              BUS_SPACE_MAXADDR_24BIT,
               BUS_SPACE_MAXADDR,
             ((void*)0), ((void*)0),
              sb->bufsize, 1,
              0x3ffff, 0,
               busdma_lock_mutex, &Giant,
   &sb->parent_dmat) != 0) {
  device_printf(dev, "unable to create dma tag\n");
  goto no;
     }

     snprintf(status, SND_STATUSLEN, "at io 0x%jx irq %jd drq %jd bufsz %u %s",
           rman_get_start(sb->io_base), rman_get_start(sb->irq),
  rman_get_start(sb->drq), sb->bufsize, PCM_KLDSTRING(snd_sb8));

     if (pcm_register(dev, sb, 1, 1))
  goto no;
 pcm_addchan(dev, PCMDIR_REC, &sbchan_class, sb);
 pcm_addchan(dev, PCMDIR_PLAY, &sbchan_class, sb);

     pcm_setstatus(dev, status);

     return 0;

no:
     sb_release_resources(sb, dev);
     return ENXIO;
}
