
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct safe_operand {int nsegs; TYPE_1__* segs; } ;
struct TYPE_2__ {int ds_addr; int ds_len; } ;



__attribute__((used)) static int
safe_dmamap_aligned(const struct safe_operand *op)
{
 int i;

 for (i = 0; i < op->nsegs; i++) {
  if (op->segs[i].ds_addr & 3)
   return (0);
  if (i != (op->nsegs - 1) && (op->segs[i].ds_len & 3))
   return (0);
 }
 return (1);
}
