; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/tws/extr_tws.c_tws_get_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/tws/extr_tws.c_tws_get_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tws_request = type { i64, i64, i32*, i32, i32, i32*, i32*, i32, i32, i64, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.tws_softc = type { %struct.tws_request*, %struct.mtx, %struct.mtx }
%struct.mtx = type { i32 }

@TWS_REQ_TYPE_SCSI_IO = common dso_local global i64 0, align 8
@TWS_FREE_Q = common dso_local global i32 0, align 4
@TWS_REQ_STATE_FREE = common dso_local global i64 0, align 8
@TWS_DIR_UNKNOWN = common dso_local global i32 0, align 4
@TWS_REQ_RET_INVALID = common dso_local global i32 0, align 4
@TWS_REQ_STATE_TRAN = common dso_local global i64 0, align 8
@TWS_REQ_STATE_BUSY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tws_request* @tws_get_request(%struct.tws_softc* %0, i64 %1) #0 {
  %3 = alloca %struct.tws_softc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.mtx*, align 8
  %6 = alloca %struct.tws_request*, align 8
  store %struct.tws_softc* %0, %struct.tws_softc** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i64, i64* %4, align 8
  %8 = load i64, i64* @TWS_REQ_TYPE_SCSI_IO, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %12 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %11, i32 0, i32 2
  br label %16

13:                                               ; preds = %2
  %14 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %15 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %14, i32 0, i32 1
  br label %16

16:                                               ; preds = %13, %10
  %17 = phi %struct.mtx* [ %12, %10 ], [ %15, %13 ]
  store %struct.mtx* %17, %struct.mtx** %5, align 8
  store %struct.tws_request* null, %struct.tws_request** %6, align 8
  %18 = load %struct.mtx*, %struct.mtx** %5, align 8
  %19 = call i32 @mtx_lock(%struct.mtx* %18)
  %20 = load i64, i64* %4, align 8
  %21 = load i64, i64* @TWS_REQ_TYPE_SCSI_IO, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %16
  %24 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %25 = load i32, i32* @TWS_FREE_Q, align 4
  %26 = call %struct.tws_request* @tws_q_remove_head(%struct.tws_softc* %24, i32 %25)
  store %struct.tws_request* %26, %struct.tws_request** %6, align 8
  br label %44

27:                                               ; preds = %16
  %28 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %29 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %28, i32 0, i32 0
  %30 = load %struct.tws_request*, %struct.tws_request** %29, align 8
  %31 = load i64, i64* %4, align 8
  %32 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %30, i64 %31
  %33 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @TWS_REQ_STATE_FREE, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %27
  %38 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %39 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %38, i32 0, i32 0
  %40 = load %struct.tws_request*, %struct.tws_request** %39, align 8
  %41 = load i64, i64* %4, align 8
  %42 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %40, i64 %41
  store %struct.tws_request* %42, %struct.tws_request** %6, align 8
  br label %43

43:                                               ; preds = %37, %27
  br label %44

44:                                               ; preds = %43, %23
  %45 = load %struct.tws_request*, %struct.tws_request** %6, align 8
  %46 = icmp ne %struct.tws_request* %45, null
  br i1 %46, label %47, label %88

47:                                               ; preds = %44
  %48 = load %struct.tws_request*, %struct.tws_request** %6, align 8
  %49 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %48, i32 0, i32 11
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = call i32 @bzero(i32* %51, i32 4)
  %53 = load %struct.tws_request*, %struct.tws_request** %6, align 8
  %54 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %53, i32 0, i32 10
  store i32* null, i32** %54, align 8
  %55 = load %struct.tws_request*, %struct.tws_request** %6, align 8
  %56 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %55, i32 0, i32 9
  store i64 0, i64* %56, align 8
  %57 = load i64, i64* %4, align 8
  %58 = load %struct.tws_request*, %struct.tws_request** %6, align 8
  %59 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %58, i32 0, i32 1
  store i64 %57, i64* %59, align 8
  %60 = load i32, i32* @TWS_DIR_UNKNOWN, align 4
  %61 = load %struct.tws_request*, %struct.tws_request** %6, align 8
  %62 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %61, i32 0, i32 8
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* @TWS_REQ_RET_INVALID, align 4
  %64 = load %struct.tws_request*, %struct.tws_request** %6, align 8
  %65 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %64, i32 0, i32 7
  store i32 %63, i32* %65, align 8
  %66 = load %struct.tws_request*, %struct.tws_request** %6, align 8
  %67 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %66, i32 0, i32 6
  store i32* null, i32** %67, align 8
  %68 = load %struct.tws_request*, %struct.tws_request** %6, align 8
  %69 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %68, i32 0, i32 5
  store i32* null, i32** %69, align 8
  %70 = load %struct.tws_request*, %struct.tws_request** %6, align 8
  %71 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %70, i32 0, i32 4
  %72 = call i32 @callout_stop(i32* %71)
  %73 = load %struct.tws_request*, %struct.tws_request** %6, align 8
  %74 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %73, i32 0, i32 2
  store i32* null, i32** %74, align 8
  %75 = load %struct.tws_request*, %struct.tws_request** %6, align 8
  %76 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %75, i32 0, i32 3
  store i32 0, i32* %76, align 8
  %77 = load i64, i64* %4, align 8
  %78 = load i64, i64* @TWS_REQ_TYPE_SCSI_IO, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %47
  %81 = load i64, i64* @TWS_REQ_STATE_TRAN, align 8
  br label %84

82:                                               ; preds = %47
  %83 = load i64, i64* @TWS_REQ_STATE_BUSY, align 8
  br label %84

84:                                               ; preds = %82, %80
  %85 = phi i64 [ %81, %80 ], [ %83, %82 ]
  %86 = load %struct.tws_request*, %struct.tws_request** %6, align 8
  %87 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %86, i32 0, i32 0
  store i64 %85, i64* %87, align 8
  br label %88

88:                                               ; preds = %84, %44
  %89 = load %struct.mtx*, %struct.mtx** %5, align 8
  %90 = call i32 @mtx_unlock(%struct.mtx* %89)
  %91 = load %struct.tws_request*, %struct.tws_request** %6, align 8
  ret %struct.tws_request* %91
}

declare dso_local i32 @mtx_lock(%struct.mtx*) #1

declare dso_local %struct.tws_request* @tws_q_remove_head(%struct.tws_softc*, i32) #1

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @mtx_unlock(%struct.mtx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
