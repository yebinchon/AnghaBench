; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/blkback/extr_blkback.c_xbb_release_reqlist.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/blkback/extr_blkback.c_xbb_release_reqlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xbb_softc = type { i32, i32, i32, i32, i32 }
%struct.xbb_xen_reqlist = type { i32, i32, i32, i32* }

@MA_OWNED = common dso_local global i32 0, align 4
@XBBF_RESOURCE_SHORTAGE = common dso_local global i32 0, align 4
@links = common dso_local global i32 0, align 4
@XBBF_SHUTDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xbb_softc*, %struct.xbb_xen_reqlist*, i32)* @xbb_release_reqlist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xbb_release_reqlist(%struct.xbb_softc* %0, %struct.xbb_xen_reqlist* %1, i32 %2) #0 {
  %4 = alloca %struct.xbb_softc*, align 8
  %5 = alloca %struct.xbb_xen_reqlist*, align 8
  %6 = alloca i32, align 4
  store %struct.xbb_softc* %0, %struct.xbb_softc** %4, align 8
  store %struct.xbb_xen_reqlist* %1, %struct.xbb_xen_reqlist** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.xbb_softc*, %struct.xbb_softc** %4, align 8
  %8 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %7, i32 0, i32 4
  %9 = load i32, i32* @MA_OWNED, align 4
  %10 = call i32 @mtx_assert(i32* %8, i32 %9)
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %25

13:                                               ; preds = %3
  %14 = load %struct.xbb_softc*, %struct.xbb_softc** %4, align 8
  %15 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @XBBF_RESOURCE_SHORTAGE, align 4
  %18 = and i32 %16, %17
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* @XBBF_RESOURCE_SHORTAGE, align 4
  %20 = xor i32 %19, -1
  %21 = load %struct.xbb_softc*, %struct.xbb_softc** %4, align 8
  %22 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, %20
  store i32 %24, i32* %22, align 4
  br label %25

25:                                               ; preds = %13, %3
  %26 = load %struct.xbb_xen_reqlist*, %struct.xbb_xen_reqlist** %5, align 8
  %27 = getelementptr inbounds %struct.xbb_xen_reqlist, %struct.xbb_xen_reqlist* %26, i32 0, i32 3
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %39

30:                                               ; preds = %25
  %31 = load %struct.xbb_softc*, %struct.xbb_softc** %4, align 8
  %32 = load %struct.xbb_xen_reqlist*, %struct.xbb_xen_reqlist** %5, align 8
  %33 = getelementptr inbounds %struct.xbb_xen_reqlist, %struct.xbb_xen_reqlist* %32, i32 0, i32 3
  %34 = load i32*, i32** %33, align 8
  %35 = load %struct.xbb_xen_reqlist*, %struct.xbb_xen_reqlist** %5, align 8
  %36 = getelementptr inbounds %struct.xbb_xen_reqlist, %struct.xbb_xen_reqlist* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @xbb_free_kva(%struct.xbb_softc* %31, i32* %34, i32 %37)
  br label %39

39:                                               ; preds = %30, %25
  %40 = load %struct.xbb_softc*, %struct.xbb_softc** %4, align 8
  %41 = load %struct.xbb_xen_reqlist*, %struct.xbb_xen_reqlist** %5, align 8
  %42 = getelementptr inbounds %struct.xbb_xen_reqlist, %struct.xbb_xen_reqlist* %41, i32 0, i32 1
  %43 = load %struct.xbb_xen_reqlist*, %struct.xbb_xen_reqlist** %5, align 8
  %44 = getelementptr inbounds %struct.xbb_xen_reqlist, %struct.xbb_xen_reqlist* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @xbb_release_reqs(%struct.xbb_softc* %40, i32* %42, i32 %45)
  %47 = load %struct.xbb_softc*, %struct.xbb_softc** %4, align 8
  %48 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %47, i32 0, i32 3
  %49 = load %struct.xbb_xen_reqlist*, %struct.xbb_xen_reqlist** %5, align 8
  %50 = load i32, i32* @links, align 4
  %51 = call i32 @STAILQ_INSERT_TAIL(i32* %48, %struct.xbb_xen_reqlist* %49, i32 %50)
  %52 = load %struct.xbb_softc*, %struct.xbb_softc** %4, align 8
  %53 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @XBBF_SHUTDOWN, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %39
  %59 = load %struct.xbb_softc*, %struct.xbb_softc** %4, align 8
  %60 = call i32 @xbb_shutdown(%struct.xbb_softc* %59)
  br label %61

61:                                               ; preds = %58, %39
  %62 = load i32, i32* %6, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %61
  %65 = load %struct.xbb_softc*, %struct.xbb_softc** %4, align 8
  %66 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.xbb_softc*, %struct.xbb_softc** %4, align 8
  %69 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %68, i32 0, i32 1
  %70 = call i32 @taskqueue_enqueue(i32 %67, i32* %69)
  br label %71

71:                                               ; preds = %64, %61
  ret void
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @xbb_free_kva(%struct.xbb_softc*, i32*, i32) #1

declare dso_local i32 @xbb_release_reqs(%struct.xbb_softc*, i32*, i32) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.xbb_xen_reqlist*, i32) #1

declare dso_local i32 @xbb_shutdown(%struct.xbb_softc*) #1

declare dso_local i32 @taskqueue_enqueue(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
