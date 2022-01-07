
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint64_t ;
typedef int u_int8_t ;
struct TYPE_2__ {scalar_t__ mac_addr_count; int * mac_addr_base; } ;


 int ENXIO ;
 scalar_t__ cvm_oct_mac_addr ;
 scalar_t__ cvm_oct_mac_addr_offset ;
 scalar_t__ cvmx_mgmt_port_num_ports () ;
 TYPE_1__* cvmx_sysinfo_get () ;
 int memcpy (int *,int *,int) ;

int cvm_assign_mac_address(uint64_t *macp, uint8_t *octets)
{

 if (cvm_oct_mac_addr == 0) {
  memcpy((uint8_t *)&cvm_oct_mac_addr + 2,
      cvmx_sysinfo_get()->mac_addr_base, 6);

  if (cvm_oct_mac_addr == 0)
   return ENXIO;

  cvm_oct_mac_addr_offset = cvmx_mgmt_port_num_ports();
  cvm_oct_mac_addr += cvm_oct_mac_addr_offset;
 }

 if (cvm_oct_mac_addr_offset >= cvmx_sysinfo_get()->mac_addr_count)
  return ENXIO;

 if (macp)
  *macp = cvm_oct_mac_addr;
 if (octets)
  memcpy(octets, (u_int8_t *)&cvm_oct_mac_addr + 2, 6);

 cvm_oct_mac_addr++;
 cvm_oct_mac_addr_offset++;

 return 0;
}
