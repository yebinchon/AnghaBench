
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fuse_ticket {int tk_flag; int tk_aw_mtx; } ;


 int FT_ANSW ;
 int MA_OWNED ;
 int mtx_assert (int *,int ) ;

__attribute__((used)) static inline void
fticket_set_answered(struct fuse_ticket *ftick)
{
 mtx_assert(&ftick->tk_aw_mtx, MA_OWNED);
 ftick->tk_flag |= FT_ANSW;
}
