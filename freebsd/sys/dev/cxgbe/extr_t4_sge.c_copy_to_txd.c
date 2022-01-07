
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sge_eq {size_t sidx; int * desc; } ;
typedef int caddr_t ;


 int MPASS (int) ;
 scalar_t__ __predict_true (int) ;
 int bcopy (int,void*,int) ;

__attribute__((used)) static inline void
copy_to_txd(struct sge_eq *eq, caddr_t from, caddr_t *to, int len)
{

 MPASS((uintptr_t)(*to) >= (uintptr_t)&eq->desc[0]);
 MPASS((uintptr_t)(*to) < (uintptr_t)&eq->desc[eq->sidx]);

 if (__predict_true((uintptr_t)(*to) + len <=
     (uintptr_t)&eq->desc[eq->sidx])) {
  bcopy(from, *to, len);
  (*to) += len;
 } else {
  int portion = (uintptr_t)&eq->desc[eq->sidx] - (uintptr_t)(*to);

  bcopy(from, *to, portion);
  from += portion;
  portion = len - portion;
  bcopy(from, (void *)eq->desc, portion);
  (*to) = (caddr_t)eq->desc + portion;
 }
}
