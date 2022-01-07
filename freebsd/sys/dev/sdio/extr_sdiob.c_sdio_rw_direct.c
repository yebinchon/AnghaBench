
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct sdiob_softc {int periph; } ;
typedef int device_t ;


 int cam_periph_lock (int ) ;
 int cam_periph_unlock (int ) ;
 struct sdiob_softc* device_get_softc (int ) ;
 int sdiob_rw_direct_sc (struct sdiob_softc*,int ,int ,int,int *) ;

__attribute__((used)) static int
sdio_rw_direct(device_t dev, uint8_t fn, uint32_t addr, bool wr,
    uint8_t *val)
{
 struct sdiob_softc *sc;
 int error;

 sc = device_get_softc(dev);
 cam_periph_lock(sc->periph);
 error = sdiob_rw_direct_sc(sc, fn, addr, wr, val);
 cam_periph_unlock(sc->periph);
 return (error);
}
