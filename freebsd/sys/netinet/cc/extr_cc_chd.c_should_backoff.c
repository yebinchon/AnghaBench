
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct chd {int loss_compete; } ;


 int RANDOM_MAX ;
 scalar_t__ V_chd_loss_fair ;
 int V_chd_pmax ;
 int V_chd_qmin ;
 int V_chd_qthresh ;
 unsigned long random () ;

__attribute__((used)) static __inline int
should_backoff(int qdly, int maxqdly, struct chd *chd_data)
{
 unsigned long p, rand;

 rand = random();

 if (qdly < V_chd_qthresh) {
  chd_data->loss_compete = 0;
  p = (((RANDOM_MAX / 100) * V_chd_pmax) /
      (V_chd_qthresh - V_chd_qmin)) *
      (qdly - V_chd_qmin);
 } else {
  if (qdly > V_chd_qthresh) {
   p = (((RANDOM_MAX / 100) * V_chd_pmax) /
       (maxqdly - V_chd_qthresh)) *
       (maxqdly - qdly);
   if (V_chd_loss_fair && rand < p)
    chd_data->loss_compete = 1;
  } else {
   p = (RANDOM_MAX / 100) * V_chd_pmax;
   chd_data->loss_compete = 0;
  }
 }

 return (rand < p);
}
