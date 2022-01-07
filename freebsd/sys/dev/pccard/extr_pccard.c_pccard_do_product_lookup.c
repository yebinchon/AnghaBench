
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct pccard_product {scalar_t__ pp_vendor; scalar_t__ pp_product; int ** pp_cis; scalar_t__ pp_name; } ;
typedef int (* pccard_product_match_fn ) (int ,struct pccard_product const*,int) ;
typedef int intmax_t ;
typedef int device_t ;


 scalar_t__ PCCARD_PRODUCT_ANY ;
 scalar_t__ PCCARD_VENDOR_ANY ;
 int device_printf (int ,char*,scalar_t__) ;
 int panic (char*,int ) ;
 scalar_t__ pccard_get_cis3_str (int ,char const**) ;
 scalar_t__ pccard_get_cis4_str (int ,char const**) ;
 scalar_t__ pccard_get_product (int ,scalar_t__*) ;
 scalar_t__ pccard_get_product_str (int ,char const**) ;
 scalar_t__ pccard_get_vendor (int ,scalar_t__*) ;
 scalar_t__ pccard_get_vendor_str (int ,char const**) ;
 scalar_t__ strcmp (int *,char const*) ;
 int stub1 (int ,struct pccard_product const*,int) ;

__attribute__((used)) static const struct pccard_product *
pccard_do_product_lookup(device_t bus, device_t dev,
    const struct pccard_product *tab, size_t ent_size,
    pccard_product_match_fn matchfn)
{
 const struct pccard_product *ent;
 int matches;
 uint32_t vendor;
 uint32_t prod;
 const char *vendorstr;
 const char *prodstr;
 const char *cis3str;
 const char *cis4str;






 if (pccard_get_vendor(dev, &vendor))
  return (((void*)0));
 if (pccard_get_product(dev, &prod))
  return (((void*)0));
 if (pccard_get_vendor_str(dev, &vendorstr))
  return (((void*)0));
 if (pccard_get_product_str(dev, &prodstr))
  return (((void*)0));
 if (pccard_get_cis3_str(dev, &cis3str))
  return (((void*)0));
 if (pccard_get_cis4_str(dev, &cis4str))
  return (((void*)0));
 for (ent = tab; ent->pp_vendor != 0; ent =
     (const struct pccard_product *) ((const char *) ent + ent_size)) {
  matches = 1;
  if (ent->pp_vendor == PCCARD_VENDOR_ANY &&
      ent->pp_product == PCCARD_PRODUCT_ANY &&
      ent->pp_cis[0] == ((void*)0) &&
      ent->pp_cis[1] == ((void*)0)) {
   if (ent->pp_name)
    device_printf(dev,
        "Total wildcard entry ignored for %s\n",
        ent->pp_name);
   continue;
  }
  if (matches && ent->pp_vendor != PCCARD_VENDOR_ANY &&
      vendor != ent->pp_vendor)
   matches = 0;
  if (matches && ent->pp_product != PCCARD_PRODUCT_ANY &&
      prod != ent->pp_product)
   matches = 0;
  if (matches && ent->pp_cis[0] &&
      (vendorstr == ((void*)0) ||
      strcmp(ent->pp_cis[0], vendorstr) != 0))
   matches = 0;
  if (matches && ent->pp_cis[1] &&
      (prodstr == ((void*)0) ||
      strcmp(ent->pp_cis[1], prodstr) != 0))
   matches = 0;
  if (matches && ent->pp_cis[2] &&
      (cis3str == ((void*)0) ||
      strcmp(ent->pp_cis[2], cis3str) != 0))
   matches = 0;
  if (matches && ent->pp_cis[3] &&
      (cis4str == ((void*)0) ||
      strcmp(ent->pp_cis[3], cis4str) != 0))
   matches = 0;
  if (matchfn != ((void*)0))
   matches = (*matchfn)(dev, ent, matches);
  if (matches)
   return (ent);
 }
 return (((void*)0));
}
