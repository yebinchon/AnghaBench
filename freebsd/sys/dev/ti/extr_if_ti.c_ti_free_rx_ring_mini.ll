; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ti/extr_if_ti.c_ti_free_rx_ring_mini.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ti/extr_if_ti.c_ti_free_rx_ring_mini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_softc = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32**, i32, i32* }
%struct.TYPE_3__ = type { i32* }

@TI_MINI_RX_RING_CNT = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@TI_MINI_RX_RING_SZ = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ti_softc*)* @ti_free_rx_ring_mini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ti_free_rx_ring_mini(%struct.ti_softc* %0) #0 {
  %2 = alloca %struct.ti_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.ti_softc* %0, %struct.ti_softc** %2, align 8
  %5 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %6 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %85

11:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %65, %11
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @TI_MINI_RX_RING_CNT, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %68

16:                                               ; preds = %12
  %17 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %18 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 2
  %20 = load i32**, i32*** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32*, i32** %20, i64 %22
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %64

26:                                               ; preds = %16
  %27 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %28 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 4
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %3, align 4
  %35 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %36 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %41 = call i32 @bus_dmamap_sync(i32 %38, i32 %39, i32 %40)
  %42 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %43 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @bus_dmamap_unload(i32 %45, i32 %46)
  %48 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %49 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 2
  %51 = load i32**, i32*** %50, align 8
  %52 = load i32, i32* %4, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32*, i32** %51, i64 %53
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 @m_freem(i32* %55)
  %57 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %58 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 2
  %60 = load i32**, i32*** %59, align 8
  %61 = load i32, i32* %4, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32*, i32** %60, i64 %62
  store i32* null, i32** %63, align 8
  br label %64

64:                                               ; preds = %26, %16
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %4, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %4, align 4
  br label %12

68:                                               ; preds = %12
  %69 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %70 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* @TI_MINI_RX_RING_SZ, align 4
  %74 = call i32 @bzero(i32* %72, i32 %73)
  %75 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %76 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %80 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %84 = call i32 @bus_dmamap_sync(i32 %78, i32 %82, i32 %83)
  br label %85

85:                                               ; preds = %68, %10
  ret void
}

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @m_freem(i32*) #1

declare dso_local i32 @bzero(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
