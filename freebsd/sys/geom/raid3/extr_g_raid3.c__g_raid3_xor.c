
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int KASSERT (int,char*) ;

__attribute__((used)) static void
_g_raid3_xor(uint64_t *src, uint64_t *dst, size_t size)
{

 KASSERT((size % 128) == 0, ("Invalid size: %zu.", size));
 for (; size > 0; size -= 128) {
  *dst++ ^= (*src++);
  *dst++ ^= (*src++);
  *dst++ ^= (*src++);
  *dst++ ^= (*src++);
  *dst++ ^= (*src++);
  *dst++ ^= (*src++);
  *dst++ ^= (*src++);
  *dst++ ^= (*src++);
  *dst++ ^= (*src++);
  *dst++ ^= (*src++);
  *dst++ ^= (*src++);
  *dst++ ^= (*src++);
  *dst++ ^= (*src++);
  *dst++ ^= (*src++);
  *dst++ ^= (*src++);
  *dst++ ^= (*src++);
 }
}
