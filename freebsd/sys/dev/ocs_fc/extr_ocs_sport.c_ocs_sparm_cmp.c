
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int OCS_SERVICE_PARMS_LENGTH ;
 int sparms_cmp_mask ;

int
ocs_sparm_cmp(uint8_t *sp1, uint8_t *sp2)
{
 int i;
 int v;
 uint8_t *sp3 = (uint8_t*) &sparms_cmp_mask;

 for (i = 0; i < OCS_SERVICE_PARMS_LENGTH; i ++) {
  v = ((int)(sp1[i] & sp3[i])) - ((int)(sp2[i] & sp3[i]));
  if (v) {
   break;
  }
 }
 return v;
}
