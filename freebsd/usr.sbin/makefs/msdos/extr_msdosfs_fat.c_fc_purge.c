
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct fatcache {scalar_t__ fc_frcn; } ;
struct denode {struct fatcache* de_fc; } ;


 scalar_t__ FCE_EMPTY ;
 int FC_SIZE ;

void
fc_purge(struct denode *dep, u_int frcn)
{
 int i;
 struct fatcache *fcp;

 fcp = dep->de_fc;
 for (i = 0; i < FC_SIZE; i++, fcp++) {
  if (fcp->fc_frcn >= frcn)
   fcp->fc_frcn = FCE_EMPTY;
 }
}
