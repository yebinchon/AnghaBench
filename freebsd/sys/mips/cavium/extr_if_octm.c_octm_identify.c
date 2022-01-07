
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int driver_t ;
typedef int device_t ;


 int BUS_ADD_CHILD (int ,int ,char*,unsigned int) ;
 unsigned int CVMX_MGMT_PORT_NUM_PORTS ;
 int OCTEON_FEATURE_MGMT_PORT ;
 int octeon_has_feature (int ) ;

__attribute__((used)) static void
octm_identify(driver_t *drv, device_t parent)
{
 unsigned i;

 if (!octeon_has_feature(OCTEON_FEATURE_MGMT_PORT))
  return;

 for (i = 0; i < CVMX_MGMT_PORT_NUM_PORTS; i++)
  BUS_ADD_CHILD(parent, 0, "octm", i);
}
