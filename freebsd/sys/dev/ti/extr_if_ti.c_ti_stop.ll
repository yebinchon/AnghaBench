; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ti/extr_if_ti.c_ti_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ti/extr_if_ti.c_ti_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_softc = type { i32, i32, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__, %struct.ifnet* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }
%struct.ifnet = type { i32 }
%struct.ti_cmd_desc = type { i32 }

@TI_MB_HOSTINTR = common dso_local global i32 0, align 4
@TI_CMD_HOST_STATE = common dso_local global i32 0, align 4
@TI_CMD_CODE_STACK_DOWN = common dso_local global i32 0, align 4
@TI_TXCONS_UNSET = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ti_softc*)* @ti_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ti_stop(%struct.ti_softc* %0) #0 {
  %2 = alloca %struct.ti_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.ti_cmd_desc, align 4
  store %struct.ti_softc* %0, %struct.ti_softc** %2, align 8
  %5 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %6 = call i32 @TI_LOCK_ASSERT(%struct.ti_softc* %5)
  %7 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %8 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %7, i32 0, i32 5
  %9 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  store %struct.ifnet* %9, %struct.ifnet** %3, align 8
  %10 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %11 = load i32, i32* @TI_MB_HOSTINTR, align 4
  %12 = call i32 @CSR_WRITE_4(%struct.ti_softc* %10, i32 %11, i32 1)
  %13 = load i32, i32* @TI_CMD_HOST_STATE, align 4
  %14 = load i32, i32* @TI_CMD_CODE_STACK_DOWN, align 4
  %15 = call i32 @TI_DO_CMD(i32 %13, i32 %14, i32 0)
  %16 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %17 = call i64 @ti_chipinit(%struct.ti_softc* %16)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %1
  %20 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %21 = call i32 @ti_mem_zero(%struct.ti_softc* %20, i32 8192, i32 1040384)
  %22 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %23 = call i64 @ti_chipinit(%struct.ti_softc* %22)
  br label %24

24:                                               ; preds = %19, %1
  %25 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %26 = call i32 @ti_free_rx_ring_std(%struct.ti_softc* %25)
  %27 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %28 = call i32 @ti_free_rx_ring_jumbo(%struct.ti_softc* %27)
  %29 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %30 = call i32 @ti_free_rx_ring_mini(%struct.ti_softc* %29)
  %31 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %32 = call i32 @ti_free_tx_ring(%struct.ti_softc* %31)
  %33 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %34 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %33, i32 0, i32 4
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store i64 0, i64* %35, align 8
  %36 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %37 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  store i64 0, i64* %38, align 8
  %39 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %40 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  store i64 0, i64* %41, align 8
  %42 = load i32, i32* @TI_TXCONS_UNSET, align 4
  %43 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %44 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %46 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %47 = or i32 %45, %46
  %48 = xor i32 %47, -1
  %49 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %50 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, %48
  store i32 %52, i32* %50, align 4
  %53 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %54 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %53, i32 0, i32 0
  %55 = call i32 @callout_stop(i32* %54)
  ret void
}

declare dso_local i32 @TI_LOCK_ASSERT(%struct.ti_softc*) #1

declare dso_local i32 @CSR_WRITE_4(%struct.ti_softc*, i32, i32) #1

declare dso_local i32 @TI_DO_CMD(i32, i32, i32) #1

declare dso_local i64 @ti_chipinit(%struct.ti_softc*) #1

declare dso_local i32 @ti_mem_zero(%struct.ti_softc*, i32, i32) #1

declare dso_local i32 @ti_free_rx_ring_std(%struct.ti_softc*) #1

declare dso_local i32 @ti_free_rx_ring_jumbo(%struct.ti_softc*) #1

declare dso_local i32 @ti_free_rx_ring_mini(%struct.ti_softc*) #1

declare dso_local i32 @ti_free_tx_ring(%struct.ti_softc*) #1

declare dso_local i32 @callout_stop(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
