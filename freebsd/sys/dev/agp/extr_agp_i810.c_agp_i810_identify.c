
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int driver_t ;
typedef int device_t ;


 scalar_t__ agp_i810_match (int ) ;
 int device_add_child (int ,char*,int) ;
 int * device_find_child (int ,char*,int) ;

__attribute__((used)) static void
agp_i810_identify(driver_t *driver, device_t parent)
{

 if (device_find_child(parent, "agp", -1) == ((void*)0) &&
     agp_i810_match(parent))
  device_add_child(parent, "agp", -1);
}
