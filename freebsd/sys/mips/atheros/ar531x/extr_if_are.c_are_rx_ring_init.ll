; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/atheros/ar531x/extr_if_are.c_are_rx_ring_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/atheros/ar531x/extr_if_are.c_are_rx_ring_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.are_softc = type { %struct.TYPE_3__, %struct.are_ring_data }
%struct.TYPE_3__ = type { i32, i32, %struct.are_rxdesc*, i64 }
%struct.are_rxdesc = type { %struct.TYPE_4__*, i32* }
%struct.TYPE_4__ = type { i32, i64, i32, i32 }
%struct.are_ring_data = type { %struct.TYPE_4__* }

@ARE_RX_RING_SIZE = common dso_local global i32 0, align 4
@ARE_RX_RING_CNT = common dso_local global i32 0, align 4
@ADSTAT_OWN = common dso_local global i32 0, align 4
@ADCTL_CH = common dso_local global i32 0, align 4
@ADCTL_ER = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.are_softc*)* @are_rx_ring_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @are_rx_ring_init(%struct.are_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.are_softc*, align 8
  %4 = alloca %struct.are_ring_data*, align 8
  %5 = alloca %struct.are_rxdesc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.are_softc* %0, %struct.are_softc** %3, align 8
  %8 = load %struct.are_softc*, %struct.are_softc** %3, align 8
  %9 = getelementptr inbounds %struct.are_softc, %struct.are_softc* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 3
  store i64 0, i64* %10, align 8
  %11 = load %struct.are_softc*, %struct.are_softc** %3, align 8
  %12 = getelementptr inbounds %struct.are_softc, %struct.are_softc* %11, i32 0, i32 1
  store %struct.are_ring_data* %12, %struct.are_ring_data** %4, align 8
  %13 = load %struct.are_ring_data*, %struct.are_ring_data** %4, align 8
  %14 = getelementptr inbounds %struct.are_ring_data, %struct.are_ring_data* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = load i32, i32* @ARE_RX_RING_SIZE, align 4
  %17 = call i32 @bzero(%struct.TYPE_4__* %15, i32 %16)
  store i32 0, i32* %7, align 4
  br label %18

18:                                               ; preds = %107, %1
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @ARE_RX_RING_CNT, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %110

22:                                               ; preds = %18
  %23 = load %struct.are_softc*, %struct.are_softc** %3, align 8
  %24 = getelementptr inbounds %struct.are_softc, %struct.are_softc* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 2
  %26 = load %struct.are_rxdesc*, %struct.are_rxdesc** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.are_rxdesc, %struct.are_rxdesc* %26, i64 %28
  store %struct.are_rxdesc* %29, %struct.are_rxdesc** %5, align 8
  %30 = load %struct.are_rxdesc*, %struct.are_rxdesc** %5, align 8
  %31 = getelementptr inbounds %struct.are_rxdesc, %struct.are_rxdesc* %30, i32 0, i32 1
  store i32* null, i32** %31, align 8
  %32 = load %struct.are_ring_data*, %struct.are_ring_data** %4, align 8
  %33 = getelementptr inbounds %struct.are_ring_data, %struct.are_ring_data* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i64 %36
  %38 = load %struct.are_rxdesc*, %struct.are_rxdesc** %5, align 8
  %39 = getelementptr inbounds %struct.are_rxdesc, %struct.are_rxdesc* %38, i32 0, i32 0
  store %struct.TYPE_4__* %37, %struct.TYPE_4__** %39, align 8
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @ARE_RX_RING_CNT, align 4
  %42 = sub nsw i32 %41, 1
  %43 = icmp eq i32 %40, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %22
  %45 = load %struct.are_softc*, %struct.are_softc** %3, align 8
  %46 = call i32 @ARE_RX_RING_ADDR(%struct.are_softc* %45, i32 0)
  store i32 %46, i32* %6, align 4
  br label %52

47:                                               ; preds = %22
  %48 = load %struct.are_softc*, %struct.are_softc** %3, align 8
  %49 = load i32, i32* %7, align 4
  %50 = add nsw i32 %49, 1
  %51 = call i32 @ARE_RX_RING_ADDR(%struct.are_softc* %48, i32 %50)
  store i32 %51, i32* %6, align 4
  br label %52

52:                                               ; preds = %47, %44
  %53 = load i32, i32* @ADSTAT_OWN, align 4
  %54 = load %struct.are_ring_data*, %struct.are_ring_data** %4, align 8
  %55 = getelementptr inbounds %struct.are_ring_data, %struct.are_ring_data* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 3
  store i32 %53, i32* %60, align 4
  %61 = load i32, i32* @ADCTL_CH, align 4
  %62 = load %struct.are_ring_data*, %struct.are_ring_data** %4, align 8
  %63 = getelementptr inbounds %struct.are_ring_data, %struct.are_ring_data* %62, i32 0, i32 0
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = load i32, i32* %7, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 2
  store i32 %61, i32* %68, align 8
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* @ARE_RX_RING_CNT, align 4
  %71 = sub nsw i32 %70, 1
  %72 = icmp eq i32 %69, %71
  br i1 %72, label %73, label %84

73:                                               ; preds = %52
  %74 = load i32, i32* @ADCTL_ER, align 4
  %75 = load %struct.are_ring_data*, %struct.are_ring_data** %4, align 8
  %76 = getelementptr inbounds %struct.are_ring_data, %struct.are_ring_data* %75, i32 0, i32 0
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = load i32, i32* %7, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = or i32 %82, %74
  store i32 %83, i32* %81, align 8
  br label %84

84:                                               ; preds = %73, %52
  %85 = load %struct.are_ring_data*, %struct.are_ring_data** %4, align 8
  %86 = getelementptr inbounds %struct.are_ring_data, %struct.are_ring_data* %85, i32 0, i32 0
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = load i32, i32* %7, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  store i64 0, i64* %91, align 8
  %92 = load i32, i32* %6, align 4
  %93 = load %struct.are_ring_data*, %struct.are_ring_data** %4, align 8
  %94 = getelementptr inbounds %struct.are_ring_data, %struct.are_ring_data* %93, i32 0, i32 0
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = load i32, i32* %7, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  store i32 %92, i32* %99, align 8
  %100 = load %struct.are_softc*, %struct.are_softc** %3, align 8
  %101 = load i32, i32* %7, align 4
  %102 = call i64 @are_newbuf(%struct.are_softc* %100, i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %84
  %105 = load i32, i32* @ENOBUFS, align 4
  store i32 %105, i32* %2, align 4
  br label %123

106:                                              ; preds = %84
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %7, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %7, align 4
  br label %18

110:                                              ; preds = %18
  %111 = load %struct.are_softc*, %struct.are_softc** %3, align 8
  %112 = getelementptr inbounds %struct.are_softc, %struct.are_softc* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.are_softc*, %struct.are_softc** %3, align 8
  %116 = getelementptr inbounds %struct.are_softc, %struct.are_softc* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %120 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %121 = or i32 %119, %120
  %122 = call i32 @bus_dmamap_sync(i32 %114, i32 %118, i32 %121)
  store i32 0, i32* %2, align 4
  br label %123

123:                                              ; preds = %110, %104
  %124 = load i32, i32* %2, align 4
  ret i32 %124
}

declare dso_local i32 @bzero(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @ARE_RX_RING_ADDR(%struct.are_softc*, i32) #1

declare dso_local i64 @are_newbuf(%struct.are_softc*, i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
