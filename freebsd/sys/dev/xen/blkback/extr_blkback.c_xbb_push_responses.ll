; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/blkback/extr_blkback.c_xbb_push_responses.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/blkback/extr_blkback.c_xbb_push_responses.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xbb_softc = type { i64, i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64 }

@MA_OWNED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xbb_softc*, i32*, i32*)* @xbb_push_responses to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xbb_push_responses(%struct.xbb_softc* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.xbb_softc*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.xbb_softc* %0, %struct.xbb_softc** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load %struct.xbb_softc*, %struct.xbb_softc** %4, align 8
  %9 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %8, i32 0, i32 3
  %10 = load i32, i32* @MA_OWNED, align 4
  %11 = call i32 @mtx_assert(i32* %9, i32 %10)
  store i32 0, i32* %7, align 4
  %12 = load %struct.xbb_softc*, %struct.xbb_softc** %4, align 8
  %13 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32*, i32** %6, align 8
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @RING_PUSH_RESPONSES_AND_CHECK_NOTIFY(%struct.TYPE_6__* %14, i32 %16)
  %18 = load %struct.xbb_softc*, %struct.xbb_softc** %4, align 8
  %19 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.xbb_softc*, %struct.xbb_softc** %4, align 8
  %24 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %22, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %3
  %30 = load %struct.xbb_softc*, %struct.xbb_softc** %4, align 8
  %31 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @RING_FINAL_CHECK_FOR_REQUESTS(%struct.TYPE_6__* %32, i32 %33)
  br label %43

35:                                               ; preds = %3
  %36 = load %struct.xbb_softc*, %struct.xbb_softc** %4, align 8
  %37 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = call i64 @RING_HAS_UNCONSUMED_REQUESTS(%struct.TYPE_6__* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  store i32 1, i32* %7, align 4
  br label %42

42:                                               ; preds = %41, %35
  br label %43

43:                                               ; preds = %42, %29
  %44 = load %struct.xbb_softc*, %struct.xbb_softc** %4, align 8
  %45 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.xbb_softc*, %struct.xbb_softc** %4, align 8
  %48 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %50, %46
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %48, align 8
  %53 = load %struct.xbb_softc*, %struct.xbb_softc** %4, align 8
  %54 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %53, i32 0, i32 0
  store i64 0, i64* %54, align 8
  %55 = load i32, i32* %7, align 4
  %56 = load i32*, i32** %5, align 8
  store i32 %55, i32* %56, align 4
  ret void
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @RING_PUSH_RESPONSES_AND_CHECK_NOTIFY(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @RING_FINAL_CHECK_FOR_REQUESTS(%struct.TYPE_6__*, i32) #1

declare dso_local i64 @RING_HAS_UNCONSUMED_REQUESTS(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
