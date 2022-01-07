
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xl_softc {int xl_media; scalar_t__ xl_xcvr; scalar_t__ xl_type; int xl_dev; } ;


 int XL_MEDIAOPT_10FL ;
 int XL_MEDIAOPT_MASK ;
 int XL_MEDIAOPT_VCO ;
 scalar_t__ XL_TYPE_905B ;
 scalar_t__ XL_XCVR_AUTO ;
 int device_printf (int ,char*,...) ;
 int xl_choose_xcvr (struct xl_softc*,int) ;

__attribute__((used)) static void
xl_mediacheck(struct xl_softc *sc)
{







 if (sc->xl_media & (XL_MEDIAOPT_MASK & ~XL_MEDIAOPT_VCO)) {




  if (sc->xl_xcvr <= XL_XCVR_AUTO)
   return;
  else {
   device_printf(sc->xl_dev,
       "bogus xcvr value in EEPROM (%x)\n", sc->xl_xcvr);
   device_printf(sc->xl_dev,
       "choosing new default based on card type\n");
  }
 } else {
  if (sc->xl_type == XL_TYPE_905B &&
      sc->xl_media & XL_MEDIAOPT_10FL)
   return;
  device_printf(sc->xl_dev,
"WARNING: no media options bits set in the media options register!!\n");
  device_printf(sc->xl_dev,
"this could be a manufacturing defect in your adapter or system\n");
  device_printf(sc->xl_dev,
"attempting to guess media type; you should probably consult your vendor\n");
 }

 xl_choose_xcvr(sc, 1);
}
