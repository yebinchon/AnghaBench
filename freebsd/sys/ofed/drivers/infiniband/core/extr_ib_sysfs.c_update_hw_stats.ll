; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_sysfs.c_update_hw_stats.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_sysfs.c_update_hw_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { {}* }
%struct.rdma_hw_stats = type { i32, i64, i64 }

@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*, %struct.rdma_hw_stats*, i32, i32)* @update_hw_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_hw_stats(%struct.ib_device* %0, %struct.rdma_hw_stats* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_device*, align 8
  %7 = alloca %struct.rdma_hw_stats*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %6, align 8
  store %struct.rdma_hw_stats* %1, %struct.rdma_hw_stats** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.rdma_hw_stats*, %struct.rdma_hw_stats** %7, align 8
  %12 = getelementptr inbounds %struct.rdma_hw_stats, %struct.rdma_hw_stats* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.rdma_hw_stats*, %struct.rdma_hw_stats** %7, align 8
  %15 = getelementptr inbounds %struct.rdma_hw_stats, %struct.rdma_hw_stats* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = add nsw i64 %13, %16
  %18 = call i64 @time_is_after_eq_jiffies(i64 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %46

21:                                               ; preds = %4
  %22 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %23 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %22, i32 0, i32 0
  %24 = bitcast {}** %23 to i32 (%struct.ib_device*, %struct.rdma_hw_stats*, i32, i32)**
  %25 = load i32 (%struct.ib_device*, %struct.rdma_hw_stats*, i32, i32)*, i32 (%struct.ib_device*, %struct.rdma_hw_stats*, i32, i32)** %24, align 8
  %26 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %27 = load %struct.rdma_hw_stats*, %struct.rdma_hw_stats** %7, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %9, align 4
  %30 = call i32 %25(%struct.ib_device* %26, %struct.rdma_hw_stats* %27, i32 %28, i32 %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %21
  %34 = load i32, i32* %10, align 4
  store i32 %34, i32* %5, align 4
  br label %46

35:                                               ; preds = %21
  %36 = load i32, i32* %10, align 4
  %37 = load %struct.rdma_hw_stats*, %struct.rdma_hw_stats** %7, align 8
  %38 = getelementptr inbounds %struct.rdma_hw_stats, %struct.rdma_hw_stats* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp eq i32 %36, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = load i64, i64* @jiffies, align 8
  %43 = load %struct.rdma_hw_stats*, %struct.rdma_hw_stats** %7, align 8
  %44 = getelementptr inbounds %struct.rdma_hw_stats, %struct.rdma_hw_stats* %43, i32 0, i32 1
  store i64 %42, i64* %44, align 8
  br label %45

45:                                               ; preds = %41, %35
  store i32 0, i32* %5, align 4
  br label %46

46:                                               ; preds = %45, %33, %20
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local i64 @time_is_after_eq_jiffies(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
