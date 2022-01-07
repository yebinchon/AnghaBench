; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sis/extr_if_sis.c_sis_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sis/extr_if_sis.c_sis_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sis_softc = type { i32, %struct.sis_txdesc*, i32, %struct.sis_rxdesc*, i32, i32, i64, %struct.ifnet* }
%struct.sis_txdesc = type { i32*, i32 }
%struct.sis_rxdesc = type { i32*, i32 }
%struct.ifnet = type { i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@SIS_IER = common dso_local global i32 0, align 4
@SIS_IMR = common dso_local global i32 0, align 4
@SIS_ISR = common dso_local global i32 0, align 4
@SIS_CSR = common dso_local global i32 0, align 4
@SIS_CSR_TX_DISABLE = common dso_local global i32 0, align 4
@SIS_CSR_RX_DISABLE = common dso_local global i32 0, align 4
@SIS_TX_LISTPTR = common dso_local global i32 0, align 4
@SIS_RX_LISTPTR = common dso_local global i32 0, align 4
@SIS_FLAG_LINK = common dso_local global i32 0, align 4
@SIS_RX_LIST_CNT = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@SIS_TX_LIST_CNT = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sis_softc*)* @sis_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sis_stop(%struct.sis_softc* %0) #0 {
  %2 = alloca %struct.sis_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.sis_rxdesc*, align 8
  %5 = alloca %struct.sis_txdesc*, align 8
  %6 = alloca i32, align 4
  store %struct.sis_softc* %0, %struct.sis_softc** %2, align 8
  %7 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %8 = call i32 @SIS_LOCK_ASSERT(%struct.sis_softc* %7)
  %9 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %10 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %9, i32 0, i32 7
  %11 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  store %struct.ifnet* %11, %struct.ifnet** %3, align 8
  %12 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %13 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %12, i32 0, i32 6
  store i64 0, i64* %13, align 8
  %14 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %15 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %14, i32 0, i32 5
  %16 = call i32 @callout_stop(i32* %15)
  %17 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %18 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %19 = or i32 %17, %18
  %20 = xor i32 %19, -1
  %21 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %22 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, %20
  store i32 %24, i32* %22, align 4
  %25 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %26 = load i32, i32* @SIS_IER, align 4
  %27 = call i32 @CSR_WRITE_4(%struct.sis_softc* %25, i32 %26, i32 0)
  %28 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %29 = load i32, i32* @SIS_IMR, align 4
  %30 = call i32 @CSR_WRITE_4(%struct.sis_softc* %28, i32 %29, i32 0)
  %31 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %32 = load i32, i32* @SIS_ISR, align 4
  %33 = call i32 @CSR_READ_4(%struct.sis_softc* %31, i32 %32)
  %34 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %35 = load i32, i32* @SIS_CSR, align 4
  %36 = load i32, i32* @SIS_CSR_TX_DISABLE, align 4
  %37 = load i32, i32* @SIS_CSR_RX_DISABLE, align 4
  %38 = or i32 %36, %37
  %39 = call i32 @SIS_SETBIT(%struct.sis_softc* %34, i32 %35, i32 %38)
  %40 = call i32 @DELAY(i32 1000)
  %41 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %42 = load i32, i32* @SIS_TX_LISTPTR, align 4
  %43 = call i32 @CSR_WRITE_4(%struct.sis_softc* %41, i32 %42, i32 0)
  %44 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %45 = load i32, i32* @SIS_RX_LISTPTR, align 4
  %46 = call i32 @CSR_WRITE_4(%struct.sis_softc* %44, i32 %45, i32 0)
  %47 = load i32, i32* @SIS_FLAG_LINK, align 4
  %48 = xor i32 %47, -1
  %49 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %50 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = and i32 %51, %48
  store i32 %52, i32* %50, align 8
  store i32 0, i32* %6, align 4
  br label %53

53:                                               ; preds = %91, %1
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @SIS_RX_LIST_CNT, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %94

