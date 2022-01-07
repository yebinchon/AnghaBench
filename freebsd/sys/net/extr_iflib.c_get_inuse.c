
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int qidx_t ;


 int panic (char*) ;

__attribute__((used)) static inline qidx_t
get_inuse(int size, qidx_t cidx, qidx_t pidx, uint8_t gen)
{
 qidx_t used;

 if (pidx > cidx)
  used = pidx - cidx;
 else if (pidx < cidx)
  used = size - cidx + pidx;
 else if (gen == 0 && pidx == cidx)
  used = 0;
 else if (gen == 1 && pidx == cidx)
  used = size;
 else
  panic("bad state");

 return (used);
}
