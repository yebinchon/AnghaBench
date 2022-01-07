
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intr_vector {struct fire_icarg* iv_icarg; } ;
struct fire_softc {int dummy; } ;
struct fire_icarg {int fica_map; struct fire_softc* fica_sc; } ;


 int FIRE_PCI_READ_8 (struct fire_softc*,int ) ;
 int FIRE_PCI_WRITE_8 (struct fire_softc*,int ,int) ;
 int FO_PCI_IMAP_V ;

__attribute__((used)) static void
fire_intr_disable(void *arg)
{
 struct intr_vector *iv;
 struct fire_icarg *fica;
 struct fire_softc *sc;

 iv = arg;
 fica = iv->iv_icarg;
 sc = fica->fica_sc;
 FIRE_PCI_WRITE_8(sc, fica->fica_map,
     FIRE_PCI_READ_8(sc, fica->fica_map) & ~FO_PCI_IMAP_V);
}
