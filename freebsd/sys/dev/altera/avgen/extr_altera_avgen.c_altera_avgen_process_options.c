
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct altera_avgen_softc {int avg_width; scalar_t__ avg_flags; int avg_dev; } ;
typedef int device_t ;





 scalar_t__ ALTERA_AVALON_FLAG_GEOM_READ ;
 scalar_t__ ALTERA_AVALON_FLAG_GEOM_WRITE ;
 scalar_t__ ALTERA_AVALON_FLAG_MMAP_EXEC ;
 scalar_t__ ALTERA_AVALON_FLAG_MMAP_READ ;
 scalar_t__ ALTERA_AVALON_FLAG_MMAP_WRITE ;
 scalar_t__ ALTERA_AVALON_FLAG_READ ;
 scalar_t__ ALTERA_AVALON_FLAG_WRITE ;
 char const ALTERA_AVALON_STR_DEVNAME ;
 int ALTERA_AVALON_STR_DEVUNIT ;
 int ALTERA_AVALON_STR_FILEIO ;
 int ALTERA_AVALON_STR_GEOMIO ;
 int ALTERA_AVALON_STR_MMAPIO ;
 int ALTERA_AVALON_STR_WIDTH ;
 int ENXIO ;
 int device_printf (int ,char*,int ,char const,...) ;

__attribute__((used)) static int
altera_avgen_process_options(struct altera_avgen_softc *sc,
    const char *str_fileio, const char *str_geomio, const char *str_mmapio,
    const char *str_devname, int devunit)
{
 const char *cp;
 device_t dev = sc->avg_dev;




 if (str_fileio == ((void*)0) && str_geomio == ((void*)0) && str_mmapio == ((void*)0)) {
  device_printf(dev,
      "at least one of %s, %s, or %s must be specified\n",
      ALTERA_AVALON_STR_FILEIO, ALTERA_AVALON_STR_GEOMIO,
      ALTERA_AVALON_STR_MMAPIO);
  return (ENXIO);
 }






 if (str_geomio != ((void*)0) && (str_fileio != ((void*)0) || str_mmapio != ((void*)0))) {
  device_printf(dev,
      "at most one of %s and (%s or %s) may be specified\n",
      ALTERA_AVALON_STR_GEOMIO, ALTERA_AVALON_STR_FILEIO,
      ALTERA_AVALON_STR_MMAPIO);
  return (ENXIO);
 }




 if (str_devname == ((void*)0) && devunit != -1) {
  device_printf(dev, "%s requires %s be specified\n",
      ALTERA_AVALON_STR_DEVUNIT, ALTERA_AVALON_STR_DEVNAME);
  return (ENXIO);
 }




 switch (sc->avg_width) {
 case 1:
 case 2:
 case 4:



  break;

 default:
  device_printf(dev, "%s unsupported value %u\n",
      ALTERA_AVALON_STR_WIDTH, sc->avg_width);
  return (ENXIO);
 }
 sc->avg_flags = 0;
 if (str_fileio != ((void*)0)) {
  for (cp = str_fileio; *cp != '\0'; cp++) {
   switch (*cp) {
   case 129:
    sc->avg_flags |= ALTERA_AVALON_FLAG_READ;
    break;

   case 128:
    sc->avg_flags |= ALTERA_AVALON_FLAG_WRITE;
    break;

   default:
    device_printf(dev,
        "invalid %s character %c\n",
        ALTERA_AVALON_STR_FILEIO, *cp);
    return (ENXIO);
   }
  }
 }
 if (str_geomio != ((void*)0)) {
  for (cp = str_geomio; *cp != '\0'; cp++){
   switch (*cp) {
   case 129:
    sc->avg_flags |= ALTERA_AVALON_FLAG_GEOM_READ;
    break;

   case 128:
    sc->avg_flags |= ALTERA_AVALON_FLAG_GEOM_WRITE;
    break;

   default:
    device_printf(dev,
        "invalid %s character %c\n",
        ALTERA_AVALON_STR_GEOMIO, *cp);
    return (ENXIO);
   }
  }
 }
 if (str_mmapio != ((void*)0)) {
  for (cp = str_mmapio; *cp != '\0'; cp++) {
   switch (*cp) {
   case 129:
    sc->avg_flags |= ALTERA_AVALON_FLAG_MMAP_READ;
    break;

   case 128:
    sc->avg_flags |=
        ALTERA_AVALON_FLAG_MMAP_WRITE;
    break;

   case 130:
    sc->avg_flags |= ALTERA_AVALON_FLAG_MMAP_EXEC;
    break;

   default:
    device_printf(dev,
        "invalid %s character %c\n",
        ALTERA_AVALON_STR_MMAPIO, *cp);
    return (ENXIO);
   }
  }
 }
 return (0);
}
