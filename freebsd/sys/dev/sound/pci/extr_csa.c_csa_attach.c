
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_10__ ;


struct sndcard_func {int func; TYPE_1__* varinfo; } ;
typedef TYPE_2__* sc_p ;
typedef int device_t ;
struct TYPE_16__ {int * io; void* io_rid; int * mem; void* mem_rid; int * irq; void* irq_rid; } ;
typedef TYPE_3__ csa_res ;
struct TYPE_14__ {TYPE_10__* card; } ;
struct TYPE_15__ {int ih; void* midi; TYPE_1__ binfo; void* pcm; TYPE_10__* card; TYPE_3__ res; int dev; } ;
struct TYPE_13__ {char* name; } ;


 int BA0_HICR ;
 int BA0_HISR ;
 int ENOMEM ;
 int ENXIO ;
 int HICR_CHGM ;
 int HICR_IEV ;
 int HISR_INTENA ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int M_ZERO ;
 void* PCIR_BAR (int) ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SCF_MIDI ;
 int SCF_PCM ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 void* bus_alloc_resource_any (int ,int ,void**,int) ;
 int bus_generic_attach (int ) ;
 int bus_release_resource (int ,int ,void*,int *) ;
 int bus_teardown_intr (int ,int *,int ) ;
 int bzero (TYPE_2__*,int) ;
 scalar_t__ csa_downloadimage (TYPE_3__*) ;
 TYPE_10__* csa_findsubcard (int ) ;
 scalar_t__ csa_initialize (TYPE_2__*) ;
 int csa_intr ;
 int csa_readio (TYPE_3__*,int ) ;
 int csa_resetdsp (TYPE_3__*) ;
 int csa_writeio (TYPE_3__*,int ,int) ;
 void* device_add_child (int ,char*,int) ;
 TYPE_2__* device_get_softc (int ) ;
 int device_set_ivars (void*,struct sndcard_func*) ;
 struct sndcard_func* malloc (int,int ,int) ;
 int pci_enable_busmaster (int ) ;
 int printf (char*,char*) ;
 scalar_t__ snd_setup_intr (int ,int *,int ,int ,TYPE_2__*,int *) ;

__attribute__((used)) static int
csa_attach(device_t dev)
{
 sc_p scp;
 csa_res *resp;
 struct sndcard_func *func;
 int error = ENXIO;

 scp = device_get_softc(dev);


 bzero(scp, sizeof(*scp));
 scp->dev = dev;

 pci_enable_busmaster(dev);


 resp = &scp->res;
 scp->card = csa_findsubcard(dev);
 scp->binfo.card = scp->card;
 printf("csa: card is %s\n", scp->card->name);
 resp->io_rid = PCIR_BAR(0);
 resp->io = bus_alloc_resource_any(dev, SYS_RES_MEMORY,
  &resp->io_rid, RF_ACTIVE);
 if (resp->io == ((void*)0))
  return (ENXIO);
 resp->mem_rid = PCIR_BAR(1);
 resp->mem = bus_alloc_resource_any(dev, SYS_RES_MEMORY,
  &resp->mem_rid, RF_ACTIVE);
 if (resp->mem == ((void*)0))
  goto err_io;
 resp->irq_rid = 0;
 resp->irq = bus_alloc_resource_any(dev, SYS_RES_IRQ,
  &resp->irq_rid, RF_ACTIVE | RF_SHAREABLE);
 if (resp->irq == ((void*)0))
  goto err_mem;


 if (snd_setup_intr(dev, resp->irq, 0, csa_intr, scp, &scp->ih))
  goto err_intr;






 if (csa_initialize(scp))
  goto err_teardown;


 csa_resetdsp(resp);


 if (csa_downloadimage(resp))
  goto err_teardown;




 func = malloc(sizeof(struct sndcard_func), M_DEVBUF, M_NOWAIT | M_ZERO);
 if (func == ((void*)0)) {
  error = ENOMEM;
  goto err_teardown;
 }
 func->varinfo = &scp->binfo;
 func->func = SCF_PCM;
 scp->pcm = device_add_child(dev, "pcm", -1);
 device_set_ivars(scp->pcm, func);


 func = malloc(sizeof(struct sndcard_func), M_DEVBUF, M_NOWAIT | M_ZERO);
 if (func == ((void*)0)) {
  error = ENOMEM;
  goto err_teardown;
 }
 func->varinfo = &scp->binfo;
 func->func = SCF_MIDI;
 scp->midi = device_add_child(dev, "midi", -1);
 device_set_ivars(scp->midi, func);

 bus_generic_attach(dev);

 return (0);

err_teardown:
 bus_teardown_intr(dev, resp->irq, scp->ih);
err_intr:
 bus_release_resource(dev, SYS_RES_IRQ, resp->irq_rid, resp->irq);
err_mem:
 bus_release_resource(dev, SYS_RES_MEMORY, resp->mem_rid, resp->mem);
err_io:
 bus_release_resource(dev, SYS_RES_MEMORY, resp->io_rid, resp->io);
 return (error);
}
