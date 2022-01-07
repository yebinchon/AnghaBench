; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ti/extr_if_ti.c_ti_get_counter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ti/extr_if_ti.c_ti_get_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.ti_softc = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.ti_stats }
%struct.ti_stats = type { i64, i64, i64, i64 }

@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ifnet*, i32)* @ti_get_counter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ti_get_counter(%struct.ifnet* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ti_softc*, align 8
  %7 = alloca %struct.ti_stats*, align 8
  %8 = alloca i64, align 8
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %58 [
    i32 128, label %10
  ]

10:                                               ; preds = %2
  %11 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %12 = call %struct.ti_softc* @if_getsoftc(%struct.ifnet* %11)
  store %struct.ti_softc* %12, %struct.ti_softc** %6, align 8
  %13 = load %struct.ti_softc*, %struct.ti_softc** %6, align 8
  %14 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  store %struct.ti_stats* %17, %struct.ti_stats** %7, align 8
  %18 = load %struct.ti_softc*, %struct.ti_softc** %6, align 8
  %19 = call i32 @TI_LOCK(%struct.ti_softc* %18)
  %20 = load %struct.ti_softc*, %struct.ti_softc** %6, align 8
  %21 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.ti_softc*, %struct.ti_softc** %6, align 8
  %25 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %29 = call i32 @bus_dmamap_sync(i32 %23, i32 %27, i32 %28)
  %30 = load %struct.ti_stats*, %struct.ti_stats** %7, align 8
  %31 = getelementptr inbounds %struct.ti_stats, %struct.ti_stats* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.ti_stats*, %struct.ti_stats** %7, align 8
  %34 = getelementptr inbounds %struct.ti_stats, %struct.ti_stats* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %32, %35
  %37 = load %struct.ti_stats*, %struct.ti_stats** %7, align 8
  %38 = getelementptr inbounds %struct.ti_stats, %struct.ti_stats* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %36, %39
  %41 = load %struct.ti_stats*, %struct.ti_stats** %7, align 8
  %42 = getelementptr inbounds %struct.ti_stats, %struct.ti_stats* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %40, %43
  store i64 %44, i64* %8, align 8
  %45 = load %struct.ti_softc*, %struct.ti_softc** %6, align 8
  %46 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.ti_softc*, %struct.ti_softc** %6, align 8
  %50 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %54 = call i32 @bus_dmamap_sync(i32 %48, i32 %52, i32 %53)
  %55 = load %struct.ti_softc*, %struct.ti_softc** %6, align 8
  %56 = call i32 @TI_UNLOCK(%struct.ti_softc* %55)
  %57 = load i64, i64* %8, align 8
  store i64 %57, i64* %3, align 8
  br label %62

58:                                               ; preds = %2
  %59 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %60 = load i32, i32* %5, align 4
  %61 = call i64 @if_get_counter_default(%struct.ifnet* %59, i32 %60)
  store i64 %61, i64* %3, align 8
  br label %62

62:                                               ; preds = %58, %10
  %63 = load i64, i64* %3, align 8
  ret i64 %63
}

declare dso_local %struct.ti_softc* @if_getsoftc(%struct.ifnet*) #1

declare dso_local i32 @TI_LOCK(%struct.ti_softc*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @TI_UNLOCK(%struct.ti_softc*) #1

declare dso_local i64 @if_get_counter_default(%struct.ifnet*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
