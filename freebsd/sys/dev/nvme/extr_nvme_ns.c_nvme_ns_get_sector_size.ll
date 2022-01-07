; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_ns.c_nvme_ns_get_sector_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_ns.c_nvme_ns_get_sector_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_namespace = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64* }

@NVME_NS_DATA_FLBAS_FORMAT_SHIFT = common dso_local global i64 0, align 8
@NVME_NS_DATA_FLBAS_FORMAT_MASK = common dso_local global i64 0, align 8
@NVME_NS_DATA_LBAF_LBADS_SHIFT = common dso_local global i64 0, align 8
@NVME_NS_DATA_LBAF_LBADS_MASK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvme_ns_get_sector_size(%struct.nvme_namespace* %0) #0 {
  %2 = alloca %struct.nvme_namespace*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.nvme_namespace* %0, %struct.nvme_namespace** %2, align 8
  %5 = load %struct.nvme_namespace*, %struct.nvme_namespace** %2, align 8
  %6 = getelementptr inbounds %struct.nvme_namespace, %struct.nvme_namespace* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @NVME_NS_DATA_FLBAS_FORMAT_SHIFT, align 8
  %10 = lshr i64 %8, %9
  %11 = load i64, i64* @NVME_NS_DATA_FLBAS_FORMAT_MASK, align 8
  %12 = and i64 %10, %11
  store i64 %12, i64* %3, align 8
  %13 = load %struct.nvme_namespace*, %struct.nvme_namespace** %2, align 8
  %14 = getelementptr inbounds %struct.nvme_namespace, %struct.nvme_namespace* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i64*, i64** %15, align 8
  %17 = load i64, i64* %3, align 8
  %18 = getelementptr inbounds i64, i64* %16, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @NVME_NS_DATA_LBAF_LBADS_SHIFT, align 8
  %21 = lshr i64 %19, %20
  %22 = load i64, i64* @NVME_NS_DATA_LBAF_LBADS_MASK, align 8
  %23 = and i64 %21, %22
  store i64 %23, i64* %4, align 8
  %24 = load i64, i64* %4, align 8
  %25 = trunc i64 %24 to i32
  %26 = shl i32 1, %25
  ret i32 %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
