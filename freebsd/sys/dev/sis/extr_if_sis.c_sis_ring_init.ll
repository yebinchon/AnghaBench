; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sis/extr_if_sis.c_sis_ring_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sis/extr_if_sis.c_sis_ring_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sis_softc = type { i32, i32, %struct.TYPE_2__*, %struct.sis_rxdesc*, i64, i32, i32, i64, i64, i64, %struct.TYPE_2__*, %struct.sis_txdesc* }
%struct.sis_rxdesc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }
%struct.sis_txdesc = type { i32* }

@SIS_TX_LIST_SZ = common dso_local global i32 0, align 4
@SIS_TX_LIST_CNT = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@SIS_RX_LIST_SZ = common dso_local global i32 0, align 4
@SIS_RX_LIST_CNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sis_softc*)* @sis_ring_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sis_ring_init(%struct.sis_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sis_softc*, align 8
  %4 = alloca %struct.sis_rxdesc*, align 8
  %5 = alloca %struct.sis_txdesc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sis_softc* %0, %struct.sis_softc** %3, align 8
  %9 = load %struct.sis_softc*, %struct.sis_softc** %3, align 8
  %10 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %9, i32 0, i32 10
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i64 0
  %13 = load i32, i32* @SIS_TX_LIST_SZ, align 4
  %14 = call i32 @bzero(%struct.TYPE_2__* %12, i32 %13)
  store i32 0, i32* %8, align 4
  br label %15

15:                                               ; preds = %51, %1
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @SIS_TX_LIST_CNT, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %54

19:                                               ; preds = %15
  %20 = load %struct.sis_softc*, %struct.sis_softc** %3, align 8
  %21 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %20, i32 0, i32 11
  %22 = load %struct.sis_txdesc*, %struct.sis_txdesc** %21, align 8
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.sis_txdesc, %struct.sis_txdesc* %22, i64 %24
  store %struct.sis_txdesc* %25, %struct.sis_txdesc** %5, align 8
  %26 = load %struct.sis_txdesc*, %struct.sis_txdesc** %5, align 8
  %27 = getelementptr inbounds %struct.sis_txdesc, %struct.sis_txdesc* %26, i32 0, i32 0
  store i32* null, i32** %27, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @SIS_TX_LIST_CNT, align 4
  %30 = sub nsw i32 %29, 1
  %31 = icmp eq i32 %28, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %19
  %33 = load %struct.sis_softc*, %struct.sis_softc** %3, align 8
  %34 = call i32 @SIS_TX_RING_ADDR(%struct.sis_softc* %33, i32 0)
  store i32 %34, i32* %6, align 4
  br label %40

35:                                               ; preds = %19
  %36 = load %struct.sis_softc*, %struct.sis_softc** %3, align 8
  %37 = load i32, i32* %8, align 4
  %38 = add nsw i32 %37, 1
  %39 = call i32 @SIS_TX_RING_ADDR(%struct.sis_softc* %36, i32 %38)
  store i32 %39, i32* %6, align 4
  br label %40

40:                                               ; preds = %35, %32
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @SIS_ADDR_LO(i32 %41)
  %43 = call i8* @htole32(i32 %42)
  %44 = load %struct.sis_softc*, %struct.sis_softc** %3, align 8
  %45 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %44, i32 0, i32 10
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  store i8* %43, i8** %50, align 8
  br label %51

51:                                               ; preds = %40
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %8, align 4
  br label %15

54:                                               ; preds = %15
  %55 = load %struct.sis_softc*, %struct.sis_softc** %3, align 8
  %56 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %55, i32 0, i32 7
  store i64 0, i64* %56, align 8
  %57 = load %struct.sis_softc*, %struct.sis_softc** %3, align 8
  %58 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %57, i32 0, i32 8
  store i64 0, i64* %58, align 8
  %59 = load %struct.sis_softc*, %struct.sis_softc** %3, align 8
  %60 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %59, i32 0, i32 9
  store i64 0, i64* %60, align 8
  %61 = load %struct.sis_softc*, %struct.sis_softc** %3, align 8
  %62 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %61, i32 0, i32 6
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.sis_softc*, %struct.sis_softc** %3, align 8
  %65 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %68 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %69 = or i32 %67, %68
  %70 = call i32 @bus_dmamap_sync(i32 %63, i32 %66, i32 %69)
  %71 = load %struct.sis_softc*, %struct.sis_softc** %3, align 8
  %72 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %71, i32 0, i32 4
  store i64 0, i64* %72, align 8
  %73 = load %struct.sis_softc*, %struct.sis_softc** %3, align 8
  %74 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %73, i32 0, i32 2
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i64 0
  %77 = load i32, i32* @SIS_RX_LIST_SZ, align 4
  %78 = call i32 @bzero(%struct.TYPE_2__* %76, i32 %77)
  store i32 0, i32* %8, align 4
  br label %79

79:                                               ; preds = %126, %54
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* @SIS_RX_LIST_CNT, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %129

83:                                               ; preds = %79
  %84 = load %struct.sis_softc*, %struct.sis_softc** %3, align 8
  %85 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %84, i32 0, i32 3
  %86 = load %struct.sis_rxdesc*, %struct.sis_rxdesc** %85, align 8
  %87 = load i32, i32* %8, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.sis_rxdesc, %struct.sis_rxdesc* %86, i64 %88
  store %struct.sis_rxdesc* %89, %struct.sis_rxdesc** %4, align 8
  %90 = load %struct.sis_softc*, %struct.sis_softc** %3, align 8
  %91 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %90, i32 0, i32 2
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = load i32, i32* %8, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i64 %94
  %96 = load %struct.sis_rxdesc*, %struct.sis_rxdesc** %4, align 8
  %97 = getelementptr inbounds %struct.sis_rxdesc, %struct.sis_rxdesc* %96, i32 0, i32 0
  store %struct.TYPE_2__* %95, %struct.TYPE_2__** %97, align 8
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* @SIS_RX_LIST_CNT, align 4
  %100 = sub nsw i32 %99, 1
  %101 = icmp eq i32 %98, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %83
  %103 = load %struct.sis_softc*, %struct.sis_softc** %3, align 8
  %104 = call i32 @SIS_RX_RING_ADDR(%struct.sis_softc* %103, i32 0)
  store i32 %104, i32* %6, align 4
  br label %110

105:                                              ; preds = %83
  %106 = load %struct.sis_softc*, %struct.sis_softc** %3, align 8
  %107 = load i32, i32* %8, align 4
  %108 = add nsw i32 %107, 1
  %109 = call i32 @SIS_RX_RING_ADDR(%struct.sis_softc* %106, i32 %108)
  store i32 %109, i32* %6, align 4
  br label %110

110:                                              ; preds = %105, %102
  %111 = load i32, i32* %6, align 4
  %112 = call i32 @SIS_ADDR_LO(i32 %111)
  %113 = call i8* @htole32(i32 %112)
  %114 = load %struct.sis_rxdesc*, %struct.sis_rxdesc** %4, align 8
  %115 = getelementptr inbounds %struct.sis_rxdesc, %struct.sis_rxdesc* %114, i32 0, i32 0
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  store i8* %113, i8** %117, align 8
  %118 = load %struct.sis_softc*, %struct.sis_softc** %3, align 8
  %119 = load %struct.sis_rxdesc*, %struct.sis_rxdesc** %4, align 8
  %120 = call i32 @sis_newbuf(%struct.sis_softc* %118, %struct.sis_rxdesc* %119)
  store i32 %120, i32* %7, align 4
  %121 = load i32, i32* %7, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %110
  %124 = load i32, i32* %7, align 4
  store i32 %124, i32* %2, align 4
  br label %140

125:                                              ; preds = %110
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %8, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %8, align 4
  br label %79

129:                                              ; preds = %79
  %130 = load %struct.sis_softc*, %struct.sis_softc** %3, align 8
  %131 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.sis_softc*, %struct.sis_softc** %3, align 8
  %134 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %137 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %138 = or i32 %136, %137
  %139 = call i32 @bus_dmamap_sync(i32 %132, i32 %135, i32 %138)
  store i32 0, i32* %2, align 4
  br label %140

140:                                              ; preds = %129, %123
  %141 = load i32, i32* %2, align 4
  ret i32 %141
}

declare dso_local i32 @bzero(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @SIS_TX_RING_ADDR(%struct.sis_softc*, i32) #1

declare dso_local i8* @htole32(i32) #1

declare dso_local i32 @SIS_ADDR_LO(i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @SIS_RX_RING_ADDR(%struct.sis_softc*, i32) #1

declare dso_local i32 @sis_newbuf(%struct.sis_softc*, %struct.sis_rxdesc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
