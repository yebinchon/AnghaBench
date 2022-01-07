
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
struct cs4231_softc {int sc_codecv; int sc_chipvid; int sc_dev; } ;


 int CS_CODEC_ID_MASK ;
 int CS_MISC_INFO ;
 int CS_VERSION_CHIPID ;
 int CS_VERSION_ID ;
 int CS_VERSION_NUMBER ;
 int cs4231_read (struct cs4231_softc*,int ) ;
 int device_printf (int ,char*,int,...) ;

__attribute__((used)) static void
cs4231_getversion(struct cs4231_softc *sc)
{
 u_int8_t v;

 v = cs4231_read(sc, CS_MISC_INFO);
 sc->sc_codecv = v & CS_CODEC_ID_MASK;
 v = cs4231_read(sc, CS_VERSION_ID);
 v &= (CS_VERSION_NUMBER | CS_VERSION_CHIPID);
 sc->sc_chipvid = v;
 switch(v) {
  case 0x80:
   device_printf(sc->sc_dev, "<CS4231 Codec Id. %d>\n",
       sc->sc_codecv);
   break;
  case 0xa0:
   device_printf(sc->sc_dev, "<CS4231A Codec Id. %d>\n",
       sc->sc_codecv);
   break;
  case 0x82:
   device_printf(sc->sc_dev, "<CS4232 Codec Id. %d>\n",
       sc->sc_codecv);
   break;
  default:
   device_printf(sc->sc_dev,
       "<Unknown 0x%x Codec Id. %d\n", v, sc->sc_codecv);
   break;
 }
}
