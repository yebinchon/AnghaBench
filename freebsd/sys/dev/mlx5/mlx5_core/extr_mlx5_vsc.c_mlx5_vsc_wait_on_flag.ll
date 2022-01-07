; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_vsc.c_mlx5_vsc_wait_on_flag.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_vsc.c_mlx5_vsc_wait_on_flag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@MLX5_VSC_MAX_RETRIES = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@MLX5_VSC_ADDR_OFFSET = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_vsc_wait_on_flag(%struct.mlx5_core_dev* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5_core_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %11 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %10, i32 0, i32 1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %6, align 4
  %16 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %17 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %19

19:                                               ; preds = %2, %38
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @MLX5_VSC_MAX_RETRIES, align 4
  %22 = icmp sgt i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i32, i32* @EBUSY, align 4
  store i32 %24, i32* %3, align 4
  br label %46

25:                                               ; preds = %19
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = load i64, i64* @MLX5_VSC_ADDR_OFFSET, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i64 @pci_read_config(i32 %26, i64 %30, i32 4)
  store i64 %31, i64* %9, align 8
  %32 = load i64, i64* %5, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load i64, i64* %9, align 8
  %35 = call i64 @MLX5_VSC_GET(i32 %33, i64* %9, i64 %34)
  %36 = icmp eq i64 %32, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %25
  br label %45

38:                                               ; preds = %25
  %39 = load i32, i32* %8, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %8, align 4
  %41 = call i32 (...) @random()
  %42 = srem i32 %41, 90
  %43 = add nsw i32 %42, 10
  %44 = call i32 @DELAY(i32 %43)
  br label %19

45:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %45, %23
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i64 @pci_read_config(i32, i64, i32) #1

declare dso_local i64 @MLX5_VSC_GET(i32, i64*, i64) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @random(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
