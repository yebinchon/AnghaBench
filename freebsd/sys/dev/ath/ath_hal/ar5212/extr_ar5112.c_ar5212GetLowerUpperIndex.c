
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;



__attribute__((used)) static void
ar5212GetLowerUpperIndex(uint16_t v, uint16_t *lp, uint16_t listSize,
                          uint32_t *vlo, uint32_t *vhi)
{
 uint32_t target = v;
 uint16_t *ep = lp+listSize;
 uint16_t *tp;




 if (target < lp[0]) {
  *vlo = *vhi = 0;
  return;
 }
 if (target >= ep[-1]) {
  *vlo = *vhi = listSize - 1;
  return;
 }


 for (tp = lp; tp < ep; tp++) {




  if (*tp == target) {
   *vlo = *vhi = tp - lp;
   return;
  }




  if (target < tp[1]) {
   *vlo = tp - lp;
   *vhi = *vlo + 1;
   return;
  }
 }
}
