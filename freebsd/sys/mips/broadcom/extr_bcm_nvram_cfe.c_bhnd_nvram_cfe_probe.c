
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcm_platform {int * nvram_cls; int * nvram_io; } ;
typedef int device_t ;


 int BUS_PROBE_NOWILDCARD ;
 int ENXIO ;
 int KASSERT (int ,char*) ;
 struct bcm_platform* bcm_get_platform () ;
 int bhnd_nvram_data_class_desc (int *) ;
 int device_set_desc (int ,int ) ;

__attribute__((used)) static int
bhnd_nvram_cfe_probe(device_t dev)
{
 struct bcm_platform *bp;


 bp = bcm_get_platform();
 if (bp->nvram_io == ((void*)0))
  return (ENXIO);

 KASSERT(bp->nvram_cls != ((void*)0), ("missing NVRAM class"));


 device_set_desc(dev, bhnd_nvram_data_class_desc(bp->nvram_cls));


 return (BUS_PROBE_NOWILDCARD);
}
