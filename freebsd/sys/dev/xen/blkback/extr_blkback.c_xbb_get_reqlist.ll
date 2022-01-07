; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/blkback/extr_blkback.c_xbb_get_reqlist.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/blkback/extr_blkback.c_xbb_get_reqlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xbb_xen_reqlist = type { i32, i64, i64, i64, i32, i32*, i32 }
%struct.xbb_softc = type { i32, i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@links = common dso_local global i32 0, align 4
@XBB_REQLIST_NONE = common dso_local global i32 0, align 4
@BLKIF_RSP_OKAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.xbb_xen_reqlist* (%struct.xbb_softc*)* @xbb_get_reqlist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.xbb_xen_reqlist* @xbb_get_reqlist(%struct.xbb_softc* %0) #0 {
  %2 = alloca %struct.xbb_softc*, align 8
  %3 = alloca %struct.xbb_xen_reqlist*, align 8
  store %struct.xbb_softc* %0, %struct.xbb_softc** %2, align 8
  store %struct.xbb_xen_reqlist* null, %struct.xbb_xen_reqlist** %3, align 8
  %4 = load %struct.xbb_softc*, %struct.xbb_softc** %2, align 8
  %5 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %4, i32 0, i32 1
  %6 = load i32, i32* @MA_OWNED, align 4
  %7 = call i32 @mtx_assert(i32* %5, i32 %6)
  %8 = load %struct.xbb_softc*, %struct.xbb_softc** %2, align 8
  %9 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %8, i32 0, i32 0
  %10 = call %struct.xbb_xen_reqlist* @STAILQ_FIRST(i32* %9)
  store %struct.xbb_xen_reqlist* %10, %struct.xbb_xen_reqlist** %3, align 8
  %11 = icmp ne %struct.xbb_xen_reqlist* %10, null
  br i1 %11, label %12, label %34

12:                                               ; preds = %1
  %13 = load %struct.xbb_softc*, %struct.xbb_softc** %2, align 8
  %14 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %13, i32 0, i32 0
  %15 = load i32, i32* @links, align 4
  %16 = call i32 @STAILQ_REMOVE_HEAD(i32* %14, i32 %15)
  %17 = load i32, i32* @XBB_REQLIST_NONE, align 4
  %18 = load %struct.xbb_xen_reqlist*, %struct.xbb_xen_reqlist** %3, align 8
  %19 = getelementptr inbounds %struct.xbb_xen_reqlist, %struct.xbb_xen_reqlist* %18, i32 0, i32 6
  store i32 %17, i32* %19, align 8
  %20 = load %struct.xbb_xen_reqlist*, %struct.xbb_xen_reqlist** %3, align 8
  %21 = getelementptr inbounds %struct.xbb_xen_reqlist, %struct.xbb_xen_reqlist* %20, i32 0, i32 5
  store i32* null, i32** %21, align 8
  %22 = load i32, i32* @BLKIF_RSP_OKAY, align 4
  %23 = load %struct.xbb_xen_reqlist*, %struct.xbb_xen_reqlist** %3, align 8
  %24 = getelementptr inbounds %struct.xbb_xen_reqlist, %struct.xbb_xen_reqlist* %23, i32 0, i32 4
  store i32 %22, i32* %24, align 8
  %25 = load %struct.xbb_xen_reqlist*, %struct.xbb_xen_reqlist** %3, align 8
  %26 = getelementptr inbounds %struct.xbb_xen_reqlist, %struct.xbb_xen_reqlist* %25, i32 0, i32 3
  store i64 0, i64* %26, align 8
  %27 = load %struct.xbb_xen_reqlist*, %struct.xbb_xen_reqlist** %3, align 8
  %28 = getelementptr inbounds %struct.xbb_xen_reqlist, %struct.xbb_xen_reqlist* %27, i32 0, i32 2
  store i64 0, i64* %28, align 8
  %29 = load %struct.xbb_xen_reqlist*, %struct.xbb_xen_reqlist** %3, align 8
  %30 = getelementptr inbounds %struct.xbb_xen_reqlist, %struct.xbb_xen_reqlist* %29, i32 0, i32 1
  store i64 0, i64* %30, align 8
  %31 = load %struct.xbb_xen_reqlist*, %struct.xbb_xen_reqlist** %3, align 8
  %32 = getelementptr inbounds %struct.xbb_xen_reqlist, %struct.xbb_xen_reqlist* %31, i32 0, i32 0
  %33 = call i32 @STAILQ_INIT(i32* %32)
  br label %34

34:                                               ; preds = %12, %1
  %35 = load %struct.xbb_xen_reqlist*, %struct.xbb_xen_reqlist** %3, align 8
  ret %struct.xbb_xen_reqlist* %35
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local %struct.xbb_xen_reqlist* @STAILQ_FIRST(i32*) #1

declare dso_local i32 @STAILQ_REMOVE_HEAD(i32*, i32) #1

declare dso_local i32 @STAILQ_INIT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
