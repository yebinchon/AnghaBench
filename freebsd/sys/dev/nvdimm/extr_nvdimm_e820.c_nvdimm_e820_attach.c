
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uintmax_t ;
typedef int uint32_t ;
struct bios_smap {scalar_t__ type; scalar_t__ length; scalar_t__ base; } ;
typedef int device_t ;
struct TYPE_2__ {scalar_t__ size; scalar_t__ start; } ;


 int ENXIO ;
 scalar_t__ SMAP_TYPE_PRAM ;
 int device_printf (int ,char*,...) ;
 int nvdimm_e820_create_spas (int ) ;
 unsigned int pram_nreg ;
 TYPE_1__* pram_segments ;
 struct bios_smap* smapbase ;

__attribute__((used)) static int
nvdimm_e820_attach(device_t dev)
{
 const struct bios_smap *smapend, *smap;
 uint32_t smapsize;
 unsigned nregions;
 int error;

 smapsize = *((const uint32_t *)smapbase - 1);
 smapend = (const void *)((const char *)smapbase + smapsize);

 for (nregions = 0, smap = smapbase; smap < smapend; smap++) {
  if (smap->type != SMAP_TYPE_PRAM || smap->length == 0)
   continue;
  pram_segments[nregions].start = smap->base;
  pram_segments[nregions].size = smap->length;

  device_printf(dev, "Found PRAM 0x%jx +0x%jx\n",
      (uintmax_t)smap->base, (uintmax_t)smap->length);

  nregions++;
 }

 if (nregions == 0) {
  device_printf(dev, "No e820 PRAM regions detected\n");
  return (ENXIO);
 }
 pram_nreg = nregions;

 error = nvdimm_e820_create_spas(dev);
 return (error);
}
