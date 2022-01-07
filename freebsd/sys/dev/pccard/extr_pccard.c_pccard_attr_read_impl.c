
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct pccard_ivar {struct pccard_function* pf; } ;
struct pccard_function {int ccr_base; int ccr_rid; int pf_ccrh; int pf_ccrt; } ;
typedef int device_t ;


 int CARD_SET_MEMORY_OFFSET (int ,int ,int ,int,int*) ;
 struct pccard_ivar* PCCARD_IVAR (int ) ;
 int PCCARD_MEM_PAGE_SIZE ;
 int bus_space_read_1 (int ,int ,int) ;

__attribute__((used)) static int
pccard_attr_read_impl(device_t brdev, device_t child, uint32_t offset,
    uint8_t *val)
{
 struct pccard_ivar *devi = PCCARD_IVAR(child);
 struct pccard_function *pf = devi->pf;






 if (offset / PCCARD_MEM_PAGE_SIZE ==
     pf->ccr_base / PCCARD_MEM_PAGE_SIZE)
  *val = bus_space_read_1(pf->pf_ccrt, pf->pf_ccrh,
      offset % PCCARD_MEM_PAGE_SIZE);
 else {
  CARD_SET_MEMORY_OFFSET(brdev, child, pf->ccr_rid, offset,
      &offset);
  *val = bus_space_read_1(pf->pf_ccrt, pf->pf_ccrh, offset);
  CARD_SET_MEMORY_OFFSET(brdev, child, pf->ccr_rid, pf->ccr_base,
      &offset);
 }
 return 0;
}
