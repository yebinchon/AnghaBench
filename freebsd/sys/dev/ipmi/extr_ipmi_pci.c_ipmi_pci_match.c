
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
struct ipmi_ident {scalar_t__ vendor; scalar_t__ device; char const* desc; } ;


 struct ipmi_ident* ipmi_identifiers ;

const char *
ipmi_pci_match(uint16_t vendor, uint16_t device)
{
 struct ipmi_ident *m;

 for (m = ipmi_identifiers; m->vendor != 0; m++)
  if (m->vendor == vendor && m->device == device)
   return (m->desc);
 return (((void*)0));
}
