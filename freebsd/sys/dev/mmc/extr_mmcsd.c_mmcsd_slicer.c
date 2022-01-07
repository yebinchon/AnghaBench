
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmcsd_softc {scalar_t__ enh_size; int enh_base; struct mmcsd_part** part; } ;
struct mmcsd_part {TYPE_1__* disk; } ;
struct flash_slice {scalar_t__ size; int label; int base; } ;
typedef int name ;
typedef int device_t ;
struct TYPE_2__ {char* d_name; int d_unit; } ;


 int ENOMEM ;
 int ENXIO ;
 size_t EXT_CSD_PART_CONFIG_ACC_DEFAULT ;
 int MMCSD_LABEL_ENH ;
 int MMCSD_PART_NAMELEN ;
 struct mmcsd_softc* device_get_softc (int ) ;
 int snprintf (char*,int,char*,char*,int ) ;
 scalar_t__ strcmp (char*,char const*) ;

__attribute__((used)) static int
mmcsd_slicer(device_t dev, const char *provider,
    struct flash_slice *slices, int *nslices)
{
 char name[MMCSD_PART_NAMELEN];
 struct mmcsd_softc *sc;
 struct mmcsd_part *part;

 *nslices = 0;
 if (slices == ((void*)0))
  return (ENOMEM);

 sc = device_get_softc(dev);
 if (sc->enh_size == 0)
  return (ENXIO);

 part = sc->part[EXT_CSD_PART_CONFIG_ACC_DEFAULT];
 snprintf(name, sizeof(name), "%s%d", part->disk->d_name,
     part->disk->d_unit);
 if (strcmp(name, provider) != 0)
  return (ENXIO);

 *nslices = 1;
 slices[0].base = sc->enh_base;
 slices[0].size = sc->enh_size;
 slices[0].label = MMCSD_LABEL_ENH;
 return (0);
}
