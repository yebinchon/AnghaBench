
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bxe_fastpath {int * sb_running_index; int fp_hc_idx; } ;


 size_t SM_RX_ID ;
 int mb () ;

__attribute__((used)) static inline void
bxe_update_fp_sb_idx(struct bxe_fastpath *fp)
{
    mb();
    fp->fp_hc_idx = fp->sb_running_index[SM_RX_ID];
}
