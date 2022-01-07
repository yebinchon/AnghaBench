
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnxt_softc {int doorbell_bar; int hwrm_bar; } ;


 int bnxt_map_bar (struct bnxt_softc*,int *,int,int) ;

__attribute__((used)) static int
bnxt_pci_mapping(struct bnxt_softc *softc)
{
 int rc;

 rc = bnxt_map_bar(softc, &softc->hwrm_bar, 0, 1);
 if (rc)
  return rc;

 rc = bnxt_map_bar(softc, &softc->doorbell_bar, 2, 0);

 return rc;
}
