
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_3__ {scalar_t__ lro_wqe_sz; scalar_t__ hw_lro_en; } ;
struct mlx5e_priv {TYPE_2__* ifp; TYPE_1__ params; } ;
struct TYPE_4__ {int if_mtu; } ;


 int ENOMEM ;
 scalar_t__ MCLBYTES ;
 scalar_t__ MJUM16BYTES ;
 scalar_t__ MJUM9BYTES ;
 scalar_t__ MJUMPAGESIZE ;
 scalar_t__ MLX5E_MAX_BUSDMA_RX_SEGS ;
 int MLX5E_MAX_RX_BYTES ;
 scalar_t__ MLX5E_SW2MB_MTU (int ) ;
 scalar_t__ howmany (scalar_t__,int ) ;
 int powerof2 (scalar_t__) ;

__attribute__((used)) static int
mlx5e_get_wqe_sz(struct mlx5e_priv *priv, u32 *wqe_sz, u32 *nsegs)
{
 u32 r, n;

 r = priv->params.hw_lro_en ? priv->params.lro_wqe_sz :
     MLX5E_SW2MB_MTU(priv->ifp->if_mtu);
 if (r > MJUM16BYTES)
  return (-ENOMEM);

 if (r > MJUM9BYTES)
  r = MJUM16BYTES;
 else if (r > MJUMPAGESIZE)
  r = MJUM9BYTES;
 else if (r > MCLBYTES)
  r = MJUMPAGESIZE;
 else
  r = MCLBYTES;






 for (n = howmany(r, MLX5E_MAX_RX_BYTES); !powerof2(n + 1); n++)
  ;

 if (n > MLX5E_MAX_BUSDMA_RX_SEGS)
  return (-ENOMEM);

 *wqe_sz = r;
 *nsegs = n;
 return (0);
}
