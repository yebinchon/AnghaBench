; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_en.h_mlx5e_cq_arm.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_en.h_mlx5e_cq_arm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_cq = type { %struct.TYPE_4__, %struct.mlx5_core_cq }
%struct.TYPE_4__ = type { i32 }
%struct.mlx5_core_cq = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@MLX5_CQ_DB_REQ_NOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5e_cq*, i32*)* @mlx5e_cq_arm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5e_cq_arm(%struct.mlx5e_cq* %0, i32* %1) #0 {
  %3 = alloca %struct.mlx5e_cq*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.mlx5_core_cq*, align 8
  store %struct.mlx5e_cq* %0, %struct.mlx5e_cq** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.mlx5e_cq*, %struct.mlx5e_cq** %3, align 8
  %7 = getelementptr inbounds %struct.mlx5e_cq, %struct.mlx5e_cq* %6, i32 0, i32 1
  store %struct.mlx5_core_cq* %7, %struct.mlx5_core_cq** %5, align 8
  %8 = load %struct.mlx5_core_cq*, %struct.mlx5_core_cq** %5, align 8
  %9 = load i32, i32* @MLX5_CQ_DB_REQ_NOT, align 4
  %10 = load %struct.mlx5_core_cq*, %struct.mlx5_core_cq** %5, align 8
  %11 = getelementptr inbounds %struct.mlx5_core_cq, %struct.mlx5_core_cq* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32*, i32** %4, align 8
  %16 = load %struct.mlx5e_cq*, %struct.mlx5e_cq** %3, align 8
  %17 = getelementptr inbounds %struct.mlx5e_cq, %struct.mlx5e_cq* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @mlx5_cq_arm(%struct.mlx5_core_cq* %8, i32 %9, i32 %14, i32* %15, i32 %19)
  ret void
}

declare dso_local i32 @mlx5_cq_arm(%struct.mlx5_core_cq*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
