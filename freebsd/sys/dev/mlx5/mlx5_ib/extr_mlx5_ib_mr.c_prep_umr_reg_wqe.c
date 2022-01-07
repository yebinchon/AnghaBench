
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u64 ;
typedef int u32 ;
struct TYPE_2__ {void* virt_addr; } ;
struct mlx5_umr_wr {int access_flags; struct ib_pd* pd; void* length; TYPE_1__ target; } ;
struct ib_sge {int dummy; } ;
struct ib_send_wr {scalar_t__ send_flags; } ;
struct ib_pd {int dummy; } ;


 int prep_umr_wqe_common (struct ib_pd*,struct ib_send_wr*,struct ib_sge*,void*,int,int ,int) ;
 struct mlx5_umr_wr* umr_wr (struct ib_send_wr*) ;

__attribute__((used)) static void prep_umr_reg_wqe(struct ib_pd *pd, struct ib_send_wr *wr,
        struct ib_sge *sg, u64 dma, int n, u32 key,
        int page_shift, u64 virt_addr, u64 len,
        int access_flags)
{
 struct mlx5_umr_wr *umrwr = umr_wr(wr);

 prep_umr_wqe_common(pd, wr, sg, dma, n, key, page_shift);

 wr->send_flags = 0;

 umrwr->target.virt_addr = virt_addr;
 umrwr->length = len;
 umrwr->access_flags = access_flags;
 umrwr->pd = pd;
}
