
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* product_code_string; int dev; int connector; int media; } ;
typedef TYPE_1__ mxge_softc_t ;


 int IFM_10G_CX4 ;
 int IFM_AUTO ;
 int MXGE_CX4 ;
 int MXGE_QRF ;
 int MXGE_SFP ;
 int MXGE_XFP ;
 int device_printf (int ,char*,...) ;
 int ifmedia_removeall (int *) ;
 int mxge_media_set (TYPE_1__*,int ) ;
 char* strchr (char*,char) ;

__attribute__((used)) static void
mxge_media_init(mxge_softc_t *sc)
{
 char *ptr;
 int i;

 ifmedia_removeall(&sc->media);
 mxge_media_set(sc, IFM_AUTO);







 ptr = sc->product_code_string;
 if (ptr == ((void*)0)) {
  device_printf(sc->dev, "Missing product code\n");
  return;
 }

 for (i = 0; i < 3; i++, ptr++) {
  ptr = strchr(ptr, '-');
  if (ptr == ((void*)0)) {
   device_printf(sc->dev,
          "only %d dashes in PC?!?\n", i);
   return;
  }
 }
 if (*ptr == 'C' || *(ptr +1) == 'C') {

  sc->connector = MXGE_CX4;
  mxge_media_set(sc, IFM_10G_CX4);
 } else if (*ptr == 'Q') {

  sc->connector = MXGE_QRF;
  device_printf(sc->dev, "Quad Ribbon Fiber Media\n");

 } else if (*ptr == 'R') {

  sc->connector = MXGE_XFP;
 } else if (*ptr == 'S' || *(ptr +1) == 'S') {

  sc->connector = MXGE_SFP;
 } else {
  device_printf(sc->dev, "Unknown media type: %c\n", *ptr);
 }
}
