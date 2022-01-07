
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_mad_mgmt_vendor_class {int * oui; } ;


 int MAX_MGMT_OUI ;
 int memcmp (int ,char const*,int) ;

__attribute__((used)) static int find_vendor_oui(struct ib_mad_mgmt_vendor_class *vendor_class,
      const char *oui)
{
 int i;

 for (i = 0; i < MAX_MGMT_OUI; i++)

  if (!memcmp(vendor_class->oui[i], oui, 3))
   return i;

 return -1;
}
