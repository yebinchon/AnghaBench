
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlx5_wqe_inline_seg {int byte_count; } ;
struct TYPE_3__ {void* qend; } ;
struct mlx5_ib_qp {int max_inline_data; TYPE_1__ sq; } ;
struct ib_send_wr {int num_sge; TYPE_2__* sg_list; } ;
struct TYPE_4__ {int length; scalar_t__ addr; } ;


 int ALIGN (int,int) ;
 int ENOMEM ;
 int MLX5_INLINE_SEG ;
 int cpu_to_be32 (int) ;
 int memcpy (void*,void*,int) ;
 void* mlx5_get_send_wqe (struct mlx5_ib_qp*,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int set_data_inl_seg(struct mlx5_ib_qp *qp, struct ib_send_wr *wr,
       void *wqe, int *sz)
{
 struct mlx5_wqe_inline_seg *seg;
 void *qend = qp->sq.qend;
 void *addr;
 int inl = 0;
 int copy;
 int len;
 int i;

 seg = wqe;
 wqe += sizeof(*seg);
 for (i = 0; i < wr->num_sge; i++) {
  addr = (void *)(unsigned long)(wr->sg_list[i].addr);
  len = wr->sg_list[i].length;
  inl += len;

  if (unlikely(inl > qp->max_inline_data))
   return -ENOMEM;

  if (unlikely(wqe + len > qend)) {
   copy = qend - wqe;
   memcpy(wqe, addr, copy);
   addr += copy;
   len -= copy;
   wqe = mlx5_get_send_wqe(qp, 0);
  }
  memcpy(wqe, addr, len);
  wqe += len;
 }

 seg->byte_count = cpu_to_be32(inl | MLX5_INLINE_SEG);

 *sz = ALIGN(inl + sizeof(seg->byte_count), 16) / 16;

 return 0;
}
