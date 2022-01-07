
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static char *
get_device_type(uint32_t di)
{

 if (di & 0x4000)
  return ("SEP Target    ");
 if (di & 0x2000)
  return ("ATAPI Target  ");
 if (di & 0x400)
  return ("SAS Target    ");
 if (di & 0x200)
  return ("STP Target    ");
 if (di & 0x100)
  return ("SMP Target    ");
 if (di & 0x80)
  return ("SATA Target   ");
 if (di & 0x70)
  return ("SAS Initiator ");
 if (di & 0x8)
  return ("SATA Initiator");
 if ((di & 0x7) == 0)
  return ("No Device     ");
 return ("Unknown Device");
}
