
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dc_softc {int * dc_srom; int dc_dev; } ;
typedef int caddr_t ;


 int DC_ROM_SIZE (int) ;
 int ENOMEM ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int M_ZERO ;
 int dc_read_eeprom (struct dc_softc*,int ,int ,int,int ) ;
 int device_printf (int ,char*) ;
 int * malloc (int,int ,int) ;

__attribute__((used)) static int
dc_read_srom(struct dc_softc *sc, int bits)
{
 int size;

 size = DC_ROM_SIZE(bits);
 sc->dc_srom = malloc(size, M_DEVBUF, M_NOWAIT | M_ZERO);
 if (sc->dc_srom == ((void*)0)) {
  device_printf(sc->dc_dev, "Could not allocate SROM buffer\n");
  return (ENOMEM);
 }
 dc_read_eeprom(sc, (caddr_t)sc->dc_srom, 0, (size / 2), 0);
 return (0);
}
