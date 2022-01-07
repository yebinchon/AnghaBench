
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
struct dcons_crom_softc {int unit; } ;
typedef int off_t ;


 int ADDR_HI (int) ;
 int ADDR_LO (int) ;
 int DCONS_CSR_KEY_RESET_HI ;
 int DCONS_CSR_KEY_RESET_LO ;
 scalar_t__ KERNBASE ;
 int crom_add_entry (int *,int ,int ) ;
 scalar_t__ idt ;
 scalar_t__ pmap_kextract (int ) ;

__attribute__((used)) static void
dcons_crom_expose_idt(struct dcons_crom_softc *sc)
{
 static off_t idt_paddr;



 idt_paddr = (char *)idt - (char *)KERNBASE;




 crom_add_entry(&sc->unit, DCONS_CSR_KEY_RESET_HI, ADDR_HI(idt_paddr));
 crom_add_entry(&sc->unit, DCONS_CSR_KEY_RESET_LO, ADDR_LO(idt_paddr));
}
