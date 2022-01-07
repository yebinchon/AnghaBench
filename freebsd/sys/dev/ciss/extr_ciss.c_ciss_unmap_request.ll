; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ciss/extr_ciss.c_ciss_unmap_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ciss/extr_ciss.c_ciss_unmap_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ciss_request = type { i32, i32, i32*, %struct.ciss_softc* }
%struct.ciss_softc = type { i32, i32, i32 }

@CISS_REQ_MAPPED = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@CISS_REQ_DATAIN = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@CISS_REQ_DATAOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ciss_request*)* @ciss_unmap_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ciss_unmap_request(%struct.ciss_request* %0) #0 {
  %2 = alloca %struct.ciss_request*, align 8
  %3 = alloca %struct.ciss_softc*, align 8
  store %struct.ciss_request* %0, %struct.ciss_request** %2, align 8
  %4 = call i32 @debug_called(i32 2)
  %5 = load %struct.ciss_request*, %struct.ciss_request** %2, align 8
  %6 = getelementptr inbounds %struct.ciss_request, %struct.ciss_request* %5, i32 0, i32 3
  %7 = load %struct.ciss_softc*, %struct.ciss_softc** %6, align 8
  store %struct.ciss_softc* %7, %struct.ciss_softc** %3, align 8
  %8 = load %struct.ciss_request*, %struct.ciss_request** %2, align 8
  %9 = getelementptr inbounds %struct.ciss_request, %struct.ciss_request* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @CISS_REQ_MAPPED, align 4
  %12 = and i32 %10, %11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %76

15:                                               ; preds = %1
  %16 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %17 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %20 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %23 = call i32 @bus_dmamap_sync(i32 %18, i32 %21, i32 %22)
  %24 = load %struct.ciss_request*, %struct.ciss_request** %2, align 8
  %25 = getelementptr inbounds %struct.ciss_request, %struct.ciss_request* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %15
  br label %69

29:                                               ; preds = %15
  %30 = load %struct.ciss_request*, %struct.ciss_request** %2, align 8
  %31 = getelementptr inbounds %struct.ciss_request, %struct.ciss_request* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @CISS_REQ_DATAIN, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %29
  %37 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %38 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.ciss_request*, %struct.ciss_request** %2, align 8
  %41 = getelementptr inbounds %struct.ciss_request, %struct.ciss_request* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %44 = call i32 @bus_dmamap_sync(i32 %39, i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %36, %29
  %46 = load %struct.ciss_request*, %struct.ciss_request** %2, align 8
  %47 = getelementptr inbounds %struct.ciss_request, %struct.ciss_request* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @CISS_REQ_DATAOUT, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %45
  %53 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %54 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.ciss_request*, %struct.ciss_request** %2, align 8
  %57 = getelementptr inbounds %struct.ciss_request, %struct.ciss_request* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %60 = call i32 @bus_dmamap_sync(i32 %55, i32 %58, i32 %59)
  br label %61

61:                                               ; preds = %52, %45
  %62 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %63 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.ciss_request*, %struct.ciss_request** %2, align 8
  %66 = getelementptr inbounds %struct.ciss_request, %struct.ciss_request* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @bus_dmamap_unload(i32 %64, i32 %67)
  br label %69

69:                                               ; preds = %61, %28
  %70 = load i32, i32* @CISS_REQ_MAPPED, align 4
  %71 = xor i32 %70, -1
  %72 = load %struct.ciss_request*, %struct.ciss_request** %2, align 8
  %73 = getelementptr inbounds %struct.ciss_request, %struct.ciss_request* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = and i32 %74, %71
  store i32 %75, i32* %73, align 8
  br label %76

76:                                               ; preds = %69, %14
  ret void
}

declare dso_local i32 @debug_called(i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
