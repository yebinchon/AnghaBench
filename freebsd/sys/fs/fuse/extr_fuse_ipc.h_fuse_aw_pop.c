
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fuse_ticket {int dummy; } ;
struct fuse_data {int aw_head; int aw_mtx; } ;


 int MA_OWNED ;
 struct fuse_ticket* TAILQ_FIRST (int *) ;
 int fuse_aw_remove (struct fuse_ticket*) ;
 int mtx_assert (int *,int ) ;

__attribute__((used)) static inline struct fuse_ticket *
fuse_aw_pop(struct fuse_data *data)
{
 struct fuse_ticket *ftick;

 mtx_assert(&data->aw_mtx, MA_OWNED);

 if ((ftick = TAILQ_FIRST(&data->aw_head)) != ((void*)0))
  fuse_aw_remove(ftick);

 return (ftick);
}
