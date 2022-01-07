; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_qp.c_ib_rate_to_mlx5.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_qp.c_ib_rate_to_mlx5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { i32 }

@IB_RATE_PORT_CURRENT = common dso_local global i32 0, align 4
@IB_RATE_2_5_GBPS = common dso_local global i32 0, align 4
@IB_RATE_600_GBPS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MLX5_STAT_RATE_OFFSET = common dso_local global i32 0, align 4
@stat_rate_support = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_ib_dev*, i32)* @ib_rate_to_mlx5 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ib_rate_to_mlx5(%struct.mlx5_ib_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5_ib_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @IB_RATE_PORT_CURRENT, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %50

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @IB_RATE_2_5_GBPS, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @IB_RATE_600_GBPS, align 4
  %17 = icmp sgt i32 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %14, %10
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %50

21:                                               ; preds = %14
  br label %22

22:                                               ; preds = %41, %21
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @IB_RATE_2_5_GBPS, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %39

26:                                               ; preds = %22
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @MLX5_STAT_RATE_OFFSET, align 4
  %29 = add nsw i32 %27, %28
  %30 = shl i32 1, %29
  %31 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %4, align 8
  %32 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @stat_rate_support, align 4
  %35 = call i32 @MLX5_CAP_GEN(i32 %33, i32 %34)
  %36 = and i32 %30, %35
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  br label %39

39:                                               ; preds = %26, %22
  %40 = phi i1 [ false, %22 ], [ %38, %26 ]
  br i1 %40, label %41, label %44

41:                                               ; preds = %39
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* %5, align 4
  br label %22

44:                                               ; preds = %39
  br label %45

45:                                               ; preds = %44
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @MLX5_STAT_RATE_OFFSET, align 4
  %49 = add nsw i32 %47, %48
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %46, %18, %9
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @MLX5_CAP_GEN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
