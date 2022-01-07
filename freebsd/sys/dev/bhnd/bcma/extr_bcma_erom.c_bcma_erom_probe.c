
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_erom_io {int dummy; } ;
struct bhnd_chipid {int chip_type; } ;
typedef int bhnd_erom_class_t ;





 int BUS_PROBE_DEFAULT ;
 int BUS_PROBE_GENERIC ;
 int EINVAL ;
 int ENXIO ;
 int bhnd_erom_read_chipid (struct bhnd_erom_io*,struct bhnd_chipid*) ;

__attribute__((used)) static int
bcma_erom_probe(bhnd_erom_class_t *cls, struct bhnd_erom_io *eio,
    const struct bhnd_chipid *hint, struct bhnd_chipid *cid)
{
 int error;



 if (hint != ((void*)0))
  return (EINVAL);


 if ((error = bhnd_erom_read_chipid(eio, cid)))
  return (error);


 switch (cid->chip_type) {
  case 130:
   return (BUS_PROBE_DEFAULT);

  case 129:
  case 128:
   return (BUS_PROBE_GENERIC);

  default:
   return (ENXIO);
 }
}
