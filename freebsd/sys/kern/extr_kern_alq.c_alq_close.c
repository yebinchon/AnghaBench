
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct alq {int dummy; } ;


 scalar_t__ ald_rem (struct alq*) ;
 int alq_destroy (struct alq*) ;

void
alq_close(struct alq *alq)
{

 if (ald_rem(alq) == 0)
  alq_destroy(alq);
}
