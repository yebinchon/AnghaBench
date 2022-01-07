
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_paddr_t ;
typedef scalar_t__ vm_offset_t ;
struct pvo_entry {int dummy; } ;
struct ofw_map {int om_va; int om_len; int om_pa; int om_mode; } ;
typedef int register_t ;
typedef int phandle_t ;
typedef int pcell_t ;
typedef int mmu_t ;
typedef int cell_t ;
typedef int acells ;


 int CTR0 (int ,char*) ;
 int CTR3 (int ,char*,int,int,int) ;
 int DISABLE_TRANS (int ) ;
 int ENABLE_TRANS (int ) ;
 int KASSERT (int,char*) ;
 int KTR_PMAP ;
 scalar_t__ LPTE_M ;
 int OF_finddevice (char*) ;
 int OF_getencprop (int ,char*,int*,size_t) ;
 int PAGE_SIZE ;
 int PHYS_TO_DMAP (int) ;
 int PMAP_LOCK (int ) ;
 int PMAP_UNLOCK (int ) ;
 int VM_MEMATTR_DEFAULT ;
 int bzero (struct ofw_map*,size_t) ;
 scalar_t__ hw_direct_map ;
 int kernel_pmap ;
 scalar_t__ moea64_calc_wimg (scalar_t__,int ) ;
 int moea64_kenter (int ,scalar_t__,scalar_t__) ;
 struct pvo_entry* moea64_pvo_find_va (int ,scalar_t__) ;
 int om_cmp ;
 int panic (char*) ;
 int qsort (struct ofw_map*,size_t,int,int ) ;

__attribute__((used)) static void
moea64_add_ofw_mappings(mmu_t mmup, phandle_t mmu, size_t sz)
{
 struct ofw_map translations[sz/(4*sizeof(cell_t))];
 pcell_t acells, trans_cells[sz/sizeof(cell_t)];
 struct pvo_entry *pvo;
 register_t msr;
 vm_offset_t off;
 vm_paddr_t pa_base;
 int i, j;

 bzero(translations, sz);
 OF_getencprop(OF_finddevice("/"), "#address-cells", &acells,
     sizeof(acells));
 if (OF_getencprop(mmu, "translations", trans_cells, sz) == -1)
  panic("moea64_bootstrap: can't get ofw translations");

 CTR0(KTR_PMAP, "moea64_add_ofw_mappings: translations");
 sz /= sizeof(cell_t);
 for (i = 0, j = 0; i < sz; j++) {
  translations[j].om_va = trans_cells[i++];
  translations[j].om_len = trans_cells[i++];
  translations[j].om_pa = trans_cells[i++];
  if (acells == 2) {
   translations[j].om_pa <<= 32;
   translations[j].om_pa |= trans_cells[i++];
  }
  translations[j].om_mode = trans_cells[i++];
 }
 KASSERT(i == sz, ("Translations map has incorrect cell count (%d/%zd)",
     i, sz));

 sz = j;
 qsort(translations, sz, sizeof (*translations), om_cmp);

 for (i = 0; i < sz; i++) {
  pa_base = translations[i].om_pa;

  if ((translations[i].om_pa >> 32) != 0)
   panic("OFW translations above 32-bit boundary!");


  if (pa_base % PAGE_SIZE)
   panic("OFW translation not page-aligned (phys)!");
  if (translations[i].om_va % PAGE_SIZE)
   panic("OFW translation not page-aligned (virt)!");

  CTR3(KTR_PMAP, "translation: pa=%#zx va=%#x len=%#x",
      pa_base, translations[i].om_va, translations[i].om_len);



  DISABLE_TRANS(msr);
  for (off = 0; off < translations[i].om_len; off += PAGE_SIZE) {

   if (hw_direct_map &&
       translations[i].om_va == PHYS_TO_DMAP(pa_base) &&
       moea64_calc_wimg(pa_base + off, VM_MEMATTR_DEFAULT)
        == LPTE_M)
    continue;

   PMAP_LOCK(kernel_pmap);
   pvo = moea64_pvo_find_va(kernel_pmap,
       translations[i].om_va + off);
   PMAP_UNLOCK(kernel_pmap);
   if (pvo != ((void*)0))
    continue;

   moea64_kenter(mmup, translations[i].om_va + off,
       pa_base + off);
  }
  ENABLE_TRANS(msr);
 }
}
