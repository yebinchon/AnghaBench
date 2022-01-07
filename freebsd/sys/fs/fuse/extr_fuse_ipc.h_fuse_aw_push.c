
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fuse_ticket {TYPE_1__* tk_data; int tk_refcount; } ;
struct TYPE_2__ {int aw_head; int aw_mtx; } ;


 int MA_OWNED ;
 int TAILQ_INSERT_TAIL (int *,struct fuse_ticket*,int ) ;
 int mtx_assert (int *,int ) ;
 int refcount_acquire (int *) ;
 int tk_aw_link ;

__attribute__((used)) static inline void
fuse_aw_push(struct fuse_ticket *ftick)
{
 mtx_assert(&ftick->tk_data->aw_mtx, MA_OWNED);
 refcount_acquire(&ftick->tk_refcount);
 TAILQ_INSERT_TAIL(&ftick->tk_data->aw_head, ftick, tk_aw_link);
}
