
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct pccard_ivar {struct pccard_function* pf; } ;
struct pccard_function {scalar_t__ pf_ccr_offset; int pf_ccrh; int pf_ccrt; } ;
typedef int device_t ;


 int DEVPRINTF (int ) ;
 struct pccard_ivar* PCCARD_IVAR (int ) ;
 int bus_space_write_1 (int ,int ,scalar_t__,int ) ;

__attribute__((used)) static int
pccard_ccr_write_impl(device_t brdev, device_t child, uint32_t offset,
    uint8_t val)
{
 struct pccard_ivar *devi = PCCARD_IVAR(child);
 struct pccard_function *pf = devi->pf;





 DEVPRINTF((child, "ccr_write of %#x to %#x (%#x)\n", val, offset,
   devi->pf->pf_ccr_offset));
 bus_space_write_1(pf->pf_ccrt, pf->pf_ccrh, pf->pf_ccr_offset + offset,
     val);
 return 0;
}
