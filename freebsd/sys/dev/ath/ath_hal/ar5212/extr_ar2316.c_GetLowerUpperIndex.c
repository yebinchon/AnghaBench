
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
typedef int const int16_t ;



__attribute__((used)) static void
GetLowerUpperIndex(int16_t v, const uint16_t *lp, uint16_t listSize,
                          uint32_t *vlo, uint32_t *vhi)
{
 int16_t target = v;
 const int16_t *ep = lp+listSize;
 const int16_t *tp;




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
   *vlo = *vhi = tp - (const int16_t *) lp;
   return;
  }




  if (target < tp[1]) {
   *vlo = tp - (const int16_t *) lp;
   *vhi = *vlo + 1;
   return;
  }
 }
}
