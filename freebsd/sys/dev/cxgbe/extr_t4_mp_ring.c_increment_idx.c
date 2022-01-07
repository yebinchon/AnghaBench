
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct mp_ring {int size; } ;


 int MPASS (int) ;

__attribute__((used)) static inline uint16_t
increment_idx(struct mp_ring *r, uint16_t idx, uint16_t n)
{
 int x = r->size - idx;

 MPASS(x > 0);
 return (x > n ? idx + n : n - x);
}
