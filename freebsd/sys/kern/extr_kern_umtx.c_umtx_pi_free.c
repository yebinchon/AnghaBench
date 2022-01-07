
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct umtx_pi {int dummy; } ;


 int atomic_add_int (int *,int) ;
 int uma_zfree (int ,struct umtx_pi*) ;
 int umtx_pi_allocated ;
 int umtx_pi_zone ;

__attribute__((used)) static inline void
umtx_pi_free(struct umtx_pi *pi)
{
 uma_zfree(umtx_pi_zone, pi);
 atomic_add_int(&umtx_pi_allocated, -1);
}
