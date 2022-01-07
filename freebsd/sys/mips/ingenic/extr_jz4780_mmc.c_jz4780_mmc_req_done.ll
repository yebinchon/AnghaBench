; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_mmc.c_jz4780_mmc_req_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_mmc.c_jz4780_mmc_req_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jz4780_mmc_softc = type { i32, i64, i64, i64, i64, %struct.mmc_request*, i32, i32, i32, i32, i32 }
%struct.mmc_request = type { i32 (%struct.mmc_request*)*, %struct.mmc_command* }
%struct.mmc_command = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MMC_ERR_NONE = common dso_local global i64 0, align 8
@MMC_DATA_WRITE = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.jz4780_mmc_softc*)* @jz4780_mmc_req_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jz4780_mmc_req_done(%struct.jz4780_mmc_softc* %0) #0 {
  %2 = alloca %struct.jz4780_mmc_softc*, align 8
  %3 = alloca %struct.mmc_command*, align 8
  %4 = alloca %struct.mmc_request*, align 8
  %5 = alloca i32, align 4
  store %struct.jz4780_mmc_softc* %0, %struct.jz4780_mmc_softc** %2, align 8
  %6 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %2, align 8
  %7 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %6, i32 0, i32 5
  %8 = load %struct.mmc_request*, %struct.mmc_request** %7, align 8
  %9 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %8, i32 0, i32 1
  %10 = load %struct.mmc_command*, %struct.mmc_command** %9, align 8
  store %struct.mmc_command* %10, %struct.mmc_command** %3, align 8
  %11 = load %struct.mmc_command*, %struct.mmc_command** %3, align 8
  %12 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @MMC_ERR_NONE, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %2, align 8
  %18 = call i32 @jz4780_mmc_reset(%struct.jz4780_mmc_softc* %17)
  br label %19

19:                                               ; preds = %16, %1
  %20 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %2, align 8
  %21 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %61

24:                                               ; preds = %19
  %25 = load %struct.mmc_command*, %struct.mmc_command** %3, align 8
  %26 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @MMC_DATA_WRITE, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %24
  %34 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  store i32 %34, i32* %5, align 4
  br label %37

35:                                               ; preds = %24
  %36 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %35, %33
  %38 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %2, align 8
  %39 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %38, i32 0, i32 8
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %2, align 8
  %42 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %41, i32 0, i32 7
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @bus_dmamap_sync(i32 %40, i32 %43, i32 %44)
  %46 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %2, align 8
  %47 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %46, i32 0, i32 10
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %2, align 8
  %50 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %49, i32 0, i32 9
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %53 = call i32 @bus_dmamap_sync(i32 %48, i32 %51, i32 %52)
  %54 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %2, align 8
  %55 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %54, i32 0, i32 8
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %2, align 8
  %58 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %57, i32 0, i32 7
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @bus_dmamap_unload(i32 %56, i32 %59)
  br label %61

61:                                               ; preds = %37, %19
  %62 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %2, align 8
  %63 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %62, i32 0, i32 5
  %64 = load %struct.mmc_request*, %struct.mmc_request** %63, align 8
  store %struct.mmc_request* %64, %struct.mmc_request** %4, align 8
  %65 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %2, align 8
  %66 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %65, i32 0, i32 6
  %67 = call i32 @callout_stop(i32* %66)
  %68 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %2, align 8
  %69 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %68, i32 0, i32 5
  store %struct.mmc_request* null, %struct.mmc_request** %69, align 8
  %70 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %2, align 8
  %71 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %70, i32 0, i32 4
  store i64 0, i64* %71, align 8
  %72 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %2, align 8
  %73 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %72, i32 0, i32 0
  store i32 0, i32* %73, align 8
  %74 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %2, align 8
  %75 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %74, i32 0, i32 3
  store i64 0, i64* %75, align 8
  %76 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %2, align 8
  %77 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %76, i32 0, i32 2
  store i64 0, i64* %77, align 8
  %78 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %2, align 8
  %79 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %78, i32 0, i32 1
  store i64 0, i64* %79, align 8
  %80 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %81 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %80, i32 0, i32 0
  %82 = load i32 (%struct.mmc_request*)*, i32 (%struct.mmc_request*)** %81, align 8
  %83 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %84 = call i32 %82(%struct.mmc_request* %83)
  ret void
}

declare dso_local i32 @jz4780_mmc_reset(%struct.jz4780_mmc_softc*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @callout_stop(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
