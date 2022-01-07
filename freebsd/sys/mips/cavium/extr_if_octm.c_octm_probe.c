
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;
typedef int cvmx_mgmt_port_result_t ;






 int EIO ;
 int ENOBUFS ;
 int ENXIO ;
 int cvmx_mgmt_port_initialize (int ) ;
 int device_get_unit (int ) ;
 int device_set_desc (int ,char*) ;

__attribute__((used)) static int
octm_probe(device_t dev)
{
 cvmx_mgmt_port_result_t result;

 result = cvmx_mgmt_port_initialize(device_get_unit(dev));
 switch (result) {
 case 128:
  break;
 case 129:
  return (ENOBUFS);
 case 130:
  return (ENXIO);
 case 131:
  return (EIO);
 }

 device_set_desc(dev, "Cavium Octeon Management Ethernet");

 return (0);
}
