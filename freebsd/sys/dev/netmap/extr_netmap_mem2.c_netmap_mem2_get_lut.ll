; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_mem2.c_netmap_mem2_get_lut.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_mem2.c_netmap_mem2_get_lut.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netmap_mem_d = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.netmap_lut = type { i32, i32, i32, i32 }

@NETMAP_BUF_POOL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netmap_mem_d*, %struct.netmap_lut*)* @netmap_mem2_get_lut to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netmap_mem2_get_lut(%struct.netmap_mem_d* %0, %struct.netmap_lut* %1) #0 {
  %3 = alloca %struct.netmap_mem_d*, align 8
  %4 = alloca %struct.netmap_lut*, align 8
  store %struct.netmap_mem_d* %0, %struct.netmap_mem_d** %3, align 8
  store %struct.netmap_lut* %1, %struct.netmap_lut** %4, align 8
  %5 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %3, align 8
  %6 = getelementptr inbounds %struct.netmap_mem_d, %struct.netmap_mem_d* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = load i64, i64* @NETMAP_BUF_POOL, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i64 %8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.netmap_lut*, %struct.netmap_lut** %4, align 8
  %13 = getelementptr inbounds %struct.netmap_lut, %struct.netmap_lut* %12, i32 0, i32 2
  store i32 %11, i32* %13, align 4
  %14 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %3, align 8
  %15 = getelementptr inbounds %struct.netmap_mem_d, %struct.netmap_mem_d* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = load i64, i64* @NETMAP_BUF_POOL, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.netmap_lut*, %struct.netmap_lut** %4, align 8
  %22 = getelementptr inbounds %struct.netmap_lut, %struct.netmap_lut* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %3, align 8
  %24 = getelementptr inbounds %struct.netmap_mem_d, %struct.netmap_mem_d* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i64, i64* @NETMAP_BUF_POOL, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.netmap_lut*, %struct.netmap_lut** %4, align 8
  %31 = getelementptr inbounds %struct.netmap_lut, %struct.netmap_lut* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
