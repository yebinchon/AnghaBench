; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_srq.c_destroy_srq_split.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_srq.c_destroy_srq_split.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }
%struct.mlx5_core_srq = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@MLX5_RES_XSRQ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_core_dev*, %struct.mlx5_core_srq*)* @destroy_srq_split to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @destroy_srq_split(%struct.mlx5_core_dev* %0, %struct.mlx5_core_srq* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5_core_dev*, align 8
  %5 = alloca %struct.mlx5_core_srq*, align 8
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %4, align 8
  store %struct.mlx5_core_srq* %1, %struct.mlx5_core_srq** %5, align 8
  %6 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %7 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %12 = load %struct.mlx5_core_srq*, %struct.mlx5_core_srq** %5, align 8
  %13 = call i32 @destroy_srq_cmd(%struct.mlx5_core_dev* %11, %struct.mlx5_core_srq* %12)
  store i32 %13, i32* %3, align 4
  br label %29

14:                                               ; preds = %2
  %15 = load %struct.mlx5_core_srq*, %struct.mlx5_core_srq** %5, align 8
  %16 = getelementptr inbounds %struct.mlx5_core_srq, %struct.mlx5_core_srq* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @MLX5_RES_XSRQ, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %14
  %22 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %23 = load %struct.mlx5_core_srq*, %struct.mlx5_core_srq** %5, align 8
  %24 = call i32 @destroy_xrc_srq_cmd(%struct.mlx5_core_dev* %22, %struct.mlx5_core_srq* %23)
  store i32 %24, i32* %3, align 4
  br label %29

25:                                               ; preds = %14
  %26 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %27 = load %struct.mlx5_core_srq*, %struct.mlx5_core_srq** %5, align 8
  %28 = call i32 @destroy_rmp_cmd(%struct.mlx5_core_dev* %26, %struct.mlx5_core_srq* %27)
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %25, %21, %10
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @destroy_srq_cmd(%struct.mlx5_core_dev*, %struct.mlx5_core_srq*) #1

declare dso_local i32 @destroy_xrc_srq_cmd(%struct.mlx5_core_dev*, %struct.mlx5_core_srq*) #1

declare dso_local i32 @destroy_rmp_cmd(%struct.mlx5_core_dev*, %struct.mlx5_core_srq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
