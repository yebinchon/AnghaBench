; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_main.c_mlx4_ib_diag_cleanup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_main.c_mlx4_ib_diag_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_ib_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@MLX4_DIAG_COUNTERS_TYPES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx4_ib_dev*)* @mlx4_ib_diag_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx4_ib_diag_cleanup(%struct.mlx4_ib_dev* %0) #0 {
  %2 = alloca %struct.mlx4_ib_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.mlx4_ib_dev* %0, %struct.mlx4_ib_dev** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %27, %1
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @MLX4_DIAG_COUNTERS_TYPES, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %30

8:                                                ; preds = %4
  %9 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %2, align 8
  %10 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @kfree(i32 %16)
  %18 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %2, align 8
  %19 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @kfree(i32 %25)
  br label %27

27:                                               ; preds = %8
  %28 = load i32, i32* %3, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %3, align 4
  br label %4

30:                                               ; preds = %4
  ret void
}

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
