; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/blkback/extr_blkback.c_xbb_get_gntaddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/blkback/extr_blkback.c_xbb_get_gntaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xbb_xen_reqlist = type { i64, %struct.xbb_softc* }
%struct.xbb_softc = type { i64, i64 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.xbb_xen_reqlist*, i32, i32)* @xbb_get_gntaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @xbb_get_gntaddr(%struct.xbb_xen_reqlist* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.xbb_xen_reqlist*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.xbb_softc*, align 8
  store %struct.xbb_xen_reqlist* %0, %struct.xbb_xen_reqlist** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.xbb_xen_reqlist*, %struct.xbb_xen_reqlist** %4, align 8
  %9 = getelementptr inbounds %struct.xbb_xen_reqlist, %struct.xbb_xen_reqlist* %8, i32 0, i32 1
  %10 = load %struct.xbb_softc*, %struct.xbb_softc** %9, align 8
  store %struct.xbb_softc* %10, %struct.xbb_softc** %7, align 8
  %11 = load %struct.xbb_softc*, %struct.xbb_softc** %7, align 8
  %12 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.xbb_xen_reqlist*, %struct.xbb_xen_reqlist** %4, align 8
  %15 = getelementptr inbounds %struct.xbb_xen_reqlist, %struct.xbb_xen_reqlist* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.xbb_softc*, %struct.xbb_softc** %7, align 8
  %18 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = sub nsw i64 %16, %19
  %21 = add i64 %13, %20
  %22 = load i32, i32* @PAGE_SIZE, align 4
  %23 = load i32, i32* %5, align 4
  %24 = mul nsw i32 %22, %23
  %25 = sext i32 %24 to i64
  %26 = add i64 %21, %25
  %27 = load i32, i32* %6, align 4
  %28 = shl i32 %27, 9
  %29 = sext i32 %28 to i64
  %30 = add i64 %26, %29
  ret i64 %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
