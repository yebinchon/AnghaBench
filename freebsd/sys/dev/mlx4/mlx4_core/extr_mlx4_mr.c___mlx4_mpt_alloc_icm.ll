; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_mr.c___mlx4_mpt_alloc_icm.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_mr.c___mlx4_mpt_alloc_icm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_mr_table = type { i32 }
%struct.TYPE_2__ = type { %struct.mlx4_mr_table }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__mlx4_mpt_alloc_icm(%struct.mlx4_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mlx4_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx4_mr_table*, align 8
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %9 = call %struct.TYPE_2__* @mlx4_priv(%struct.mlx4_dev* %8)
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.mlx4_mr_table* %10, %struct.mlx4_mr_table** %7, align 8
  %11 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %12 = load %struct.mlx4_mr_table*, %struct.mlx4_mr_table** %7, align 8
  %13 = getelementptr inbounds %struct.mlx4_mr_table, %struct.mlx4_mr_table* %12, i32 0, i32 0
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @mlx4_table_get(%struct.mlx4_dev* %11, i32* %13, i32 %14, i32 %15)
  ret i32 %16
}

declare dso_local %struct.TYPE_2__* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_table_get(%struct.mlx4_dev*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
