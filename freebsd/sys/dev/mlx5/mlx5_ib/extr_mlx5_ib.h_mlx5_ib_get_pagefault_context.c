
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_pagefault {int flags; } ;
typedef enum mlx5_ib_pagefault_context { ____Placeholder_mlx5_ib_pagefault_context } mlx5_ib_pagefault_context ;


 int MLX5_PFAULT_REQUESTOR ;
 int MLX5_PFAULT_WRITE ;

__attribute__((used)) static inline enum mlx5_ib_pagefault_context
 mlx5_ib_get_pagefault_context(struct mlx5_pagefault *pagefault)
{
 return pagefault->flags & (MLX5_PFAULT_REQUESTOR | MLX5_PFAULT_WRITE);
}
