; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib.h_mlx5_ib_get_pagefault_context.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib.h_mlx5_ib_get_pagefault_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_pagefault = type { i32 }

@MLX5_PFAULT_REQUESTOR = common dso_local global i32 0, align 4
@MLX5_PFAULT_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_pagefault*)* @mlx5_ib_get_pagefault_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_ib_get_pagefault_context(%struct.mlx5_pagefault* %0) #0 {
  %2 = alloca %struct.mlx5_pagefault*, align 8
  store %struct.mlx5_pagefault* %0, %struct.mlx5_pagefault** %2, align 8
  %3 = load %struct.mlx5_pagefault*, %struct.mlx5_pagefault** %2, align 8
  %4 = getelementptr inbounds %struct.mlx5_pagefault, %struct.mlx5_pagefault* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @MLX5_PFAULT_REQUESTOR, align 4
  %7 = load i32, i32* @MLX5_PFAULT_WRITE, align 4
  %8 = or i32 %6, %7
  %9 = and i32 %5, %8
  ret i32 %9
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
