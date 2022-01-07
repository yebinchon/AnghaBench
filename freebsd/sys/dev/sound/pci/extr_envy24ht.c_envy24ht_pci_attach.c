
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sc_info {int adcn; int dacn; scalar_t__ lock; scalar_t__ mt; int mtid; scalar_t__ cs; int csid; TYPE_2__* cfg; int * dac; int * adc; scalar_t__ dmat; scalar_t__ irq; int irqid; scalar_t__ ih; scalar_t__ chnum; int dev; } ;
typedef int device_t ;
struct TYPE_4__ {TYPE_1__* codec; } ;
struct TYPE_3__ {int (* destroy ) (int ) ;} ;


 int ENXIO ;
 int M_ENVY24HT ;
 int M_NOWAIT ;
 int PCMDIR_PLAY ;
 int PCMDIR_REC ;
 int SND_STATUSLEN ;
 int SYS_RES_IOPORT ;
 int SYS_RES_IRQ ;
 int bus_dma_tag_destroy (scalar_t__) ;
 int bus_release_resource (int ,int ,int ,scalar_t__) ;
 int bus_teardown_intr (int ,scalar_t__,scalar_t__) ;
 int bzero (struct sc_info*,int) ;
 int device_get_nameunit (int ) ;
 int device_printf (int ,char*) ;
 int envy24ht_alloc_resource (struct sc_info*) ;
 int envy24ht_cfgfree (TYPE_2__*) ;
 int envy24ht_dmafree (struct sc_info*) ;
 int envy24ht_init (struct sc_info*) ;
 int envy24htchan_class ;
 int envy24htmixer_class ;
 int free (struct sc_info*,int ) ;
 struct sc_info* malloc (int,int ,int ) ;
 int mixer_init (int ,int *,struct sc_info*) ;
 int pci_enable_busmaster (int ) ;
 int pcm_addchan (int ,int ,int *,struct sc_info*) ;
 int pcm_register (int ,struct sc_info*,int,int) ;
 int pcm_setstatus (int ,char*) ;
 scalar_t__ rman_get_end (scalar_t__) ;
 scalar_t__ rman_get_start (scalar_t__) ;
 scalar_t__ snd_mtxcreate (int ,char*) ;
 int snd_mtxfree (scalar_t__) ;
 int snprintf (char*,int,char*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int stub1 (int ) ;
 int stub2 (int ) ;

__attribute__((used)) static int
envy24ht_pci_attach(device_t dev)
{
 struct sc_info *sc;
 char status[SND_STATUSLEN];
 int err = 0;
 int i;





 if ((sc = malloc(sizeof(*sc), M_ENVY24HT, M_NOWAIT)) == ((void*)0)) {
  device_printf(dev, "cannot allocate softc\n");
  return ENXIO;
 }

 bzero(sc, sizeof(*sc));
 sc->lock = snd_mtxcreate(device_get_nameunit(dev),
     "snd_envy24ht softc");
 sc->dev = dev;


 pci_enable_busmaster(dev);


 err = envy24ht_alloc_resource(sc);
 if (err) {
  device_printf(dev, "unable to allocate system resources\n");
  goto bad;
 }


 err = envy24ht_init(sc);
 if (err) {
  device_printf(dev, "unable to initialize the card\n");
  goto bad;
 }


 mixer_init(dev, &envy24htmixer_class, sc);



 err = pcm_register(dev, sc, 1, 2 + sc->adcn);
 if (err)
  goto bad;
 sc->chnum = 0;

  pcm_addchan(dev, PCMDIR_PLAY, &envy24htchan_class, sc);
  sc->chnum++;

 for (i = 0; i < 2 + sc->adcn; i++) {
  pcm_addchan(dev, PCMDIR_REC, &envy24htchan_class, sc);
  sc->chnum++;
 }


 snprintf(status, SND_STATUSLEN,
     "at io 0x%jx:%jd,0x%jx:%jd irq %jd",
     rman_get_start(sc->cs),
     rman_get_end(sc->cs) - rman_get_start(sc->cs) + 1,
     rman_get_start(sc->mt),
     rman_get_end(sc->mt) - rman_get_start(sc->mt) + 1,
     rman_get_start(sc->irq));
 pcm_setstatus(dev, status);

 return 0;

bad:
 if (sc->ih)
  bus_teardown_intr(dev, sc->irq, sc->ih);
 if (sc->irq)
  bus_release_resource(dev, SYS_RES_IRQ, sc->irqid, sc->irq);
 envy24ht_dmafree(sc);
 if (sc->dmat)
  bus_dma_tag_destroy(sc->dmat);
        if (sc->cfg->codec->destroy != ((void*)0)) {
                for (i = 0; i < sc->adcn; i++)
                        sc->cfg->codec->destroy(sc->adc[i]);
                for (i = 0; i < sc->dacn; i++)
                        sc->cfg->codec->destroy(sc->dac[i]);
        }
 envy24ht_cfgfree(sc->cfg);
 if (sc->cs)
  bus_release_resource(dev, SYS_RES_IOPORT, sc->csid, sc->cs);
 if (sc->mt)
  bus_release_resource(dev, SYS_RES_IOPORT, sc->mtid, sc->mt);
 if (sc->lock)
  snd_mtxfree(sc->lock);
 free(sc, M_ENVY24HT);
 return err;
}
