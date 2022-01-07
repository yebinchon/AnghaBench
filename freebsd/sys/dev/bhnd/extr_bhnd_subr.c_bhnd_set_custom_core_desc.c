
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int M_BHND ;
 int asprintf (char**,int ,char*,char const*,char const*,int ) ;
 int bhnd_get_hwrev (int ) ;
 char* bhnd_get_vendor_name (int ) ;
 int device_set_desc (int ,char const*) ;
 int device_set_desc_copy (int ,char*) ;
 int free (char*,int ) ;

void
bhnd_set_custom_core_desc(device_t dev, const char *dev_name)
{
 const char *vendor_name;
 char *desc;

 vendor_name = bhnd_get_vendor_name(dev);
 asprintf(&desc, M_BHND, "%s %s, rev %hhu", vendor_name, dev_name,
     bhnd_get_hwrev(dev));

 if (desc != ((void*)0)) {
  device_set_desc_copy(dev, desc);
  free(desc, M_BHND);
 } else {
  device_set_desc(dev, dev_name);
 }
}
