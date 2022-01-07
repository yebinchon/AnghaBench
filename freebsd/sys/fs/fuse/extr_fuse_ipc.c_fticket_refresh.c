
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fuse_ticket {scalar_t__ tk_flag; int tk_aw_type; scalar_t__ tk_aw_bufsize; int * tk_aw_bufdata; scalar_t__ tk_aw_errno; int tk_aw_fiov; int tk_aw_ohead; int tk_ms_type; scalar_t__ tk_ms_bufsize; int * tk_ms_bufdata; int tk_ms_fiov; } ;
struct fuse_out_header {int dummy; } ;


 int FT_A_FIOV ;
 int FT_M_FIOV ;
 int FUSE_ASSERT_AW_DONE (struct fuse_ticket*) ;
 int FUSE_ASSERT_MS_DONE (struct fuse_ticket*) ;
 int bzero (int *,int) ;
 int fiov_refresh (int *) ;

__attribute__((used)) static inline
void
fticket_refresh(struct fuse_ticket *ftick)
{
 FUSE_ASSERT_MS_DONE(ftick);
 FUSE_ASSERT_AW_DONE(ftick);

 fiov_refresh(&ftick->tk_ms_fiov);
 ftick->tk_ms_bufdata = ((void*)0);
 ftick->tk_ms_bufsize = 0;
 ftick->tk_ms_type = FT_M_FIOV;

 bzero(&ftick->tk_aw_ohead, sizeof(struct fuse_out_header));

 fiov_refresh(&ftick->tk_aw_fiov);
 ftick->tk_aw_errno = 0;
 ftick->tk_aw_bufdata = ((void*)0);
 ftick->tk_aw_bufsize = 0;
 ftick->tk_aw_type = FT_A_FIOV;

 ftick->tk_flag = 0;
}
