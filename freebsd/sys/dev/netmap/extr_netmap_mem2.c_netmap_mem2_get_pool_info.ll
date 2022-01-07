; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_mem2.c_netmap_mem2_get_pool_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_mem2.c_netmap_mem2_get_pool_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netmap_mem_d = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }

@NETMAP_POOLS_NR = common dso_local global i64 0, align 8
@NETMAP_MEM_FINALIZED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @netmap_mem2_get_pool_info(%struct.netmap_mem_d* %0, i64 %1, i64* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.netmap_mem_d*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  store %struct.netmap_mem_d* %0, %struct.netmap_mem_d** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  %10 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %6, align 8
  %11 = icmp ne %struct.netmap_mem_d* %10, null
  br i1 %11, label %12, label %22

12:                                               ; preds = %4
  %13 = load i64*, i64** %8, align 8
  %14 = icmp ne i64* %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %12
  %16 = load i64*, i64** %9, align 8
  %17 = icmp ne i64* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* @NETMAP_POOLS_NR, align 8
  %21 = icmp uge i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %18, %15, %12, %4
  store i32 1, i32* %5, align 4
  br label %50

23:                                               ; preds = %18
  %24 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %6, align 8
  %25 = getelementptr inbounds %struct.netmap_mem_d, %struct.netmap_mem_d* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @NETMAP_MEM_FINALIZED, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %23
  %31 = load i64*, i64** %9, align 8
  store i64 0, i64* %31, align 8
  %32 = load i64*, i64** %8, align 8
  store i64 0, i64* %32, align 8
  store i32 1, i32* %5, align 4
  br label %50

33:                                               ; preds = %23
  %34 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %6, align 8
  %35 = getelementptr inbounds %struct.netmap_mem_d, %struct.netmap_mem_d* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = load i64, i64* %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64*, i64** %8, align 8
  store i64 %40, i64* %41, align 8
  %42 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %6, align 8
  %43 = getelementptr inbounds %struct.netmap_mem_d, %struct.netmap_mem_d* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = load i64, i64* %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64*, i64** %9, align 8
  store i64 %48, i64* %49, align 8
  store i32 0, i32* %5, align 4
  br label %50

50:                                               ; preds = %33, %30, %22
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
