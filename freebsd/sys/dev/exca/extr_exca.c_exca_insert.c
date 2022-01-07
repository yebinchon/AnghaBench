
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exca_softc {int dev; int pccarddev; } ;


 scalar_t__ CARD_ATTACH_CARD (int ) ;
 scalar_t__ device_is_attached (int ) ;
 int device_printf (int ,char*) ;

void
exca_insert(struct exca_softc *exca)
{
 if (device_is_attached(exca->pccarddev)) {
  if (CARD_ATTACH_CARD(exca->pccarddev) != 0)
   device_printf(exca->dev,
       "PC Card card activation failed\n");
 } else {
  device_printf(exca->dev,
      "PC Card inserted, but no pccard bus.\n");
 }
}
