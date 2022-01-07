; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/blkback/extr_blkback.c_xbb_queue_response.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/blkback/extr_blkback.c_xbb_queue_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xbb_softc = type { i32, i32, %struct.TYPE_7__, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_9__, %struct.TYPE_9__, %struct.TYPE_9__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.xbb_xen_req = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Unexpected blkif protocol ABI.\00", align 1
@BLKIF_RSP_OKAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xbb_softc*, %struct.xbb_xen_req*, i32)* @xbb_queue_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xbb_queue_response(%struct.xbb_softc* %0, %struct.xbb_xen_req* %1, i32 %2) #0 {
  %4 = alloca %struct.xbb_softc*, align 8
  %5 = alloca %struct.xbb_xen_req*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  store %struct.xbb_softc* %0, %struct.xbb_softc** %4, align 8
  store %struct.xbb_xen_req* %1, %struct.xbb_xen_req** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.xbb_softc*, %struct.xbb_softc** %4, align 8
  %9 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %8, i32 0, i32 4
  %10 = load i32, i32* @MA_OWNED, align 4
  %11 = call i32 @mtx_assert(i32* %9, i32 %10)
  %12 = load %struct.xbb_softc*, %struct.xbb_softc** %4, align 8
  %13 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %45 [
    i32 130, label %15
    i32 129, label %25
    i32 128, label %35
  ]

15:                                               ; preds = %3
  %16 = load %struct.xbb_softc*, %struct.xbb_softc** %4, align 8
  %17 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 3
  %19 = load %struct.xbb_softc*, %struct.xbb_softc** %4, align 8
  %20 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.TYPE_8__* @RING_GET_RESPONSE(%struct.TYPE_9__* %18, i32 %23)
  store %struct.TYPE_8__* %24, %struct.TYPE_8__** %7, align 8
  br label %47

25:                                               ; preds = %3
  %26 = load %struct.xbb_softc*, %struct.xbb_softc** %4, align 8
  %27 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 2
  %29 = load %struct.xbb_softc*, %struct.xbb_softc** %4, align 8
  %30 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.TYPE_8__* @RING_GET_RESPONSE(%struct.TYPE_9__* %28, i32 %33)
  store %struct.TYPE_8__* %34, %struct.TYPE_8__** %7, align 8
  br label %47

35:                                               ; preds = %3
  %36 = load %struct.xbb_softc*, %struct.xbb_softc** %4, align 8
  %37 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  %39 = load %struct.xbb_softc*, %struct.xbb_softc** %4, align 8
  %40 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call %struct.TYPE_8__* @RING_GET_RESPONSE(%struct.TYPE_9__* %38, i32 %43)
  store %struct.TYPE_8__* %44, %struct.TYPE_8__** %7, align 8
  br label %47

45:                                               ; preds = %3
  %46 = call i32 @panic(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %47

47:                                               ; preds = %45, %35, %25, %15
  %48 = load %struct.xbb_xen_req*, %struct.xbb_xen_req** %5, align 8
  %49 = getelementptr inbounds %struct.xbb_xen_req, %struct.xbb_xen_req* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 4
  %53 = load %struct.xbb_xen_req*, %struct.xbb_xen_req** %5, align 8
  %54 = getelementptr inbounds %struct.xbb_xen_req, %struct.xbb_xen_req* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* %6, align 4
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @BLKIF_RSP_OKAY, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %47
  %65 = load %struct.xbb_softc*, %struct.xbb_softc** %4, align 8
  %66 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %66, align 4
  br label %69

69:                                               ; preds = %64, %47
  %70 = load %struct.xbb_softc*, %struct.xbb_softc** %4, align 8
  %71 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 4
  %76 = load %struct.xbb_softc*, %struct.xbb_softc** %4, align 8
  %77 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %77, align 4
  ret void
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local %struct.TYPE_8__* @RING_GET_RESPONSE(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
