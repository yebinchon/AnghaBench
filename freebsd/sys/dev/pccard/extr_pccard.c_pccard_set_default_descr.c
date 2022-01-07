
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int device_t ;


 int M_DEVBUF ;
 int M_WAITOK ;
 int device_set_desc_copy (int ,char*) ;
 int free (char*,int ) ;
 char* malloc (int,int ,int ) ;
 scalar_t__ pccard_get_product (int ,int*) ;
 scalar_t__ pccard_get_product_str (int ,char const**) ;
 scalar_t__ pccard_get_vendor (int ,int*) ;
 scalar_t__ pccard_get_vendor_str (int ,char const**) ;
 int snprintf (char*,int,char*,int,int) ;
 int sprintf (char*,char*,char const*,char const*) ;
 int strlen (char const*) ;

__attribute__((used)) static int
pccard_set_default_descr(device_t dev)
{
 const char *vendorstr, *prodstr;
 uint32_t vendor, prod;
 char *str;

 if (pccard_get_vendor_str(dev, &vendorstr))
  return (0);
 if (pccard_get_product_str(dev, &prodstr))
  return (0);
 if (vendorstr != ((void*)0) && prodstr != ((void*)0)) {
  str = malloc(strlen(vendorstr) + strlen(prodstr) + 2, M_DEVBUF,
      M_WAITOK);
  sprintf(str, "%s %s", vendorstr, prodstr);
  device_set_desc_copy(dev, str);
  free(str, M_DEVBUF);
 } else {
  if (pccard_get_vendor(dev, &vendor))
   return (0);
  if (pccard_get_product(dev, &prod))
   return (0);
  str = malloc(100, M_DEVBUF, M_WAITOK);
  snprintf(str, 100, "vendor=%#x product=%#x", vendor, prod);
  device_set_desc_copy(dev, str);
  free(str, M_DEVBUF);
 }
 return (0);
}
