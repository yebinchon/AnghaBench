
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {int dummy; } ;
struct ib_umem {int dummy; } ;
struct ib_pool_fmr {int dummy; } ;
struct TYPE_2__ {int qp_active; } ;


 int ib_fmr_pool_unmap (struct ib_pool_fmr*) ;
 int ib_umem_release (struct ib_umem*) ;
 TYPE_1__* sdp_sk (struct socket*) ;

void sdp_free_fmr(struct socket *sk, struct ib_pool_fmr **_fmr, struct ib_umem **_umem)
{
 if (!sdp_sk(sk)->qp_active)
  return;

 ib_fmr_pool_unmap(*_fmr);
 *_fmr = ((void*)0);

 ib_umem_release(*_umem);
 *_umem = ((void*)0);
}
