
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct umtx_pi {int dummy; } ;


 int MA_OWNED ;
 int mtx_assert (int *,int ) ;
 int umtx_lock ;
 struct umtx_pi* umtx_pi_next (struct umtx_pi*) ;

__attribute__((used)) static bool
umtx_pi_check_loop(struct umtx_pi *pi)
{
 struct umtx_pi *pi1;

 mtx_assert(&umtx_lock, MA_OWNED);
 if (pi == ((void*)0))
  return (0);
 pi1 = pi;
 for (;;) {
  pi = umtx_pi_next(pi);
  if (pi == ((void*)0))
   break;
  pi1 = umtx_pi_next(pi1);
  if (pi1 == ((void*)0))
   break;
  pi1 = umtx_pi_next(pi1);
  if (pi1 == ((void*)0))
   break;
  if (pi == pi1)
   return (1);
 }
 return (0);
}
