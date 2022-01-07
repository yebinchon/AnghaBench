; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_qp.c___mlx4_qp_free_icm.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_qp.c___mlx4_qp_free_icm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_priv = type { %struct.mlx4_qp_table }
%struct.mlx4_qp_table = type { i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__mlx4_qp_free_icm(%struct.mlx4_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.mlx4_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx4_priv*, align 8
  %6 = alloca %struct.mlx4_qp_table*, align 8
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %8 = call %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev* %7)
  store %struct.mlx4_priv* %8, %struct.mlx4_priv** %5, align 8
  %9 = load %struct.mlx4_priv*, %struct.mlx4_priv** %5, align 8
  %10 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %9, i32 0, i32 0
  store %struct.mlx4_qp_table* %10, %struct.mlx4_qp_table** %6, align 8
  %11 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %12 = load %struct.mlx4_qp_table*, %struct.mlx4_qp_table** %6, align 8
  %13 = getelementptr inbounds %struct.mlx4_qp_table, %struct.mlx4_qp_table* %12, i32 0, i32 4
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @mlx4_table_put(%struct.mlx4_dev* %11, i32* %13, i32 %14)
  %16 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %17 = load %struct.mlx4_qp_table*, %struct.mlx4_qp_table** %6, align 8
  %18 = getelementptr inbounds %struct.mlx4_qp_table, %struct.mlx4_qp_table* %17, i32 0, i32 3
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @mlx4_table_put(%struct.mlx4_dev* %16, i32* %18, i32 %19)
  %21 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %22 = load %struct.mlx4_qp_table*, %struct.mlx4_qp_table** %6, align 8
  %23 = getelementptr inbounds %struct.mlx4_qp_table, %struct.mlx4_qp_table* %22, i32 0, i32 2
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @mlx4_table_put(%struct.mlx4_dev* %21, i32* %23, i32 %24)
  %26 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %27 = load %struct.mlx4_qp_table*, %struct.mlx4_qp_table** %6, align 8
  %28 = getelementptr inbounds %struct.mlx4_qp_table, %struct.mlx4_qp_table* %27, i32 0, i32 1
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @mlx4_table_put(%struct.mlx4_dev* %26, i32* %28, i32 %29)
  %31 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %32 = load %struct.mlx4_qp_table*, %struct.mlx4_qp_table** %6, align 8
  %33 = getelementptr inbounds %struct.mlx4_qp_table, %struct.mlx4_qp_table* %32, i32 0, i32 0
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @mlx4_table_put(%struct.mlx4_dev* %31, i32* %33, i32 %34)
  ret void
}

declare dso_local %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_table_put(%struct.mlx4_dev*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
