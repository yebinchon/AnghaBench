; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_main.c_mlx4_enable_ignore_fcs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_main.c_mlx4_enable_ignore_fcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@MLX4_DEV_CAP_FLAG2_IGNORE_FCS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"SRIOV mode - Disabling Ignore FCS\00", align 1
@MLX4_DEV_CAP_FLAG_FCS_KEEP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"Keep FCS is not supported - Disabling Ignore FCS\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx4_dev*)* @mlx4_enable_ignore_fcs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx4_enable_ignore_fcs(%struct.mlx4_dev* %0) #0 {
  %2 = alloca %struct.mlx4_dev*, align 8
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %2, align 8
  %3 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %4 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @MLX4_DEV_CAP_FLAG2_IGNORE_FCS, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %43

11:                                               ; preds = %1
  %12 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %13 = call i64 @mlx4_is_mfunc(%struct.mlx4_dev* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %11
  %16 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %17 = call i32 @mlx4_dbg(%struct.mlx4_dev* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @MLX4_DEV_CAP_FLAG2_IGNORE_FCS, align 4
  %19 = xor i32 %18, -1
  %20 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %21 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, %19
  store i32 %24, i32* %22, align 4
  br label %43

25:                                               ; preds = %11
  %26 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %27 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @MLX4_DEV_CAP_FLAG_FCS_KEEP, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %43, label %33

33:                                               ; preds = %25
  %34 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %35 = call i32 @mlx4_dbg(%struct.mlx4_dev* %34, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* @MLX4_DEV_CAP_FLAG2_IGNORE_FCS, align 4
  %37 = xor i32 %36, -1
  %38 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %39 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, %37
  store i32 %42, i32* %40, align 4
  br label %43

43:                                               ; preds = %10, %15, %33, %25
  ret void
}

declare dso_local i64 @mlx4_is_mfunc(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_dbg(%struct.mlx4_dev*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
