; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_mem2.c_netmap_mem_pools_info_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_mem2.c_netmap_mem_pools_info_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nmreq_pools_info = type { i32, i32, i64, i32, i32, i64, i32, i32, i64, i32, i32 }
%struct.netmap_mem_d = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i64 }

@NETMAP_IF_POOL = common dso_local global i64 0, align 8
@NETMAP_RING_POOL = common dso_local global i64 0, align 8
@NETMAP_BUF_POOL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @netmap_mem_pools_info_get(%struct.nmreq_pools_info* %0, %struct.netmap_mem_d* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nmreq_pools_info*, align 8
  %5 = alloca %struct.netmap_mem_d*, align 8
  %6 = alloca i32, align 4
  store %struct.nmreq_pools_info* %0, %struct.nmreq_pools_info** %4, align 8
  store %struct.netmap_mem_d* %1, %struct.netmap_mem_d** %5, align 8
  %7 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %5, align 8
  %8 = load %struct.nmreq_pools_info*, %struct.nmreq_pools_info** %4, align 8
  %9 = getelementptr inbounds %struct.nmreq_pools_info, %struct.nmreq_pools_info* %8, i32 0, i32 10
  %10 = load %struct.nmreq_pools_info*, %struct.nmreq_pools_info** %4, align 8
  %11 = getelementptr inbounds %struct.nmreq_pools_info, %struct.nmreq_pools_info* %10, i32 0, i32 9
  %12 = call i32 @netmap_mem_get_info(%struct.netmap_mem_d* %7, i32* %9, i32* null, i32* %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %3, align 4
  br label %104

17:                                               ; preds = %2
  %18 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %5, align 8
  %19 = call i32 @NMA_LOCK(%struct.netmap_mem_d* %18)
  %20 = load %struct.nmreq_pools_info*, %struct.nmreq_pools_info** %4, align 8
  %21 = getelementptr inbounds %struct.nmreq_pools_info, %struct.nmreq_pools_info* %20, i32 0, i32 8
  store i64 0, i64* %21, align 8
  %22 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %5, align 8
  %23 = getelementptr inbounds %struct.netmap_mem_d, %struct.netmap_mem_d* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load i64, i64* @NETMAP_IF_POOL, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.nmreq_pools_info*, %struct.nmreq_pools_info** %4, align 8
  %30 = getelementptr inbounds %struct.nmreq_pools_info, %struct.nmreq_pools_info* %29, i32 0, i32 7
  store i32 %28, i32* %30, align 4
  %31 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %5, align 8
  %32 = getelementptr inbounds %struct.netmap_mem_d, %struct.netmap_mem_d* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load i64, i64* @NETMAP_IF_POOL, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.nmreq_pools_info*, %struct.nmreq_pools_info** %4, align 8
  %39 = getelementptr inbounds %struct.nmreq_pools_info, %struct.nmreq_pools_info* %38, i32 0, i32 6
  store i32 %37, i32* %39, align 8
  %40 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %5, align 8
  %41 = getelementptr inbounds %struct.netmap_mem_d, %struct.netmap_mem_d* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = load i64, i64* @NETMAP_IF_POOL, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.nmreq_pools_info*, %struct.nmreq_pools_info** %4, align 8
  %48 = getelementptr inbounds %struct.nmreq_pools_info, %struct.nmreq_pools_info* %47, i32 0, i32 5
  store i64 %46, i64* %48, align 8
  %49 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %5, align 8
  %50 = getelementptr inbounds %struct.netmap_mem_d, %struct.netmap_mem_d* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = load i64, i64* @NETMAP_RING_POOL, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.nmreq_pools_info*, %struct.nmreq_pools_info** %4, align 8
  %57 = getelementptr inbounds %struct.nmreq_pools_info, %struct.nmreq_pools_info* %56, i32 0, i32 4
  store i32 %55, i32* %57, align 4
  %58 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %5, align 8
  %59 = getelementptr inbounds %struct.netmap_mem_d, %struct.netmap_mem_d* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = load i64, i64* @NETMAP_RING_POOL, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.nmreq_pools_info*, %struct.nmreq_pools_info** %4, align 8
  %66 = getelementptr inbounds %struct.nmreq_pools_info, %struct.nmreq_pools_info* %65, i32 0, i32 3
  store i32 %64, i32* %66, align 8
  %67 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %5, align 8
  %68 = getelementptr inbounds %struct.netmap_mem_d, %struct.netmap_mem_d* %67, i32 0, i32 0
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = load i64, i64* @NETMAP_IF_POOL, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %5, align 8
  %75 = getelementptr inbounds %struct.netmap_mem_d, %struct.netmap_mem_d* %74, i32 0, i32 0
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = load i64, i64* @NETMAP_RING_POOL, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = add nsw i64 %73, %80
  %82 = load %struct.nmreq_pools_info*, %struct.nmreq_pools_info** %4, align 8
  %83 = getelementptr inbounds %struct.nmreq_pools_info, %struct.nmreq_pools_info* %82, i32 0, i32 2
  store i64 %81, i64* %83, align 8
  %84 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %5, align 8
  %85 = getelementptr inbounds %struct.netmap_mem_d, %struct.netmap_mem_d* %84, i32 0, i32 0
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = load i64, i64* @NETMAP_BUF_POOL, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.nmreq_pools_info*, %struct.nmreq_pools_info** %4, align 8
  %92 = getelementptr inbounds %struct.nmreq_pools_info, %struct.nmreq_pools_info* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 4
  %93 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %5, align 8
  %94 = getelementptr inbounds %struct.netmap_mem_d, %struct.netmap_mem_d* %93, i32 0, i32 0
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = load i64, i64* @NETMAP_BUF_POOL, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.nmreq_pools_info*, %struct.nmreq_pools_info** %4, align 8
  %101 = getelementptr inbounds %struct.nmreq_pools_info, %struct.nmreq_pools_info* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 8
  %102 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %5, align 8
  %103 = call i32 @NMA_UNLOCK(%struct.netmap_mem_d* %102)
  store i32 0, i32* %3, align 4
  br label %104

104:                                              ; preds = %17, %15
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local i32 @netmap_mem_get_info(%struct.netmap_mem_d*, i32*, i32*, i32*) #1

declare dso_local i32 @NMA_LOCK(%struct.netmap_mem_d*) #1

declare dso_local i32 @NMA_UNLOCK(%struct.netmap_mem_d*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
