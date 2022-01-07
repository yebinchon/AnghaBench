
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {scalar_t__ tv_sec; } ;
struct sbbc_softc {int sc_res; } ;
typedef int device_t ;
typedef int bus_space_tag_t ;
typedef int bus_space_handle_t ;


 scalar_t__ SBBC_SRAM_READ_8 (scalar_t__) ;
 int SBBC_SRAM_WRITE_8 (scalar_t__,scalar_t__) ;
 scalar_t__ SBBC_TOD_OFF (int ) ;
 struct sbbc_softc* device_get_softc (int ) ;
 int rman_get_bushandle (int ) ;
 int rman_get_bustag (int ) ;
 scalar_t__ sbbc_toddata ;
 int tod_skew ;
 int tod_time ;

__attribute__((used)) static int
sbbc_tod_settime(device_t dev, struct timespec *ts)
{
 struct sbbc_softc *sc;
 bus_space_tag_t bst;
 bus_space_handle_t bsh;

 sc = device_get_softc(dev);
 bst = rman_get_bustag(sc->sc_res);
 bsh = rman_get_bushandle(sc->sc_res);

 SBBC_SRAM_WRITE_8(sbbc_toddata + SBBC_TOD_OFF(tod_skew), ts->tv_sec -
     SBBC_SRAM_READ_8(sbbc_toddata + SBBC_TOD_OFF(tod_time)));
 return (0);
}
