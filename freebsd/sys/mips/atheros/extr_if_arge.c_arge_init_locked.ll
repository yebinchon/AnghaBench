; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/atheros/extr_if_arge.c_arge_init_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/atheros/extr_if_arge.c_arge_init_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arge_softc = type { i32, i32, i64, i32, %struct.ifnet* }
%struct.ifnet = type { i32, i32 }
%struct.mii_data = type { i32 }

@IFF_UP = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"initialization failed: no memory for rx buffers\0A\00", align 1
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@arge_tick = common dso_local global i32 0, align 4
@AR71XX_DMA_TX_DESC = common dso_local global i32 0, align 4
@AR71XX_DMA_RX_DESC = common dso_local global i32 0, align 4
@AR71XX_DMA_RX_CONTROL = common dso_local global i32 0, align 4
@DMA_RX_CONTROL_EN = common dso_local global i32 0, align 4
@AR71XX_DMA_INTR = common dso_local global i32 0, align 4
@DMA_INTR_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.arge_softc*)* @arge_init_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arge_init_locked(%struct.arge_softc* %0) #0 {
  %2 = alloca %struct.arge_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.mii_data*, align 8
  store %struct.arge_softc* %0, %struct.arge_softc** %2, align 8
  %5 = load %struct.arge_softc*, %struct.arge_softc** %2, align 8
  %6 = getelementptr inbounds %struct.arge_softc, %struct.arge_softc* %5, i32 0, i32 4
  %7 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  store %struct.ifnet* %7, %struct.ifnet** %3, align 8
  %8 = load %struct.arge_softc*, %struct.arge_softc** %2, align 8
  %9 = call i32 @ARGE_LOCK_ASSERT(%struct.arge_softc* %8)
  %10 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %11 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @IFF_UP, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %1
  %17 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %18 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  br label %98

24:                                               ; preds = %16, %1
  %25 = load %struct.arge_softc*, %struct.arge_softc** %2, align 8
  %26 = call i64 @arge_rx_ring_init(%struct.arge_softc* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %24
  %29 = load %struct.arge_softc*, %struct.arge_softc** %2, align 8
  %30 = getelementptr inbounds %struct.arge_softc, %struct.arge_softc* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @device_printf(i32 %31, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %33 = load %struct.arge_softc*, %struct.arge_softc** %2, align 8
  %34 = call i32 @arge_stop(%struct.arge_softc* %33)
  br label %98

35:                                               ; preds = %24
  %36 = load %struct.arge_softc*, %struct.arge_softc** %2, align 8
  %37 = call i32 @arge_tx_ring_init(%struct.arge_softc* %36)
  %38 = load %struct.arge_softc*, %struct.arge_softc** %2, align 8
  %39 = call i32 @arge_reset_dma(%struct.arge_softc* %38)
  %40 = load %struct.arge_softc*, %struct.arge_softc** %2, align 8
  %41 = getelementptr inbounds %struct.arge_softc, %struct.arge_softc* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %35
  %45 = load %struct.arge_softc*, %struct.arge_softc** %2, align 8
  %46 = getelementptr inbounds %struct.arge_softc, %struct.arge_softc* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = call %struct.mii_data* @device_get_softc(i64 %47)
  store %struct.mii_data* %48, %struct.mii_data** %4, align 8
  %49 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %50 = call i32 @mii_mediachg(%struct.mii_data* %49)
  br label %54

51:                                               ; preds = %35
  %52 = load %struct.arge_softc*, %struct.arge_softc** %2, align 8
  %53 = getelementptr inbounds %struct.arge_softc, %struct.arge_softc* %52, i32 0, i32 0
  store i32 1, i32* %53, align 8
  br label %54

54:                                               ; preds = %51, %44
  %55 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %56 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %57 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 4
  %60 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %61 = xor i32 %60, -1
  %62 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %63 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = and i32 %64, %61
  store i32 %65, i32* %63, align 4
  %66 = load %struct.arge_softc*, %struct.arge_softc** %2, align 8
  %67 = getelementptr inbounds %struct.arge_softc, %struct.arge_softc* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %54
  %71 = load %struct.arge_softc*, %struct.arge_softc** %2, align 8
  %72 = getelementptr inbounds %struct.arge_softc, %struct.arge_softc* %71, i32 0, i32 1
  %73 = load i32, i32* @hz, align 4
  %74 = load i32, i32* @arge_tick, align 4
  %75 = load %struct.arge_softc*, %struct.arge_softc** %2, align 8
  %76 = call i32 @callout_reset(i32* %72, i32 %73, i32 %74, %struct.arge_softc* %75)
  %77 = load %struct.arge_softc*, %struct.arge_softc** %2, align 8
  %78 = call i32 @arge_update_link_locked(%struct.arge_softc* %77)
  br label %79

79:                                               ; preds = %70, %54
  %80 = load %struct.arge_softc*, %struct.arge_softc** %2, align 8
  %81 = load i32, i32* @AR71XX_DMA_TX_DESC, align 4
  %82 = load %struct.arge_softc*, %struct.arge_softc** %2, align 8
  %83 = call i32 @ARGE_TX_RING_ADDR(%struct.arge_softc* %82, i32 0)
  %84 = call i32 @ARGE_WRITE(%struct.arge_softc* %80, i32 %81, i32 %83)
  %85 = load %struct.arge_softc*, %struct.arge_softc** %2, align 8
  %86 = load i32, i32* @AR71XX_DMA_RX_DESC, align 4
  %87 = load %struct.arge_softc*, %struct.arge_softc** %2, align 8
  %88 = call i32 @ARGE_RX_RING_ADDR(%struct.arge_softc* %87, i32 0)
  %89 = call i32 @ARGE_WRITE(%struct.arge_softc* %85, i32 %86, i32 %88)
  %90 = load %struct.arge_softc*, %struct.arge_softc** %2, align 8
  %91 = load i32, i32* @AR71XX_DMA_RX_CONTROL, align 4
  %92 = load i32, i32* @DMA_RX_CONTROL_EN, align 4
  %93 = call i32 @ARGE_WRITE(%struct.arge_softc* %90, i32 %91, i32 %92)
  %94 = load %struct.arge_softc*, %struct.arge_softc** %2, align 8
  %95 = load i32, i32* @AR71XX_DMA_INTR, align 4
  %96 = load i32, i32* @DMA_INTR_ALL, align 4
  %97 = call i32 @ARGE_WRITE(%struct.arge_softc* %94, i32 %95, i32 %96)
  br label %98

98:                                               ; preds = %79, %28, %23
  ret void
}

declare dso_local i32 @ARGE_LOCK_ASSERT(%struct.arge_softc*) #1

declare dso_local i64 @arge_rx_ring_init(%struct.arge_softc*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @arge_stop(%struct.arge_softc*) #1

declare dso_local i32 @arge_tx_ring_init(%struct.arge_softc*) #1

declare dso_local i32 @arge_reset_dma(%struct.arge_softc*) #1

declare dso_local %struct.mii_data* @device_get_softc(i64) #1

declare dso_local i32 @mii_mediachg(%struct.mii_data*) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.arge_softc*) #1

declare dso_local i32 @arge_update_link_locked(%struct.arge_softc*) #1

declare dso_local i32 @ARGE_WRITE(%struct.arge_softc*, i32, i32) #1

declare dso_local i32 @ARGE_TX_RING_ADDR(%struct.arge_softc*, i32) #1

declare dso_local i32 @ARGE_RX_RING_ADDR(%struct.arge_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
