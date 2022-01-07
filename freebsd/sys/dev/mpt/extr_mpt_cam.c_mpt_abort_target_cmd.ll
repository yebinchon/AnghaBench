; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_cam.c_mpt_abort_target_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_cam.c_mpt_abort_target_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpt_softc = type { i32, i64, i64 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i8*, i32, i32, i8* }
%struct.TYPE_12__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@TARGET_MODE_ABORT_TYPE_EXACT_IO = common dso_local global i32 0, align 4
@MPI_FUNCTION_TARGET_MODE_ABORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mpt_softc*, %struct.TYPE_10__*)* @mpt_abort_target_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpt_abort_target_cmd(%struct.mpt_softc* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mpt_softc*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  store %struct.mpt_softc* %0, %struct.mpt_softc** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  %9 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %10 = load i32, i32* @FALSE, align 4
  %11 = call %struct.TYPE_10__* @mpt_get_request(%struct.mpt_softc* %9, i32 %10)
  store %struct.TYPE_10__* %11, %struct.TYPE_10__** %7, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %13 = icmp eq %struct.TYPE_10__* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %64

15:                                               ; preds = %2
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  store %struct.TYPE_11__* %18, %struct.TYPE_11__** %8, align 8
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %20 = call i32 @memset(%struct.TYPE_11__* %19, i32 0, i32 24)
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %25 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = or i32 %23, %26
  %28 = call i8* @htole32(i32 %27)
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 3
  store i8* %28, i8** %30, align 8
  %31 = load i32, i32* @TARGET_MODE_ABORT_TYPE_EXACT_IO, align 4
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* @MPI_FUNCTION_TARGET_MODE_ABORT, align 4
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 8
  %37 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %39 = call %struct.TYPE_12__* @MPT_TGT_STATE(%struct.mpt_softc* %37, %struct.TYPE_10__* %38)
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i8* @htole32(i32 %41)
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  store i8* %42, i8** %44, align 8
  store i32 0, i32* %6, align 4
  %45 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %46 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %15
  %50 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %51 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %49, %15
  %55 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %57 = call i32 @mpt_send_cmd(%struct.mpt_softc* %55, %struct.TYPE_10__* %56)
  br label %62

58:                                               ; preds = %49
  %59 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %61 = call i32 @mpt_send_handshake_cmd(%struct.mpt_softc* %59, i32 16, %struct.TYPE_10__* %60)
  store i32 %61, i32* %6, align 4
  br label %62

62:                                               ; preds = %58, %54
  %63 = load i32, i32* %6, align 4
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %62, %14
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local %struct.TYPE_10__* @mpt_get_request(%struct.mpt_softc*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i8* @htole32(i32) #1

declare dso_local %struct.TYPE_12__* @MPT_TGT_STATE(%struct.mpt_softc*, %struct.TYPE_10__*) #1

declare dso_local i32 @mpt_send_cmd(%struct.mpt_softc*, %struct.TYPE_10__*) #1

declare dso_local i32 @mpt_send_handshake_cmd(%struct.mpt_softc*, i32, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
