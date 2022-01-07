
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint32_t ;


 scalar_t__ PCIC_BRIDGE ;
 scalar_t__ PCIS_BRIDGE_HOST ;
 int init_AMD_Elan_sc520 () ;
 scalar_t__ legacy_pcib_read_config (int ,int,int,int,int,int) ;
 int printf (char*) ;

__attribute__((used)) static const char *
legacy_pcib_is_host_bridge(int bus, int slot, int func,
     uint32_t id, uint8_t class, uint8_t subclass,
     uint8_t *busnum)
{
 const char *s = ((void*)0);

 *busnum = 0;
 if (class == PCIC_BRIDGE && subclass == PCIS_BRIDGE_HOST)
  s = "Host to PCI bridge";
 return s;

}
