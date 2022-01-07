
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int BHND_MFGID_BCM ;
 int BHND_MFGID_INVALID ;


uint16_t
siba_get_bhnd_mfgid(uint16_t ocp_vendor)
{
 switch (ocp_vendor) {
 case 128:
  return (BHND_MFGID_BCM);
 default:
  return (BHND_MFGID_INVALID);
 }
}
