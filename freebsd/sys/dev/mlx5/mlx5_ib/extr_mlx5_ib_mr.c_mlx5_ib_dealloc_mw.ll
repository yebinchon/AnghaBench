; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_mr.c_mlx5_ib_dealloc_mw.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_mr.c_mlx5_ib_dealloc_mw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mw = type { i32 }
%struct.mlx5_ib_mw = type { i32 }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_ib_dealloc_mw(%struct.ib_mw* %0) #0 {
  %2 = alloca %struct.ib_mw*, align 8
  %3 = alloca %struct.mlx5_ib_mw*, align 8
  %4 = alloca i32, align 4
  store %struct.ib_mw* %0, %struct.ib_mw** %2, align 8
  %5 = load %struct.ib_mw*, %struct.ib_mw** %2, align 8
  %6 = call %struct.mlx5_ib_mw* @to_mmw(%struct.ib_mw* %5)
  store %struct.mlx5_ib_mw* %6, %struct.mlx5_ib_mw** %3, align 8
  %7 = load %struct.ib_mw*, %struct.ib_mw** %2, align 8
  %8 = getelementptr inbounds %struct.ib_mw, %struct.ib_mw* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.TYPE_2__* @to_mdev(i32 %9)
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.mlx5_ib_mw*, %struct.mlx5_ib_mw** %3, align 8
  %14 = getelementptr inbounds %struct.mlx5_ib_mw, %struct.mlx5_ib_mw* %13, i32 0, i32 0
  %15 = call i32 @mlx5_core_destroy_mkey(i32 %12, i32* %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load %struct.mlx5_ib_mw*, %struct.mlx5_ib_mw** %3, align 8
  %20 = call i32 @kfree(%struct.mlx5_ib_mw* %19)
  br label %21

21:                                               ; preds = %18, %1
  %22 = load i32, i32* %4, align 4
  ret i32 %22
}

declare dso_local %struct.mlx5_ib_mw* @to_mmw(%struct.ib_mw*) #1

declare dso_local i32 @mlx5_core_destroy_mkey(i32, i32*) #1

declare dso_local %struct.TYPE_2__* @to_mdev(i32) #1

declare dso_local i32 @kfree(%struct.mlx5_ib_mw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
