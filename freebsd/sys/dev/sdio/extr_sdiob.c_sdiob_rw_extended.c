
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
 int sdiob_rw_extended_sc (struct sdiob_softc*,int ,int ,int,int ,int *,int) ;

__attribute__((used)) static int
sdiob_rw_extended(device_t dev, uint8_t fn, uint32_t addr, bool wr,
    uint32_t size, uint8_t *buffer, bool incaddr)
{
 struct sdiob_softc *sc;
 int error;

 sc = device_get_softc(dev);
 cam_periph_lock(sc->periph);
 error = sdiob_rw_extended_sc(sc, fn, addr, wr, size, buffer, incaddr);
 cam_periph_unlock(sc->periph);
 return (error);
}
