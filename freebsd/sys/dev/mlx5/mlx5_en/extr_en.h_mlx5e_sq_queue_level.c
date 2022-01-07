
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_2__ {int sz_m1; } ;
struct mlx5e_sq {int cc; int pc; TYPE_1__ wq; } ;


 int IF_SND_QUEUE_LEVEL_MAX ;

__attribute__((used)) static inline u32
mlx5e_sq_queue_level(struct mlx5e_sq *sq)
{
 u16 cc;
 u16 pc;

 if (sq == ((void*)0))
  return (0);

 cc = sq->cc;
 pc = sq->pc;

 return (((sq->wq.sz_m1 & (pc - cc)) *
     IF_SND_QUEUE_LEVEL_MAX) / sq->wq.sz_m1);
}
