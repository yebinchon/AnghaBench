; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_cq.c_destroy_cq_user.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_cq.c_destroy_cq_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_cq = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ib_ucontext = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_ib_cq*, %struct.ib_ucontext*)* @destroy_cq_user to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @destroy_cq_user(%struct.mlx5_ib_cq* %0, %struct.ib_ucontext* %1) #0 {
  %3 = alloca %struct.mlx5_ib_cq*, align 8
  %4 = alloca %struct.ib_ucontext*, align 8
  store %struct.mlx5_ib_cq* %0, %struct.mlx5_ib_cq** %3, align 8
  store %struct.ib_ucontext* %1, %struct.ib_ucontext** %4, align 8
  %5 = load %struct.ib_ucontext*, %struct.ib_ucontext** %4, align 8
  %6 = call i32 @to_mucontext(%struct.ib_ucontext* %5)
  %7 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %3, align 8
  %8 = getelementptr inbounds %struct.mlx5_ib_cq, %struct.mlx5_ib_cq* %7, i32 0, i32 1
  %9 = call i32 @mlx5_ib_db_unmap_user(i32 %6, i32* %8)
  %10 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %3, align 8
  %11 = getelementptr inbounds %struct.mlx5_ib_cq, %struct.mlx5_ib_cq* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @ib_umem_release(i32 %13)
  ret void
}

declare dso_local i32 @mlx5_ib_db_unmap_user(i32, i32*) #1

declare dso_local i32 @to_mucontext(%struct.ib_ucontext*) #1

declare dso_local i32 @ib_umem_release(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
