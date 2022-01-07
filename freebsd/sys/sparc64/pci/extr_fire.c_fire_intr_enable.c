
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long uint64_t ;
typedef scalar_t__ u_int ;
struct pcpu {unsigned long long pc_mid; int pc_cpuid; } ;
struct intr_vector {unsigned long long iv_mid; struct fire_icarg* iv_icarg; } ;
struct fire_softc {scalar_t__ sc_mode; } ;
struct fire_icarg {int fica_map; struct fire_softc* fica_sc; } ;


 scalar_t__ FIRE_MODE_OBERON ;
 unsigned long long FIRE_PCI_IMAP_T_JPID_MASK ;
 unsigned long long FIRE_PCI_IMAP_T_JPID_SHFT ;
 int FIRE_PCI_WRITE_8 (struct fire_softc*,int ,unsigned long long) ;
 unsigned long long FO_PCI_IMAP_INT_CTRL_NUM_MASK ;
 unsigned long long FO_PCI_IMAP_INT_CTRL_NUM_SHFT ;
 unsigned long long FO_PCI_IMAP_V ;
 unsigned long long OBERON_PCI_IMAP_T_DESTID_MASK ;
 unsigned long long OBERON_PCI_IMAP_T_DESTID_SHFT ;
 scalar_t__ mp_ncpus ;
 struct pcpu* pcpu_find (scalar_t__) ;

__attribute__((used)) static void
fire_intr_enable(void *arg)
{
 struct intr_vector *iv;
 struct fire_icarg *fica;
 struct fire_softc *sc;
 struct pcpu *pc;
 uint64_t mr;
 u_int ctrl, i;

 iv = arg;
 fica = iv->iv_icarg;
 sc = fica->fica_sc;
 mr = FO_PCI_IMAP_V;
 if (sc->sc_mode == FIRE_MODE_OBERON)
  mr |= (iv->iv_mid << OBERON_PCI_IMAP_T_DESTID_SHFT) &
      OBERON_PCI_IMAP_T_DESTID_MASK;
 else
  mr |= (iv->iv_mid << FIRE_PCI_IMAP_T_JPID_SHFT) &
      FIRE_PCI_IMAP_T_JPID_MASK;





 ctrl = 0;
 for (i = 0; i < mp_ncpus; ++i) {
  pc = pcpu_find(i);
  if (pc == ((void*)0) || iv->iv_mid != pc->pc_mid)
   continue;
  ctrl = pc->pc_cpuid % 4;
  break;
 }
 mr |= (1ULL << ctrl) << FO_PCI_IMAP_INT_CTRL_NUM_SHFT &
     FO_PCI_IMAP_INT_CTRL_NUM_MASK;
 FIRE_PCI_WRITE_8(sc, fica->fica_map, mr);
}
