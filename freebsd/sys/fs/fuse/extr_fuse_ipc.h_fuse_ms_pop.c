
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * stqe_next; } ;
struct fuse_ticket {TYPE_1__ tk_ms_link; } ;
struct fuse_data {scalar_t__ ms_count; int ms_head; int ms_mtx; } ;


 int MA_OWNED ;
 int MPASS (int) ;
 struct fuse_ticket* STAILQ_FIRST (int *) ;
 int STAILQ_REMOVE_HEAD (int *,int ) ;
 int mtx_assert (int *,int ) ;
 int tk_ms_link ;

__attribute__((used)) static inline struct fuse_ticket *
fuse_ms_pop(struct fuse_data *data)
{
 struct fuse_ticket *ftick = ((void*)0);

 mtx_assert(&data->ms_mtx, MA_OWNED);

 if ((ftick = STAILQ_FIRST(&data->ms_head))) {
  STAILQ_REMOVE_HEAD(&data->ms_head, tk_ms_link);
  data->ms_count--;




 }

 return (ftick);
}
