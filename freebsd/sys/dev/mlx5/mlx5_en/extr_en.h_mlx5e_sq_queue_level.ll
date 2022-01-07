; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_en.h_mlx5e_sq_queue_level.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_en.h_mlx5e_sq_queue_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_sq = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@IF_SND_QUEUE_LEVEL_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_sq*)* @mlx5e_sq_queue_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_sq_queue_level(%struct.mlx5e_sq* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx5e_sq*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mlx5e_sq* %0, %struct.mlx5e_sq** %3, align 8
  %6 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %3, align 8
  %7 = icmp eq %struct.mlx5e_sq* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %31

9:                                                ; preds = %1
  %10 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %3, align 8
  %11 = getelementptr inbounds %struct.mlx5e_sq, %struct.mlx5e_sq* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %4, align 4
  %13 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %3, align 8
  %14 = getelementptr inbounds %struct.mlx5e_sq, %struct.mlx5e_sq* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %5, align 4
  %16 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %3, align 8
  %17 = getelementptr inbounds %struct.mlx5e_sq, %struct.mlx5e_sq* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %4, align 4
  %22 = sub nsw i32 %20, %21
  %23 = and i32 %19, %22
  %24 = load i32, i32* @IF_SND_QUEUE_LEVEL_MAX, align 4
  %25 = mul nsw i32 %23, %24
  %26 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %3, align 8
  %27 = getelementptr inbounds %struct.mlx5e_sq, %struct.mlx5e_sq* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = sdiv i32 %25, %29
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %9, %8
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
