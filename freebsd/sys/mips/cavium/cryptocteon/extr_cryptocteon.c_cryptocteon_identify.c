
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int driver_t ;
typedef int device_t ;


 int BUS_ADD_CHILD (int ,int ,char*,int ) ;
 int OCTEON_FEATURE_CRYPTO ;
 scalar_t__ octeon_has_feature (int ) ;

__attribute__((used)) static void
cryptocteon_identify(driver_t *drv, device_t parent)
{
 if (octeon_has_feature(OCTEON_FEATURE_CRYPTO))
  BUS_ADD_CHILD(parent, 0, "cryptocteon", 0);
}
