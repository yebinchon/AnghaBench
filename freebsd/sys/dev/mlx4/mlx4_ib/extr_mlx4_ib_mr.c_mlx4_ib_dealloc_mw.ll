; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_mr.c_mlx4_ib_dealloc_mw.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_mr.c_mlx4_ib_dealloc_mw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mw = type { i32 }
%struct.mlx4_ib_mw = type { i32 }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_ib_dealloc_mw(%struct.ib_mw* %0) #0 {
  %2 = alloca %struct.ib_mw*, align 8
  %3 = alloca %struct.mlx4_ib_mw*, align 8
  store %struct.ib_mw* %0, %struct.ib_mw** %2, align 8
  %4 = load %struct.ib_mw*, %struct.ib_mw** %2, align 8
  %5 = call %struct.mlx4_ib_mw* @to_mmw(%struct.ib_mw* %4)
  store %struct.mlx4_ib_mw* %5, %struct.mlx4_ib_mw** %3, align 8
  %6 = load %struct.ib_mw*, %struct.ib_mw** %2, align 8
  %7 = getelementptr inbounds %struct.ib_mw, %struct.ib_mw* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.TYPE_2__* @to_mdev(i32 %8)
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.mlx4_ib_mw*, %struct.mlx4_ib_mw** %3, align 8
  %13 = getelementptr inbounds %struct.mlx4_ib_mw, %struct.mlx4_ib_mw* %12, i32 0, i32 0
  %14 = call i32 @mlx4_mw_free(i32 %11, i32* %13)
  %15 = load %struct.mlx4_ib_mw*, %struct.mlx4_ib_mw** %3, align 8
  %16 = call i32 @kfree(%struct.mlx4_ib_mw* %15)
  ret i32 0
}

declare dso_local %struct.mlx4_ib_mw* @to_mmw(%struct.ib_mw*) #1

declare dso_local i32 @mlx4_mw_free(i32, i32*) #1

declare dso_local %struct.TYPE_2__* @to_mdev(i32) #1

declare dso_local i32 @kfree(%struct.mlx4_ib_mw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
