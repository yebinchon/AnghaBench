
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_sq {scalar_t__ cev_counter; scalar_t__ cev_factor; } ;



__attribute__((used)) static inline bool
mlx5e_do_send_cqe(struct mlx5e_sq *sq)
{
 sq->cev_counter++;

 if (sq->cev_counter >= sq->cev_factor) {
  sq->cev_counter = 0;
  return (1);
 }
 return (0);
}
