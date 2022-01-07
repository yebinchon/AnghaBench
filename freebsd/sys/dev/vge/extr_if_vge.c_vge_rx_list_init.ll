; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vge/extr_if_vge.c_vge_rx_list_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vge/extr_if_vge.c_vge_rx_list_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vge_softc = type { %struct.TYPE_2__, %struct.vge_ring_data }
%struct.TYPE_2__ = type { i64, i32, i32, %struct.vge_rxdesc*, i32*, i32*, i64 }
%struct.vge_rxdesc = type { %struct.vge_rxdesc*, i32*, i32* }
%struct.vge_ring_data = type { i32* }

@VGE_RX_LIST_SZ = common dso_local global i32 0, align 4
@VGE_RX_DESC_CNT = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vge_softc*)* @vge_rx_list_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vge_rx_list_init(%struct.vge_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vge_softc*, align 8
  %4 = alloca %struct.vge_ring_data*, align 8
  %5 = alloca %struct.vge_rxdesc*, align 8
  %6 = alloca i32, align 4
  store %struct.vge_softc* %0, %struct.vge_softc** %3, align 8
  %7 = load %struct.vge_softc*, %struct.vge_softc** %3, align 8
  %8 = call i32 @VGE_LOCK_ASSERT(%struct.vge_softc* %7)
  %9 = load %struct.vge_softc*, %struct.vge_softc** %3, align 8
  %10 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 6
  store i64 0, i64* %11, align 8
  %12 = load %struct.vge_softc*, %struct.vge_softc** %3, align 8
  %13 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 5
  store i32* null, i32** %14, align 8
  %15 = load %struct.vge_softc*, %struct.vge_softc** %3, align 8
  %16 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 4
  store i32* null, i32** %17, align 8
  %18 = load %struct.vge_softc*, %struct.vge_softc** %3, align 8
  %19 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i64 0, i64* %20, align 8
  %21 = load %struct.vge_softc*, %struct.vge_softc** %3, align 8
  %22 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %21, i32 0, i32 1
  store %struct.vge_ring_data* %22, %struct.vge_ring_data** %4, align 8
  %23 = load %struct.vge_ring_data*, %struct.vge_ring_data** %4, align 8
  %24 = getelementptr inbounds %struct.vge_ring_data, %struct.vge_ring_data* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* @VGE_RX_LIST_SZ, align 4
  %27 = call i32 @bzero(i32* %25, i32 %26)
  store i32 0, i32* %6, align 4
  br label %28

28:                                               ; preds = %82, %1
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @VGE_RX_DESC_CNT, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %85

32:                                               ; preds = %28
  %33 = load %struct.vge_softc*, %struct.vge_softc** %3, align 8
  %34 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 3
  %36 = load %struct.vge_rxdesc*, %struct.vge_rxdesc** %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.vge_rxdesc, %struct.vge_rxdesc* %36, i64 %38
  store %struct.vge_rxdesc* %39, %struct.vge_rxdesc** %5, align 8
  %40 = load %struct.vge_rxdesc*, %struct.vge_rxdesc** %5, align 8
  %41 = getelementptr inbounds %struct.vge_rxdesc, %struct.vge_rxdesc* %40, i32 0, i32 2
  store i32* null, i32** %41, align 8
  %42 = load %struct.vge_ring_data*, %struct.vge_ring_data** %4, align 8
  %43 = getelementptr inbounds %struct.vge_ring_data, %struct.vge_ring_data* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load %struct.vge_rxdesc*, %struct.vge_rxdesc** %5, align 8
  %49 = getelementptr inbounds %struct.vge_rxdesc, %struct.vge_rxdesc* %48, i32 0, i32 1
  store i32* %47, i32** %49, align 8
  %50 = load i32, i32* %6, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %32
  %53 = load %struct.vge_softc*, %struct.vge_softc** %3, align 8
  %54 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 3
  %56 = load %struct.vge_rxdesc*, %struct.vge_rxdesc** %55, align 8
  %57 = load i32, i32* @VGE_RX_DESC_CNT, align 4
  %58 = sub nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.vge_rxdesc, %struct.vge_rxdesc* %56, i64 %59
  %61 = load %struct.vge_rxdesc*, %struct.vge_rxdesc** %5, align 8
  %62 = getelementptr inbounds %struct.vge_rxdesc, %struct.vge_rxdesc* %61, i32 0, i32 0
  store %struct.vge_rxdesc* %60, %struct.vge_rxdesc** %62, align 8
  br label %74

63:                                               ; preds = %32
  %64 = load %struct.vge_softc*, %struct.vge_softc** %3, align 8
  %65 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 3
  %67 = load %struct.vge_rxdesc*, %struct.vge_rxdesc** %66, align 8
  %68 = load i32, i32* %6, align 4
  %69 = sub nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.vge_rxdesc, %struct.vge_rxdesc* %67, i64 %70
  %72 = load %struct.vge_rxdesc*, %struct.vge_rxdesc** %5, align 8
  %73 = getelementptr inbounds %struct.vge_rxdesc, %struct.vge_rxdesc* %72, i32 0, i32 0
  store %struct.vge_rxdesc* %71, %struct.vge_rxdesc** %73, align 8
  br label %74

74:                                               ; preds = %63, %52
  %75 = load %struct.vge_softc*, %struct.vge_softc** %3, align 8
  %76 = load i32, i32* %6, align 4
  %77 = call i64 @vge_newbuf(%struct.vge_softc* %75, i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %74
  %80 = load i32, i32* @ENOBUFS, align 4
  store i32 %80, i32* %2, align 4
  br label %101

81:                                               ; preds = %74
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %6, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %6, align 4
  br label %28

85:                                               ; preds = %28
  %86 = load %struct.vge_softc*, %struct.vge_softc** %3, align 8
  %87 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.vge_softc*, %struct.vge_softc** %3, align 8
  %91 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %95 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %96 = or i32 %94, %95
  %97 = call i32 @bus_dmamap_sync(i32 %89, i32 %93, i32 %96)
  %98 = load %struct.vge_softc*, %struct.vge_softc** %3, align 8
  %99 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  store i64 0, i64* %100, align 8
  store i32 0, i32* %2, align 4
  br label %101

101:                                              ; preds = %85, %79
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local i32 @VGE_LOCK_ASSERT(%struct.vge_softc*) #1

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i64 @vge_newbuf(%struct.vge_softc*, i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
