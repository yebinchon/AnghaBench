
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fuse_ticket {int tk_aw_type; int tk_aw_fiov; int tk_aw_mtx; int tk_ms_type; int tk_ms_fiov; } ;
struct fuse_in_header {int dummy; } ;


 int FT_A_FIOV ;
 int FT_M_FIOV ;
 int MTX_DEF ;
 int bzero (struct fuse_ticket*,int) ;
 int fiov_init (int *,int) ;
 int mtx_init (int *,char*,int *,int ) ;

__attribute__((used)) static int
fticket_init(void *mem, int size, int flags)
{
 struct fuse_ticket *ftick = mem;

 bzero(ftick, sizeof(struct fuse_ticket));

 fiov_init(&ftick->tk_ms_fiov, sizeof(struct fuse_in_header));
 ftick->tk_ms_type = FT_M_FIOV;

 mtx_init(&ftick->tk_aw_mtx, "fuse answer delivery mutex", ((void*)0), MTX_DEF);
 fiov_init(&ftick->tk_aw_fiov, 0);
 ftick->tk_aw_type = FT_A_FIOV;

 return 0;
}
