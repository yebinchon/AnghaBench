
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;







const char *
ocs_pci_model(uint16_t vendor, uint16_t device)
{
 switch (device) {
 case 131: return "OCE16002";
 case 130: return "OCE1600_VF";
 case 129: return "OCE50102";
 case 128: return "OCE50102_VR";
 default:
  break;
 }

 return "unknown";
}
