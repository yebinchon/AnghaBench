
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct dmar_unit {int dummy; } ;
typedef int device_t ;
typedef scalar_t__ devclass_t ;


 int FALSE ;
 int TRUE ;
 int bootverbose ;
 scalar_t__ devclass_find (char*) ;
 scalar_t__ device_get_devclass (int ) ;
 struct dmar_unit* dmar_find (int ,int ) ;
 struct dmar_unit* dmar_find_hpet (int ,int *) ;
 int dmar_get_requester (int ,int *) ;

__attribute__((used)) static struct dmar_unit *
dmar_ir_find(device_t src, uint16_t *rid, int *is_dmar)
{
 devclass_t src_class;
 struct dmar_unit *unit;
 if (is_dmar != ((void*)0))
  *is_dmar = FALSE;
 src_class = device_get_devclass(src);
 if (src_class == devclass_find("dmar")) {
  unit = ((void*)0);
  if (is_dmar != ((void*)0))
   *is_dmar = TRUE;
 } else if (src_class == devclass_find("hpet")) {
  unit = dmar_find_hpet(src, rid);
 } else {
  unit = dmar_find(src, bootverbose);
  if (unit != ((void*)0) && rid != ((void*)0))
   dmar_get_requester(src, rid);
 }
 return (unit);
}
