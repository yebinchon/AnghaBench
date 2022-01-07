
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sndcard_func {int dummy; } ;
struct csa_midi_softc {int * io; int io_rid; int mtx; int * mpu; int mpu_intr; int dev; } ;
typedef int device_t ;


 int BA0_HICR ;
 int BA0_MIDCR ;
 int ENOMEM ;
 int ENXIO ;
 int HICR_CHGM ;
 int HICR_IEV ;
 int MIDCR_MRST ;
 int MIDCR_RXE ;
 int MIDCR_TXE ;
 int MTX_DEF ;
 int PCIR_BAR (int ) ;
 int RF_ACTIVE ;
 int SYS_RES_MEMORY ;
 int * bus_alloc_resource_any (int ,int ,int *,int ) ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int bzero (struct csa_midi_softc*,int) ;
 int csamidi_midi_intr ;
 int csamidi_mpu_class ;
 int csamidi_writeio (struct csa_midi_softc*,int ,int) ;
 struct sndcard_func* device_get_ivars (int ) ;
 int device_get_nameunit (int ) ;
 struct csa_midi_softc* device_get_softc (int ) ;
 int * mpu401_init (int *,struct csa_midi_softc*,int ,int *) ;
 int mtx_init (int *,int ,char*,int ) ;

__attribute__((used)) static int
midicsa_attach(device_t dev)
{
 struct csa_midi_softc *scp;
 struct sndcard_func *func;
 int rc = ENXIO;

 scp = device_get_softc(dev);
 func = device_get_ivars(dev);

 bzero(scp, sizeof(struct csa_midi_softc));
 scp->dev = dev;


 scp->io_rid = PCIR_BAR(0);
 scp->io = bus_alloc_resource_any(dev, SYS_RES_MEMORY,
     &scp->io_rid, RF_ACTIVE);
 if (scp->io == ((void*)0))
  goto err0;


 scp->mpu = mpu401_init(&csamidi_mpu_class, scp, csamidi_midi_intr,
     &scp->mpu_intr);
 if (scp->mpu == ((void*)0)) {
  rc = ENOMEM;
  goto err1;
 }

 mtx_init(&scp->mtx, device_get_nameunit(dev), "csamidi softc",
     MTX_DEF);


 csamidi_writeio(scp, BA0_MIDCR, MIDCR_MRST);

 csamidi_writeio(scp, BA0_MIDCR, MIDCR_TXE | MIDCR_RXE);
 csamidi_writeio(scp, BA0_HICR, HICR_IEV | HICR_CHGM);

 return (0);
err1:
 bus_release_resource(dev, SYS_RES_MEMORY, scp->io_rid, scp->io);
 scp->io = ((void*)0);
err0:
 return (rc);
}
