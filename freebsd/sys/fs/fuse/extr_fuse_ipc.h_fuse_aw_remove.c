
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * tqe_prev; int * tqe_next; } ;
struct fuse_ticket {TYPE_2__ tk_aw_link; TYPE_1__* tk_data; } ;
struct TYPE_3__ {int aw_head; int aw_mtx; } ;


 int MA_OWNED ;
 int TAILQ_REMOVE (int *,struct fuse_ticket*,int ) ;
 int mtx_assert (int *,int ) ;
 int tk_aw_link ;

__attribute__((used)) static inline void
fuse_aw_remove(struct fuse_ticket *ftick)
{
 mtx_assert(&ftick->tk_data->aw_mtx, MA_OWNED);
 TAILQ_REMOVE(&ftick->tk_data->aw_head, ftick, tk_aw_link);




}
