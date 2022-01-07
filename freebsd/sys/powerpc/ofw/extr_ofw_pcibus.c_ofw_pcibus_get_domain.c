
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int bus_generic_get_domain (int ,int ,int*) ;
 int ofw_pcibus_parse_associativity (int ,int*) ;

int
ofw_pcibus_get_domain(device_t dev, device_t child, int *domain)
{
 int d, error;

 error = ofw_pcibus_parse_associativity(child, &d);

 if (error)
  return (bus_generic_get_domain(dev, child, domain));
 *domain = d;
 return (0);
}
