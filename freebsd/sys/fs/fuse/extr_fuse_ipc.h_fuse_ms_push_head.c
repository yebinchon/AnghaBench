
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fuse_ticket {TYPE_1__* tk_data; int tk_refcount; } ;
struct TYPE_2__ {int ms_count; int ms_head; int ms_mtx; } ;


 int MA_OWNED ;
 int STAILQ_INSERT_HEAD (int *,struct fuse_ticket*,int ) ;
 int mtx_assert (int *,int ) ;
 int refcount_acquire (int *) ;
 int tk_ms_link ;

__attribute__((used)) static inline void
fuse_ms_push_head(struct fuse_ticket *ftick)
{
 mtx_assert(&ftick->tk_data->ms_mtx, MA_OWNED);
 refcount_acquire(&ftick->tk_refcount);
 STAILQ_INSERT_HEAD(&ftick->tk_data->ms_head, ftick, tk_ms_link);
 ftick->tk_data->ms_count++;
}
