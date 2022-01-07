
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct umtx_pi {int pi_blocked; } ;


 int M_ZERO ;
 int TAILQ_INIT (int *) ;
 int atomic_add_int (int *,int) ;
 struct umtx_pi* uma_zalloc (int ,int) ;
 int umtx_pi_allocated ;
 int umtx_pi_zone ;

__attribute__((used)) static inline struct umtx_pi *
umtx_pi_alloc(int flags)
{
 struct umtx_pi *pi;

 pi = uma_zalloc(umtx_pi_zone, M_ZERO | flags);
 TAILQ_INIT(&pi->pi_blocked);
 atomic_add_int(&umtx_pi_allocated, 1);
 return (pi);
}
