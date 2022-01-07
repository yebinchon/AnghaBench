; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ciss/extr_ciss.c_ciss_map_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ciss/extr_ciss.c_ciss_map_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ciss_request = type { i32, i32, i32, i32, i32*, i32, %struct.ciss_softc* }
%struct.ciss_softc = type { i64, i32, i32, i32 }

@CISS_REQ_MAPPED = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@CISS_REQ_CCB = common dso_local global i32 0, align 4
@ciss_request_map_helper = common dso_local global i32 0, align 4
@CISS_SG_NONE = common dso_local global i32 0, align 4
@CISS_REQ_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ciss_request*)* @ciss_map_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ciss_map_request(%struct.ciss_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ciss_request*, align 8
  %4 = alloca %struct.ciss_softc*, align 8
  %5 = alloca i32, align 4
  store %struct.ciss_request* %0, %struct.ciss_request** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = call i32 @debug_called(i32 2)
  %7 = load %struct.ciss_request*, %struct.ciss_request** %3, align 8
  %8 = getelementptr inbounds %struct.ciss_request, %struct.ciss_request* %7, i32 0, i32 6
  %9 = load %struct.ciss_softc*, %struct.ciss_softc** %8, align 8
  store %struct.ciss_softc* %9, %struct.ciss_softc** %4, align 8
  %10 = load %struct.ciss_request*, %struct.ciss_request** %3, align 8
  %11 = getelementptr inbounds %struct.ciss_request, %struct.ciss_request* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @CISS_REQ_MAPPED, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %102

17:                                               ; preds = %1
  %18 = load i32, i32* @CISS_REQ_MAPPED, align 4
  %19 = load %struct.ciss_request*, %struct.ciss_request** %3, align 8
  %20 = getelementptr inbounds %struct.ciss_request, %struct.ciss_request* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = or i32 %21, %18
  store i32 %22, i32* %20, align 8
  %23 = load %struct.ciss_softc*, %struct.ciss_softc** %4, align 8
  %24 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.ciss_softc*, %struct.ciss_softc** %4, align 8
  %27 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %30 = call i32 @bus_dmamap_sync(i32 %25, i32 %28, i32 %29)
  %31 = load %struct.ciss_request*, %struct.ciss_request** %3, align 8
  %32 = getelementptr inbounds %struct.ciss_request, %struct.ciss_request* %31, i32 0, i32 4
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %77

35:                                               ; preds = %17
  %36 = load %struct.ciss_request*, %struct.ciss_request** %3, align 8
  %37 = getelementptr inbounds %struct.ciss_request, %struct.ciss_request* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @CISS_REQ_CCB, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %35
  %43 = load %struct.ciss_softc*, %struct.ciss_softc** %4, align 8
  %44 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.ciss_request*, %struct.ciss_request** %3, align 8
  %47 = getelementptr inbounds %struct.ciss_request, %struct.ciss_request* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.ciss_request*, %struct.ciss_request** %3, align 8
  %50 = getelementptr inbounds %struct.ciss_request, %struct.ciss_request* %49, i32 0, i32 4
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* @ciss_request_map_helper, align 4
  %53 = load %struct.ciss_request*, %struct.ciss_request** %3, align 8
  %54 = call i32 @bus_dmamap_load_ccb(i32 %45, i32 %48, i32* %51, i32 %52, %struct.ciss_request* %53, i32 0)
  store i32 %54, i32* %5, align 4
  br label %71

55:                                               ; preds = %35
  %56 = load %struct.ciss_softc*, %struct.ciss_softc** %4, align 8
  %57 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.ciss_request*, %struct.ciss_request** %3, align 8
  %60 = getelementptr inbounds %struct.ciss_request, %struct.ciss_request* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.ciss_request*, %struct.ciss_request** %3, align 8
  %63 = getelementptr inbounds %struct.ciss_request, %struct.ciss_request* %62, i32 0, i32 4
  %64 = load i32*, i32** %63, align 8
  %65 = load %struct.ciss_request*, %struct.ciss_request** %3, align 8
  %66 = getelementptr inbounds %struct.ciss_request, %struct.ciss_request* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @ciss_request_map_helper, align 4
  %69 = load %struct.ciss_request*, %struct.ciss_request** %3, align 8
  %70 = call i32 @bus_dmamap_load(i32 %58, i32 %61, i32* %64, i32 %67, i32 %68, %struct.ciss_request* %69, i32 0)
  store i32 %70, i32* %5, align 4
  br label %71

71:                                               ; preds = %55, %42
  %72 = load i32, i32* %5, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  %75 = load i32, i32* %5, align 4
  store i32 %75, i32* %2, align 4
  br label %102

76:                                               ; preds = %71
  br label %101

77:                                               ; preds = %17
  %78 = load i32, i32* @CISS_SG_NONE, align 4
  %79 = load %struct.ciss_request*, %struct.ciss_request** %3, align 8
  %80 = getelementptr inbounds %struct.ciss_request, %struct.ciss_request* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 8
  %81 = load i32, i32* @CISS_REQ_BUSY, align 4
  %82 = load %struct.ciss_request*, %struct.ciss_request** %3, align 8
  %83 = getelementptr inbounds %struct.ciss_request, %struct.ciss_request* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = or i32 %84, %81
  store i32 %85, i32* %83, align 8
  %86 = load %struct.ciss_softc*, %struct.ciss_softc** %4, align 8
  %87 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %77
  %91 = load %struct.ciss_softc*, %struct.ciss_softc** %4, align 8
  %92 = load %struct.ciss_request*, %struct.ciss_request** %3, align 8
  %93 = call i32 @CISS_TL_PERF_POST_CMD(%struct.ciss_softc* %91, %struct.ciss_request* %92)
  br label %100

94:                                               ; preds = %77
  %95 = load %struct.ciss_softc*, %struct.ciss_softc** %4, align 8
  %96 = load %struct.ciss_request*, %struct.ciss_request** %3, align 8
  %97 = getelementptr inbounds %struct.ciss_request, %struct.ciss_request* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @CISS_TL_SIMPLE_POST_CMD(%struct.ciss_softc* %95, i32 %98)
  br label %100

100:                                              ; preds = %94, %90
  br label %101

101:                                              ; preds = %100, %76
  store i32 0, i32* %2, align 4
  br label %102

102:                                              ; preds = %101, %74, %16
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

declare dso_local i32 @debug_called(i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @bus_dmamap_load_ccb(i32, i32, i32*, i32, %struct.ciss_request*, i32) #1

declare dso_local i32 @bus_dmamap_load(i32, i32, i32*, i32, i32, %struct.ciss_request*, i32) #1

declare dso_local i32 @CISS_TL_PERF_POST_CMD(%struct.ciss_softc*, %struct.ciss_request*) #1

declare dso_local i32 @CISS_TL_SIMPLE_POST_CMD(%struct.ciss_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
