; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/blkback/extr_blkback.c_xbb_release_req.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/blkback/extr_blkback.c_xbb_release_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xbb_softc = type { i64, i32, i32 }
%struct.xbb_xen_req = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@links = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"xbb_release_req: negative active count\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xbb_softc*, %struct.xbb_xen_req*)* @xbb_release_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xbb_release_req(%struct.xbb_softc* %0, %struct.xbb_xen_req* %1) #0 {
  %3 = alloca %struct.xbb_softc*, align 8
  %4 = alloca %struct.xbb_xen_req*, align 8
  store %struct.xbb_softc* %0, %struct.xbb_softc** %3, align 8
  store %struct.xbb_xen_req* %1, %struct.xbb_xen_req** %4, align 8
  %5 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %6 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %5, i32 0, i32 2
  %7 = load i32, i32* @MA_OWNED, align 4
  %8 = call i32 @mtx_assert(i32* %6, i32 %7)
  %9 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %10 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %9, i32 0, i32 1
  %11 = load %struct.xbb_xen_req*, %struct.xbb_xen_req** %4, align 8
  %12 = load i32, i32* @links, align 4
  %13 = call i32 @STAILQ_INSERT_HEAD(i32* %10, %struct.xbb_xen_req* %11, i32 %12)
  %14 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %15 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = add nsw i64 %16, -1
  store i64 %17, i64* %15, align 8
  %18 = load %struct.xbb_softc*, %struct.xbb_softc** %3, align 8
  %19 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp sge i64 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i32 @KASSERT(i32 %22, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @STAILQ_INSERT_HEAD(i32*, %struct.xbb_xen_req*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
