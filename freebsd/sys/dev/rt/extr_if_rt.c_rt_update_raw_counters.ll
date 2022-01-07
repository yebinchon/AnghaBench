; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rt/extr_if_rt.c_rt_update_raw_counters.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rt/extr_if_rt.c_rt_update_raw_counters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt_softc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@CNTR_BASE = common dso_local global i64 0, align 8
@GDMA_TX_GBCNT0 = common dso_local global i64 0, align 8
@GDMA_TX_GPCNT0 = common dso_local global i64 0, align 8
@GDMA_TX_SKIPCNT0 = common dso_local global i64 0, align 8
@GDMA_TX_COLCNT0 = common dso_local global i64 0, align 8
@GDMA_RX_GBCNT0 = common dso_local global i64 0, align 8
@GDMA_RX_GPCNT0 = common dso_local global i64 0, align 8
@GDMA_RX_CSUM_ERCNT0 = common dso_local global i64 0, align 8
@GDMA_RX_SHORT_ERCNT0 = common dso_local global i64 0, align 8
@GDMA_RX_LONG_ERCNT0 = common dso_local global i64 0, align 8
@GDMA_RX_FERCNT0 = common dso_local global i64 0, align 8
@GDMA_RX_OERCNT0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt_softc*)* @rt_update_raw_counters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt_update_raw_counters(%struct.rt_softc* %0) #0 {
  %2 = alloca %struct.rt_softc*, align 8
  store %struct.rt_softc* %0, %struct.rt_softc** %2, align 8
  %3 = load %struct.rt_softc*, %struct.rt_softc** %2, align 8
  %4 = load i64, i64* @CNTR_BASE, align 8
  %5 = load i64, i64* @GDMA_TX_GBCNT0, align 8
  %6 = add nsw i64 %4, %5
  %7 = call i64 @RT_READ(%struct.rt_softc* %3, i64 %6)
  %8 = load %struct.rt_softc*, %struct.rt_softc** %2, align 8
  %9 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %8, i32 0, i32 10
  %10 = load i32, i32* %9, align 4
  %11 = sext i32 %10 to i64
  %12 = add nsw i64 %11, %7
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %9, align 4
  %14 = load %struct.rt_softc*, %struct.rt_softc** %2, align 8
  %15 = load i64, i64* @CNTR_BASE, align 8
  %16 = load i64, i64* @GDMA_TX_GPCNT0, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i64 @RT_READ(%struct.rt_softc* %14, i64 %17)
  %19 = load %struct.rt_softc*, %struct.rt_softc** %2, align 8
  %20 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %19, i32 0, i32 9
  %21 = load i32, i32* %20, align 4
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %22, %18
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %20, align 4
  %25 = load %struct.rt_softc*, %struct.rt_softc** %2, align 8
  %26 = load i64, i64* @CNTR_BASE, align 8
  %27 = load i64, i64* @GDMA_TX_SKIPCNT0, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i64 @RT_READ(%struct.rt_softc* %25, i64 %28)
  %30 = load %struct.rt_softc*, %struct.rt_softc** %2, align 8
  %31 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %30, i32 0, i32 8
  %32 = load i32, i32* %31, align 4
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %33, %29
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %31, align 4
  %36 = load %struct.rt_softc*, %struct.rt_softc** %2, align 8
  %37 = load i64, i64* @CNTR_BASE, align 8
  %38 = load i64, i64* @GDMA_TX_COLCNT0, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i64 @RT_READ(%struct.rt_softc* %36, i64 %39)
  %41 = load %struct.rt_softc*, %struct.rt_softc** %2, align 8
  %42 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %41, i32 0, i32 7
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %44, %40
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %42, align 4
  %47 = load %struct.rt_softc*, %struct.rt_softc** %2, align 8
  %48 = load i64, i64* @CNTR_BASE, align 8
  %49 = load i64, i64* @GDMA_RX_GBCNT0, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i64 @RT_READ(%struct.rt_softc* %47, i64 %50)
  %52 = load %struct.rt_softc*, %struct.rt_softc** %2, align 8
  %53 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %52, i32 0, i32 6
  %54 = load i32, i32* %53, align 4
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %55, %51
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %53, align 4
  %58 = load %struct.rt_softc*, %struct.rt_softc** %2, align 8
  %59 = load i64, i64* @CNTR_BASE, align 8
  %60 = load i64, i64* @GDMA_RX_GPCNT0, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i64 @RT_READ(%struct.rt_softc* %58, i64 %61)
  %63 = load %struct.rt_softc*, %struct.rt_softc** %2, align 8
  %64 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 4
  %66 = sext i32 %65 to i64
  %67 = add nsw i64 %66, %62
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %64, align 4
  %69 = load %struct.rt_softc*, %struct.rt_softc** %2, align 8
  %70 = load i64, i64* @CNTR_BASE, align 8
  %71 = load i64, i64* @GDMA_RX_CSUM_ERCNT0, align 8
  %72 = add nsw i64 %70, %71
  %73 = call i64 @RT_READ(%struct.rt_softc* %69, i64 %72)
  %74 = load %struct.rt_softc*, %struct.rt_softc** %2, align 8
  %75 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 4
  %77 = sext i32 %76 to i64
  %78 = add nsw i64 %77, %73
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %75, align 4
  %80 = load %struct.rt_softc*, %struct.rt_softc** %2, align 8
  %81 = load i64, i64* @CNTR_BASE, align 8
  %82 = load i64, i64* @GDMA_RX_SHORT_ERCNT0, align 8
  %83 = add nsw i64 %81, %82
  %84 = call i64 @RT_READ(%struct.rt_softc* %80, i64 %83)
  %85 = load %struct.rt_softc*, %struct.rt_softc** %2, align 8
  %86 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = sext i32 %87 to i64
  %89 = add nsw i64 %88, %84
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %86, align 4
  %91 = load %struct.rt_softc*, %struct.rt_softc** %2, align 8
  %92 = load i64, i64* @CNTR_BASE, align 8
  %93 = load i64, i64* @GDMA_RX_LONG_ERCNT0, align 8
  %94 = add nsw i64 %92, %93
  %95 = call i64 @RT_READ(%struct.rt_softc* %91, i64 %94)
  %96 = load %struct.rt_softc*, %struct.rt_softc** %2, align 8
  %97 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = sext i32 %98 to i64
  %100 = add nsw i64 %99, %95
  %101 = trunc i64 %100 to i32
  store i32 %101, i32* %97, align 4
  %102 = load %struct.rt_softc*, %struct.rt_softc** %2, align 8
  %103 = load i64, i64* @CNTR_BASE, align 8
  %104 = load i64, i64* @GDMA_RX_FERCNT0, align 8
  %105 = add nsw i64 %103, %104
  %106 = call i64 @RT_READ(%struct.rt_softc* %102, i64 %105)
  %107 = load %struct.rt_softc*, %struct.rt_softc** %2, align 8
  %108 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = sext i32 %109 to i64
  %111 = add nsw i64 %110, %106
  %112 = trunc i64 %111 to i32
  store i32 %112, i32* %108, align 4
  %113 = load %struct.rt_softc*, %struct.rt_softc** %2, align 8
  %114 = load i64, i64* @CNTR_BASE, align 8
  %115 = load i64, i64* @GDMA_RX_OERCNT0, align 8
  %116 = add nsw i64 %114, %115
  %117 = call i64 @RT_READ(%struct.rt_softc* %113, i64 %116)
  %118 = load %struct.rt_softc*, %struct.rt_softc** %2, align 8
  %119 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = sext i32 %120 to i64
  %122 = add nsw i64 %121, %117
  %123 = trunc i64 %122 to i32
  store i32 %123, i32* %119, align 4
  ret void
}

declare dso_local i64 @RT_READ(%struct.rt_softc*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
