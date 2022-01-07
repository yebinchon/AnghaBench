
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int min (int,int) ;

__attribute__((used)) static void
calculate_nqueues(int *t, int nc, const int c)
{
 int nq;

 if (*t > 0)
  return;
 nq = *t < 0 ? -*t : c;
 *t = min(nc, nq);
}
