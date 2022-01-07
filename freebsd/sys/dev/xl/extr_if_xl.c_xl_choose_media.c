
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xl_softc {int xl_xcvr; int xl_dev; int xl_media; int xl_type; } ;


 int IFM_100_FX ;
 int IFM_10_2 ;
 int IFM_10_5 ;
 int IFM_10_FL ;
 int IFM_10_T ;
 int IFM_ETHER ;
 int XL_LOCK (struct xl_softc*) ;
 int XL_MEDIAOPT_10FL ;
 int XL_TYPE_905B ;
 int XL_UNLOCK (struct xl_softc*) ;







 int device_printf (int ,char*,int) ;
 int xl_setmode (struct xl_softc*,int) ;

__attribute__((used)) static void
xl_choose_media(struct xl_softc *sc, int *media)
{

 XL_LOCK(sc);

 switch (sc->xl_xcvr) {
 case 132:
  *media = IFM_ETHER|IFM_10_T;
  xl_setmode(sc, *media);
  break;
 case 131:
  if (sc->xl_type == XL_TYPE_905B &&
      sc->xl_media == XL_MEDIAOPT_10FL) {
   *media = IFM_ETHER|IFM_10_FL;
   xl_setmode(sc, *media);
  } else {
   *media = IFM_ETHER|IFM_10_5;
   xl_setmode(sc, *media);
  }
  break;
 case 129:
  *media = IFM_ETHER|IFM_10_2;
  xl_setmode(sc, *media);
  break;
 case 130:
 case 133:
 case 128:

  break;
 case 134:
  *media = IFM_ETHER|IFM_100_FX;
  break;
 default:
  device_printf(sc->xl_dev, "unknown XCVR type: %d\n",
      sc->xl_xcvr);




  *media = IFM_ETHER|IFM_10_T;
  break;
 }

 XL_UNLOCK(sc);
}
