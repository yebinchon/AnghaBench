; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/blkback/extr_blkback.c_xbb_release_reqs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/blkback/extr_blkback.c_xbb_release_reqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xbb_softc = type { i64, i32, i32 }
%struct.xbb_xen_req_list = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"xbb_release_reqs: negative active count\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xbb_softc*, %struct.xbb_xen_req_list*, i32)* @xbb_release_reqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xbb_release_reqs(%struct.xbb_softc* %0, %struct.xbb_xen_req_list* %1, i32 %2) #0 {
  %4 = alloca %struct.xbb_softc*, align 8
  %5 = alloca %struct.xbb_xen_req_list*, align 8
  %6 = alloca i32, align 4
  store %struct.xbb_softc* %0, %struct.xbb_softc** %4, align 8
  store %struct.xbb_xen_req_list* %1, %struct.xbb_xen_req_list** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.xbb_softc*, %struct.xbb_softc** %4, align 8
  %8 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %7, i32 0, i32 2
  %9 = load i32, i32* @MA_OWNED, align 4
  %10 = call i32 @mtx_assert(i32* %8, i32 %9)
  %11 = load %struct.xbb_softc*, %struct.xbb_softc** %4, align 8
  %12 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %11, i32 0, i32 1
  %13 = load %struct.xbb_xen_req_list*, %struct.xbb_xen_req_list** %5, align 8
  %14 = call i32 @STAILQ_CONCAT(i32* %12, %struct.xbb_xen_req_list* %13)
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = load %struct.xbb_softc*, %struct.xbb_softc** %4, align 8
  %18 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = sub nsw i64 %19, %16
  store i64 %20, i64* %18, align 8
  %21 = load %struct.xbb_softc*, %struct.xbb_softc** %4, align 8
  %22 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp sge i64 %23, 0
  %25 = zext i1 %24 to i32
  %26 = call i32 @KASSERT(i32 %25, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @STAILQ_CONCAT(i32*, %struct.xbb_xen_req_list*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
