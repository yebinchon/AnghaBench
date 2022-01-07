; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwi/extr_if_iwi.c_iwi_tx_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwi/extr_if_iwi.c_iwi_tx_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwi_softc = type { i64, i64 }
%struct.iwi_tx_ring = type { i64, i32, i32, %struct.iwi_tx_data*, i32 }
%struct.iwi_tx_data = type { i32*, i32*, i32 }

@.str = private unnamed_addr constant [16 x i8] c"tx done idx=%u\0A\00", align 1
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@IWI_TX_RING_COUNT = common dso_local global i32 0, align 4
@IWI_LED_TX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwi_softc*, %struct.iwi_tx_ring*)* @iwi_tx_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwi_tx_intr(%struct.iwi_softc* %0, %struct.iwi_tx_ring* %1) #0 {
  %3 = alloca %struct.iwi_softc*, align 8
  %4 = alloca %struct.iwi_tx_ring*, align 8
  %5 = alloca %struct.iwi_tx_data*, align 8
  %6 = alloca i64, align 8
  store %struct.iwi_softc* %0, %struct.iwi_softc** %3, align 8
  store %struct.iwi_tx_ring* %1, %struct.iwi_tx_ring** %4, align 8
  %7 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %8 = load %struct.iwi_tx_ring*, %struct.iwi_tx_ring** %4, align 8
  %9 = getelementptr inbounds %struct.iwi_tx_ring, %struct.iwi_tx_ring* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 8
  %11 = call i64 @CSR_READ_4(%struct.iwi_softc* %7, i32 %10)
  store i64 %11, i64* %6, align 8
  br label %12

12:                                               ; preds = %18, %2
  %13 = load %struct.iwi_tx_ring*, %struct.iwi_tx_ring** %4, align 8
  %14 = getelementptr inbounds %struct.iwi_tx_ring, %struct.iwi_tx_ring* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* %6, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %70

18:                                               ; preds = %12
  %19 = load %struct.iwi_tx_ring*, %struct.iwi_tx_ring** %4, align 8
  %20 = getelementptr inbounds %struct.iwi_tx_ring, %struct.iwi_tx_ring* %19, i32 0, i32 3
  %21 = load %struct.iwi_tx_data*, %struct.iwi_tx_data** %20, align 8
  %22 = load %struct.iwi_tx_ring*, %struct.iwi_tx_ring** %4, align 8
  %23 = getelementptr inbounds %struct.iwi_tx_ring, %struct.iwi_tx_ring* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.iwi_tx_data, %struct.iwi_tx_data* %21, i64 %24
  store %struct.iwi_tx_data* %25, %struct.iwi_tx_data** %5, align 8
  %26 = load %struct.iwi_tx_ring*, %struct.iwi_tx_ring** %4, align 8
  %27 = getelementptr inbounds %struct.iwi_tx_ring, %struct.iwi_tx_ring* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to i8*
  %30 = call i32 @DPRINTFN(i32 15, i8* %29)
  %31 = load %struct.iwi_tx_ring*, %struct.iwi_tx_ring** %4, align 8
  %32 = getelementptr inbounds %struct.iwi_tx_ring, %struct.iwi_tx_ring* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.iwi_tx_data*, %struct.iwi_tx_data** %5, align 8
  %35 = getelementptr inbounds %struct.iwi_tx_data, %struct.iwi_tx_data* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %38 = call i32 @bus_dmamap_sync(i32 %33, i32 %36, i32 %37)
  %39 = load %struct.iwi_tx_ring*, %struct.iwi_tx_ring** %4, align 8
  %40 = getelementptr inbounds %struct.iwi_tx_ring, %struct.iwi_tx_ring* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.iwi_tx_data*, %struct.iwi_tx_data** %5, align 8
  %43 = getelementptr inbounds %struct.iwi_tx_data, %struct.iwi_tx_data* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @bus_dmamap_unload(i32 %41, i32 %44)
  %46 = load %struct.iwi_tx_data*, %struct.iwi_tx_data** %5, align 8
  %47 = getelementptr inbounds %struct.iwi_tx_data, %struct.iwi_tx_data* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load %struct.iwi_tx_data*, %struct.iwi_tx_data** %5, align 8
  %50 = getelementptr inbounds %struct.iwi_tx_data, %struct.iwi_tx_data* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @ieee80211_tx_complete(i32* %48, i32* %51, i32 0)
  %53 = load %struct.iwi_tx_data*, %struct.iwi_tx_data** %5, align 8
  %54 = getelementptr inbounds %struct.iwi_tx_data, %struct.iwi_tx_data* %53, i32 0, i32 1
  store i32* null, i32** %54, align 8
  %55 = load %struct.iwi_tx_data*, %struct.iwi_tx_data** %5, align 8
  %56 = getelementptr inbounds %struct.iwi_tx_data, %struct.iwi_tx_data* %55, i32 0, i32 0
  store i32* null, i32** %56, align 8
  %57 = load %struct.iwi_tx_ring*, %struct.iwi_tx_ring** %4, align 8
  %58 = getelementptr inbounds %struct.iwi_tx_ring, %struct.iwi_tx_ring* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = add nsw i32 %59, -1
  store i32 %60, i32* %58, align 8
  %61 = load %struct.iwi_tx_ring*, %struct.iwi_tx_ring** %4, align 8
  %62 = getelementptr inbounds %struct.iwi_tx_ring, %struct.iwi_tx_ring* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %63, 1
  %65 = load i32, i32* @IWI_TX_RING_COUNT, align 4
  %66 = sext i32 %65 to i64
  %67 = srem i64 %64, %66
  %68 = load %struct.iwi_tx_ring*, %struct.iwi_tx_ring** %4, align 8
  %69 = getelementptr inbounds %struct.iwi_tx_ring, %struct.iwi_tx_ring* %68, i32 0, i32 0
  store i64 %67, i64* %69, align 8
  br label %12

70:                                               ; preds = %12
  %71 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %72 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %71, i32 0, i32 1
  store i64 0, i64* %72, align 8
  %73 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %74 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %70
  %78 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %79 = load i32, i32* @IWI_LED_TX, align 4
  %80 = call i32 @iwi_led_event(%struct.iwi_softc* %78, i32 %79)
  br label %81

81:                                               ; preds = %77, %70
  %82 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %83 = call i32 @iwi_start(%struct.iwi_softc* %82)
  ret void
}

declare dso_local i64 @CSR_READ_4(%struct.iwi_softc*, i32) #1

declare dso_local i32 @DPRINTFN(i32, i8*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @ieee80211_tx_complete(i32*, i32*, i32) #1

declare dso_local i32 @iwi_led_event(%struct.iwi_softc*, i32) #1

declare dso_local i32 @iwi_start(%struct.iwi_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
