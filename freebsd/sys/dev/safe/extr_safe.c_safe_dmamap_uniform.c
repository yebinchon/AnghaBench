
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct safe_operand {scalar_t__ nsegs; TYPE_1__* segs; } ;
struct TYPE_2__ {int ds_len; } ;


 int SAFE_MAX_DSIZE ;

__attribute__((used)) static int
safe_dmamap_uniform(const struct safe_operand *op)
{
 int result = 1;

 if (op->nsegs > 0) {
  int i;

  for (i = 0; i < op->nsegs-1; i++) {
   if (op->segs[i].ds_len % SAFE_MAX_DSIZE)
    return (0);
   if (op->segs[i].ds_len != SAFE_MAX_DSIZE)
    result = 2;
  }
 }
 return (result);
}
