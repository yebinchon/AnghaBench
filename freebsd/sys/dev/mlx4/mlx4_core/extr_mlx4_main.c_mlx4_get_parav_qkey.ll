; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_main.c_mlx4_get_parav_qkey.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_main.c_mlx4_get_parav_qkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@MLX4_RESERVED_QKEY_BASE = common dso_local global i64 0, align 8
@MLX4_MFUNC_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_get_parav_qkey(%struct.mlx4_dev* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx4_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %9 = load i64, i64* @MLX4_RESERVED_QKEY_BASE, align 8
  store i64 %9, i64* %8, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %12 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i32, i32* @MLX4_MFUNC_MAX, align 4
  %16 = mul nsw i32 8, %15
  %17 = sext i32 %16 to i64
  %18 = add nsw i64 %14, %17
  %19 = icmp sge i64 %10, %18
  br i1 %19, label %27, label %20

20:                                               ; preds = %3
  %21 = load i64, i64* %6, align 8
  %22 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %23 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp slt i64 %21, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %20, %3
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %58

30:                                               ; preds = %20
  %31 = load i64, i64* %6, align 8
  %32 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %33 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp sge i64 %31, %35
  br i1 %36, label %37, label %46

37:                                               ; preds = %30
  %38 = load i64, i64* %6, align 8
  %39 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %40 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = sub nsw i64 %38, %42
  %44 = load i64, i64* %8, align 8
  %45 = add nsw i64 %44, %43
  store i64 %45, i64* %8, align 8
  br label %55

46:                                               ; preds = %30
  %47 = load i64, i64* %6, align 8
  %48 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %49 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = sub nsw i64 %47, %51
  %53 = load i64, i64* %8, align 8
  %54 = add nsw i64 %53, %52
  store i64 %54, i64* %8, align 8
  br label %55

55:                                               ; preds = %46, %37
  %56 = load i64, i64* %8, align 8
  %57 = load i64*, i64** %7, align 8
  store i64 %56, i64* %57, align 8
  store i32 0, i32* %4, align 4
  br label %58

58:                                               ; preds = %55, %27
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
