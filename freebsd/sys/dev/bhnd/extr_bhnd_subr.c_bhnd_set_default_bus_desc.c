
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_chipid {int chip_type; int chip_id; } ;
typedef int device_t ;
typedef int chip_name ;


 int BHND_CHIPID_MAX_NAMELEN ;




 int M_BHND ;
 int asprintf (char**,int ,char*,char*,char const*) ;
 int bhnd_format_chip_id (char*,int,int ) ;
 int device_set_desc (int ,char const*) ;
 int device_set_desc_copy (int ,char*) ;
 int free (char*,int ) ;

void
bhnd_set_default_bus_desc(device_t dev, const struct bhnd_chipid *chip_id)
{
 const char *bus_name;
 char *desc;
 char chip_name[BHND_CHIPID_MAX_NAMELEN];


 switch (chip_id->chip_type) {
 case 129:
  bus_name = "SIBA bus";
  break;
 case 131:
 case 130:
  bus_name = "BCMA bus";
  break;
 case 128:
  bus_name = "UBUS bus";
  break;
 default:
  bus_name = "Unknown Type";
  break;
 }


 bhnd_format_chip_id(chip_name, sizeof(chip_name),
      chip_id->chip_id);


 asprintf(&desc, M_BHND, "%s %s", chip_name, bus_name);
 if (desc != ((void*)0)) {
  device_set_desc_copy(dev, desc);
  free(desc, M_BHND);
 } else {
  device_set_desc(dev, bus_name);
 }

}
