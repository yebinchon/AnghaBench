
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_srq_attr {int pas; int user_index; } ;
struct mlx5_core_srq {int srqn; } ;
struct mlx5_core_dev {int dummy; } ;


 int ENOMEM ;
 void* MLX5_ADDR_OF (int ,void*,void*) ;
 int MLX5_SET (void*,void*,int ,int ) ;
 int MLX5_ST_SZ_BYTES (int ) ;
 int create_xrc_srq_in ;
 int get_pas_size (struct mlx5_srq_attr*) ;
 int kvfree (void*) ;
 int memcpy (void*,int ,int) ;
 int mlx5_core_create_xsrq (struct mlx5_core_dev*,void*,int,int *) ;
 void* mlx5_vzalloc (int) ;
 int set_srqc (void*,struct mlx5_srq_attr*) ;
 int user_index ;
 void* xrc_srq_context_entry ;

__attribute__((used)) static int create_xrc_srq_cmd(struct mlx5_core_dev *dev,
         struct mlx5_core_srq *srq,
         struct mlx5_srq_attr *in)
{
 void *create_in;
 void *xrc_srqc;
 void *pas;
 int pas_size;
 int inlen;
 int err;

 pas_size = get_pas_size(in);
 inlen = MLX5_ST_SZ_BYTES(create_xrc_srq_in) + pas_size;
 create_in = mlx5_vzalloc(inlen);
 if (!create_in)
  return -ENOMEM;

 xrc_srqc = MLX5_ADDR_OF(create_xrc_srq_in, create_in, xrc_srq_context_entry);
 pas = MLX5_ADDR_OF(create_xrc_srq_in, create_in, pas);

 set_srqc(xrc_srqc, in);
 MLX5_SET(xrc_srqc, xrc_srqc, user_index, in->user_index);
 memcpy(pas, in->pas, pas_size);

 err = mlx5_core_create_xsrq(dev, create_in, inlen, &srq->srqn);
 if (err)
  goto out;

out:
 kvfree(create_in);
 return err;
}