57:                                               ; preds = %53
  %58 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %59 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %58, i32 0, i32 3
  %60 = load %struct.sis_rxdesc*, %struct.sis_rxdesc** %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.sis_rxdesc, %struct.sis_rxdesc* %60, i64 %62
  store %struct.sis_rxdesc* %63, %struct.sis_rxdesc** %4, align 8
  %64 = load %struct.sis_rxdesc*, %struct.sis_rxdesc** %4, align 8
  %65 = getelementptr inbounds %struct.sis_rxdesc, %struct.sis_rxdesc* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %90

68:                                               ; preds = %57
  %69 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %70 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.sis_rxdesc*, %struct.sis_rxdesc** %4, align 8
  %73 = getelementptr inbounds %struct.sis_rxdesc, %struct.sis_rxdesc* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %76 = call i32 @bus_dmamap_sync(i32 %71, i32 %74, i32 %75)
  %77 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %78 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.sis_rxdesc*, %struct.sis_rxdesc** %4, align 8
  %81 = getelementptr inbounds %struct.sis_rxdesc, %struct.sis_rxdesc* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @bus_dmamap_unload(i32 %79, i32 %82)
  %84 = load %struct.sis_rxdesc*, %struct.sis_rxdesc** %4, align 8
  %85 = getelementptr inbounds %struct.sis_rxdesc, %struct.sis_rxdesc* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = call i32 @m_freem(i32* %86)
  %88 = load %struct.sis_rxdesc*, %struct.sis_rxdesc** %4, align 8
  %89 = getelementptr inbounds %struct.sis_rxdesc, %struct.sis_rxdesc* %88, i32 0, i32 0
  store i32* null, i32** %89, align 8
  br label %90

90:                                               ; preds = %68, %57
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %6, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %6, align 4
  br label %53

94:                                               ; preds = %53
  store i32 0, i32* %6, align 4
  br label %95

95:                                               ; preds = %133, %94
  %96 = load i32, i32* %6, align 4
  %97 = load i32, i32* @SIS_TX_LIST_CNT, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %136

99:                                               ; preds = %95
  %100 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %101 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %100, i32 0, i32 1
  %102 = load %struct.sis_txdesc*, %struct.sis_txdesc** %101, align 8
  %103 = load i32, i32* %6, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.sis_txdesc, %struct.sis_txdesc* %102, i64 %104
  store %struct.sis_txdesc* %105, %struct.sis_txdesc** %5, align 8
  %106 = load %struct.sis_txdesc*, %struct.sis_txdesc** %5, align 8
  %107 = getelementptr inbounds %struct.sis_txdesc, %struct.sis_txdesc* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = icmp ne i32* %108, null
  br i1 %109, label %110, label %132

110:                                              ; preds = %99
  %111 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %112 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.sis_txdesc*, %struct.sis_txdesc** %5, align 8
  %115 = getelementptr inbounds %struct.sis_txdesc, %struct.sis_txdesc* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %118 = call i32 @bus_dmamap_sync(i32 %113, i32 %116, i32 %117)
  %119 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %120 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.sis_txdesc*, %struct.sis_txdesc** %5, align 8
  %123 = getelementptr inbounds %struct.sis_txdesc, %struct.sis_txdesc* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @bus_dmamap_unload(i32 %121, i32 %124)
  %126 = load %struct.sis_txdesc*, %struct.sis_txdesc** %5, align 8
  %127 = getelementptr inbounds %struct.sis_txdesc, %struct.sis_txdesc* %126, i32 0, i32 0
  %128 = load i32*, i32** %127, align 8
  %129 = call i32 @m_freem(i32* %128)
  %130 = load %struct.sis_txdesc*, %struct.sis_txdesc** %5, align 8
  %131 = getelementptr inbounds %struct.sis_txdesc, %struct.sis_txdesc* %130, i32 0, i32 0
  store i32* null, i32** %131, align 8
  br label %132

132:                                              ; preds = %110, %99
  br label %133

133:                                              ; preds = %132
  %134 = load i32, i32* %6, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %6, align 4
  br label %95

136:                                              ; preds = %95
  ret void
}

declare dso_local i32 @SIS_LOCK_ASSERT(%struct.sis_softc*) #1

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @CSR_WRITE_4(%struct.sis_softc*, i32, i32) #1

declare dso_local i32 @CSR_READ_4(%struct.sis_softc*, i32) #1

declare dso_local i32 @SIS_SETBIT(%struct.sis_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @m_freem(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
