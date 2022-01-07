
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exca_softc {int pccarddev; } ;


 int CARD_DETACH_CARD (int ) ;
 scalar_t__ device_is_attached (int ) ;

void
exca_removal(struct exca_softc *exca)
{
 if (device_is_attached(exca->pccarddev))
  CARD_DETACH_CARD(exca->pccarddev);
}
