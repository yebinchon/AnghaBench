
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int vm_page_t ;
typedef int u_int ;
struct sglist {TYPE_1__* sg_segs; } ;
struct agp_i810_softc {TYPE_2__* match; } ;
typedef int device_t ;
typedef int bus_dma_tag_t ;
struct TYPE_4__ {unsigned long long busdma_addr_mask_sz; } ;
struct TYPE_3__ {int ss_len; int ss_paddr; } ;


 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_UNRESTRICTED ;
 int M_WAITOK ;
 int PAGE_SIZE ;
 int VM_PAGE_TO_PHYS (int ) ;
 int bus_dma_tag_create (int ,int,int ,unsigned long long,int ,int *,int *,int ,int ,int ,int ,int *,int *,int *) ;
 int bus_get_dma_tag (int ) ;
 struct agp_i810_softc* device_get_softc (int ) ;
 struct sglist* sglist_alloc (int,int ) ;
 int sglist_free (struct sglist*) ;

int
agp_intel_gtt_map_memory(device_t dev, vm_page_t *pages, u_int num_entries,
    struct sglist **sg_list)
{
 struct agp_i810_softc *sc;
 struct sglist *sg;
 int i;





 if (*sg_list != ((void*)0))
  return (0);
 sc = device_get_softc(dev);
 sg = sglist_alloc(num_entries, M_WAITOK );
 for (i = 0; i < num_entries; i++) {
  sg->sg_segs[i].ss_paddr = VM_PAGE_TO_PHYS(pages[i]);
  sg->sg_segs[i].ss_len = PAGE_SIZE;
 }
 *sg_list = sg;
 return (0);
}
