
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dmi_system_id {TYPE_1__* matches; } ;
struct TYPE_2__ {int slot; int substr; } ;







 int freeenv (char*) ;
 char* kern_getenv (char*) ;
 int nitems (TYPE_1__*) ;
 int strcmp (char*,int ) ;

__attribute__((used)) static bool
dmi_found(const struct dmi_system_id *dsi)
{
 char *hw_vendor, *hw_prod;
 int i, slot;
 bool res;

 hw_vendor = kern_getenv("smbios.planar.maker");
 hw_prod = kern_getenv("smbios.planar.product");
 res = 1;
 for (i = 0; i < nitems(dsi->matches); i++) {
  slot = dsi->matches[i].slot;
  switch (slot) {
  case 130:
   break;
  case 128:
  case 131:
   if (hw_vendor != ((void*)0) &&
       !strcmp(hw_vendor, dsi->matches[i].substr)) {
    break;
   } else {
    res = 0;
    goto out;
   }
  case 129:
  case 132:
   if (hw_prod != ((void*)0) &&
       !strcmp(hw_prod, dsi->matches[i].substr)) {
    break;
   } else {
    res = 0;
    goto out;
   }
  default:
   res = 0;
   goto out;
  }
 }
out:
 freeenv(hw_vendor);
 freeenv(hw_prod);

 return (res);
}
