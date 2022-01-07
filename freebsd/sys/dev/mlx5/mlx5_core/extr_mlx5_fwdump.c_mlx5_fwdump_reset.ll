; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_fwdump.c_mlx5_fwdump_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_fwdump.c_mlx5_fwdump_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32, i32, i64, i32* }

@.str = private unnamed_addr constant [8 x i8] c"mlx5fwr\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_core_dev*)* @mlx5_fwdump_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_fwdump_reset(%struct.mlx5_core_dev* %0) #0 {
  %2 = alloca %struct.mlx5_core_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %5 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %4, i32 0, i32 1
  %6 = call i32 @mtx_lock(i32* %5)
  %7 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %8 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %7, i32 0, i32 3
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %26

11:                                               ; preds = %1
  br label %12

12:                                               ; preds = %17, %11
  %13 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %14 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %12
  %18 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %19 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %18, i32 0, i32 2
  %20 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %21 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %20, i32 0, i32 1
  %22 = call i32 @msleep(i64* %19, i32* %21, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 0)
  br label %12

23:                                               ; preds = %12
  %24 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %25 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %24, i32 0, i32 0
  store i32 0, i32* %25, align 8
  br label %28

26:                                               ; preds = %1
  %27 = load i32, i32* @ENOENT, align 4
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %26, %23
  %29 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %30 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %29, i32 0, i32 1
  %31 = call i32 @mtx_unlock(i32* %30)
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @msleep(i64*, i32*, i32, i8*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
