
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int ENXIO ;
 int pccard_get_product_str (int ,char const**) ;
 int pccard_get_vendor_str (int ,char const**) ;
 int puc_bfe_probe (int ,int *) ;
 int puc_pccard_rscom ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static int
puc_pccard_probe(device_t dev)
{
 const char *vendor, *product;
 int error;

 error = pccard_get_vendor_str(dev, &vendor);
 if (error)
  return(error);
 error = pccard_get_product_str(dev, &product);
 if (error)
  return(error);
 if (!strcmp(vendor, "PCMCIA") && !strcmp(product, "RS-COM 2P"))
  return (puc_bfe_probe(dev, &puc_pccard_rscom));

 return (ENXIO);
}
