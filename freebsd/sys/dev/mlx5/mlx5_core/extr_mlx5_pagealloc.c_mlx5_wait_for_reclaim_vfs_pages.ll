; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_pagealloc.c_mlx5_wait_for_reclaim_vfs_pages.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_pagealloc.c_mlx5_wait_for_reclaim_vfs_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32* }

@jiffies = common dso_local global i32 0, align 4
@MAX_RECLAIM_TIME_MSECS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"FW did not return all VFs pages, will cause to memory leak\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_wait_for_reclaim_vfs_pages(%struct.mlx5_core_dev* %0) #0 {
  %2 = alloca %struct.mlx5_core_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %2, align 8
  %6 = load i32, i32* @jiffies, align 4
  %7 = load i32, i32* @MAX_RECLAIM_TIME_MSECS, align 4
  %8 = call i32 @msecs_to_jiffies(i32 %7)
  %9 = add nsw i32 %6, %8
  store i32 %9, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %39, %1
  %11 = load i32, i32* @jiffies, align 4
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @time_after(i32 %11, i32 %12)
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  br i1 %15, label %16, label %42

16:                                               ; preds = %10
  %17 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %18 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %22 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = sub nsw i32 %20, %26
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %16
  br label %42

31:                                               ; preds = %16
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @msecs_to_jiffies(i32 100)
  %38 = add nsw i32 %36, %37
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %35, %31
  %40 = load i32, i32* %5, align 4
  store i32 %40, i32* %4, align 4
  %41 = call i32 @msleep(i32 1)
  br label %10

42:                                               ; preds = %30, %10
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %2, align 8
  %47 = call i32 @mlx5_core_warn(%struct.mlx5_core_dev* %46, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  br label %48

48:                                               ; preds = %45, %42
  %49 = load i32, i32* %5, align 4
  %50 = sub nsw i32 0, %49
  ret i32 %50
}

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @time_after(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @mlx5_core_warn(%struct.mlx5_core_dev*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
