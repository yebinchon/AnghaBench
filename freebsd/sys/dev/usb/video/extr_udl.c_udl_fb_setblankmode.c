
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct udl_softc {scalar_t__ sc_fb_addr; } ;


 int M_WAITOK ;




 int memset (void*,int ,int const) ;
 int udl_get_fb_size (struct udl_softc*) ;
 int udl_power_save (struct udl_softc*,int,int ) ;

__attribute__((used)) static int
udl_fb_setblankmode(void *arg, int mode)
{
 struct udl_softc *sc = arg;

 switch (mode) {
 case 130:
  udl_power_save(sc, 1, M_WAITOK);
  break;
 case 131:
  udl_power_save(sc, 1, M_WAITOK);
  if (sc->sc_fb_addr != 0) {
   const uint32_t max = udl_get_fb_size(sc);

   memset((void *)sc->sc_fb_addr, 0, max);
  }
  break;
 case 129:
 case 128:
  udl_power_save(sc, 0, M_WAITOK);
  break;
 }
 return (0);
}
