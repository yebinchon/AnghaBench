
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct pccard_ivar {TYPE_1__* pf; } ;
typedef int device_t ;
struct TYPE_2__ {int pf_ccr_offset; } ;


 int DEVPRINTF (int ) ;
 struct pccard_ivar* PCCARD_IVAR (int ) ;
 int pccard_ccr_read (TYPE_1__*,int ) ;

__attribute__((used)) static int
pccard_ccr_read_impl(device_t brdev, device_t child, uint32_t offset,
    uint8_t *val)
{
 struct pccard_ivar *devi = PCCARD_IVAR(child);

 *val = pccard_ccr_read(devi->pf, offset);
 DEVPRINTF((child, "ccr_read of %#x (%#x) is %#x\n", offset,
   devi->pf->pf_ccr_offset, *val));
 return 0;
}
