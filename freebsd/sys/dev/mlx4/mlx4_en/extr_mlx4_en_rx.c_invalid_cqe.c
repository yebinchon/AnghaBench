
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_err_cqe {int syndrome; int vendor_err_syndrome; } ;
struct mlx4_en_priv {int dummy; } ;
struct mlx4_cqe {int owner_sr_opcode; int badfcs_enc; } ;


 int MLX4_CQE_BAD_FCS ;
 int MLX4_CQE_OPCODE_ERROR ;
 int MLX4_CQE_OPCODE_MASK ;
 int RX_ERR ;
 int en_dbg (int ,struct mlx4_en_priv*,char*) ;
 int en_err (struct mlx4_en_priv*,char*,int ,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline int invalid_cqe(struct mlx4_en_priv *priv,
         struct mlx4_cqe *cqe)
{

 if (unlikely((cqe->owner_sr_opcode & MLX4_CQE_OPCODE_MASK) ==
       MLX4_CQE_OPCODE_ERROR)) {
  en_err(priv, "CQE completed in error - vendor syndrom:%d syndrom:%d\n",
         ((struct mlx4_err_cqe *)cqe)->vendor_err_syndrome,
         ((struct mlx4_err_cqe *)cqe)->syndrome);
  return 1;
 }
 if (unlikely(cqe->badfcs_enc & MLX4_CQE_BAD_FCS)) {
  en_dbg(RX_ERR, priv, "Accepted frame with bad FCS\n");
  return 1;
 }

 return 0;
}
