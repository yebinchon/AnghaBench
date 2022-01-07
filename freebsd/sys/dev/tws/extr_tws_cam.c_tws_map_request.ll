; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/tws/extr_tws_cam.c_tws_map_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/tws/extr_tws_cam.c_tws_map_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tws_softc = type { i32, i32 }
%struct.tws_request = type { i64, i32, i32, i32*, i32 }

@TWS_REQ_TYPE_SCSI_IO = common dso_local global i64 0, align 8
@BUS_DMA_WAITOK = common dso_local global i32 0, align 4
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@TWS_DATA_CCB = common dso_local global i32 0, align 4
@tws_dmamap_data_load_cbfn = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"in progress\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @tws_map_request(%struct.tws_softc* %0, %struct.tws_request* %1) #0 {
  %3 = alloca %struct.tws_softc*, align 8
  %4 = alloca %struct.tws_request*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.tws_softc* %0, %struct.tws_softc** %3, align 8
  store %struct.tws_request* %1, %struct.tws_request** %4, align 8
  store i64 0, i64* %5, align 8
  %7 = load %struct.tws_request*, %struct.tws_request** %4, align 8
  %8 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %7, i32 0, i32 3
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %78

11:                                               ; preds = %2
  %12 = load %struct.tws_request*, %struct.tws_request** %4, align 8
  %13 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @TWS_REQ_TYPE_SCSI_IO, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = load i32, i32* @BUS_DMA_WAITOK, align 4
  br label %21

19:                                               ; preds = %11
  %20 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi i32 [ %18, %17 ], [ %20, %19 ]
  store i32 %22, i32* %6, align 4
  %23 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %24 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %23, i32 0, i32 0
  %25 = call i32 @mtx_lock(i32* %24)
  %26 = load %struct.tws_request*, %struct.tws_request** %4, align 8
  %27 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @TWS_DATA_CCB, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %46

32:                                               ; preds = %21
  %33 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %34 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.tws_request*, %struct.tws_request** %4, align 8
  %37 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.tws_request*, %struct.tws_request** %4, align 8
  %40 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %39, i32 0, i32 3
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* @tws_dmamap_data_load_cbfn, align 4
  %43 = load %struct.tws_request*, %struct.tws_request** %4, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i64 @bus_dmamap_load_ccb(i32 %35, i32 %38, i32* %41, i32 %42, %struct.tws_request* %43, i32 %44)
  store i64 %45, i64* %5, align 8
  br label %63

46:                                               ; preds = %21
  %47 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %48 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.tws_request*, %struct.tws_request** %4, align 8
  %51 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.tws_request*, %struct.tws_request** %4, align 8
  %54 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %53, i32 0, i32 3
  %55 = load i32*, i32** %54, align 8
  %56 = load %struct.tws_request*, %struct.tws_request** %4, align 8
  %57 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @tws_dmamap_data_load_cbfn, align 4
  %60 = load %struct.tws_request*, %struct.tws_request** %4, align 8
  %61 = load i32, i32* %6, align 4
  %62 = call i64 @bus_dmamap_load(i32 %49, i32 %52, i32* %55, i32 %58, i32 %59, %struct.tws_request* %60, i32 %61)
  store i64 %62, i64* %5, align 8
  br label %63

63:                                               ; preds = %46, %32
  %64 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %65 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %64, i32 0, i32 0
  %66 = call i32 @mtx_unlock(i32* %65)
  %67 = load i64, i64* %5, align 8
  %68 = load i64, i64* @EINPROGRESS, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %77

70:                                               ; preds = %63
  %71 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %72 = load i64, i64* %5, align 8
  %73 = call i32 @TWS_TRACE(%struct.tws_softc* %71, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 0, i64 %72)
  %74 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %75 = load %struct.tws_request*, %struct.tws_request** %4, align 8
  %76 = call i32 @tws_freeze_simq(%struct.tws_softc* %74, %struct.tws_request* %75)
  store i64 0, i64* %5, align 8
  br label %77

77:                                               ; preds = %70, %63
  br label %82

78:                                               ; preds = %2
  %79 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %80 = load %struct.tws_request*, %struct.tws_request** %4, align 8
  %81 = call i64 @tws_submit_command(%struct.tws_softc* %79, %struct.tws_request* %80)
  store i64 %81, i64* %5, align 8
  br label %82

82:                                               ; preds = %78, %77
  %83 = load i64, i64* %5, align 8
  ret i64 %83
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i64 @bus_dmamap_load_ccb(i32, i32, i32*, i32, %struct.tws_request*, i32) #1

declare dso_local i64 @bus_dmamap_load(i32, i32, i32*, i32, i32, %struct.tws_request*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @TWS_TRACE(%struct.tws_softc*, i8*, i32, i64) #1

declare dso_local i32 @tws_freeze_simq(%struct.tws_softc*, %struct.tws_request*) #1

declare dso_local i64 @tws_submit_command(%struct.tws_softc*, %struct.tws_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
