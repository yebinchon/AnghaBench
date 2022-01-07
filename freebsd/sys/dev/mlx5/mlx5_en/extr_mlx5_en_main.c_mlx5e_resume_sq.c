
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_sq {int running; int cev_next_state; int ifp; scalar_t__ pc; scalar_t__ cc; } ;


 int MLX5E_CEV_STATE_INITIAL ;
 int MLX5_SQC_STATE_ERR ;
 int MLX5_SQC_STATE_RDY ;
 int MLX5_SQC_STATE_RST ;
 scalar_t__ READ_ONCE (int ) ;
 int WRITE_ONCE (int ,int) ;
 int mlx5_en_err (int ,char*,int) ;
 int mlx5e_modify_sq (struct mlx5e_sq*,int ,int ) ;
 int mlx5e_reset_sq_doorbell_record (struct mlx5e_sq*) ;

void
mlx5e_resume_sq(struct mlx5e_sq *sq)
{
 int err;


 if (READ_ONCE(sq->running) != 0)
  return;

 err = mlx5e_modify_sq(sq, MLX5_SQC_STATE_ERR,
     MLX5_SQC_STATE_RST);
 if (err != 0) {
  mlx5_en_err(sq->ifp,
      "mlx5e_modify_sq() from ERR to RST failed: %d\n", err);
 }

 sq->cc = 0;
 sq->pc = 0;


 mlx5e_reset_sq_doorbell_record(sq);

 err = mlx5e_modify_sq(sq, MLX5_SQC_STATE_RST,
     MLX5_SQC_STATE_RDY);
 if (err != 0) {
  mlx5_en_err(sq->ifp,
      "mlx5e_modify_sq() from RST to RDY failed: %d\n", err);
 }

 sq->cev_next_state = MLX5E_CEV_STATE_INITIAL;
 WRITE_ONCE(sq->running, 1);
}
