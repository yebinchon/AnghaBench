
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cryptoini {size_t cri_alg; struct cryptoini* cri_next; } ;
struct cryptocap {scalar_t__* cc_alg; } ;



__attribute__((used)) static int
driver_suitable(const struct cryptocap *cap, const struct cryptoini *cri)
{
 const struct cryptoini *cr;


 for (cr = cri; cr; cr = cr->cri_next)
  if (cap->cc_alg[cr->cri_alg] == 0)
   return 0;
 return 1;
}
