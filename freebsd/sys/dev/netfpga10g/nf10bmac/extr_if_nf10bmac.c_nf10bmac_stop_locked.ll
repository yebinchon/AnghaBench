; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/netfpga10g/nf10bmac/extr_if_nf10bmac.c_nf10bmac_stop_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/netfpga10g/nf10bmac/extr_if_nf10bmac.c_nf10bmac_stop_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf10bmac_softc = type { i32, %struct.ifnet*, i32, i64 }
%struct.ifnet = type { i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@NF10BMAC_FLAGS_LINK = common dso_local global i32 0, align 4
@LINK_STATE_DOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nf10bmac_softc*)* @nf10bmac_stop_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nf10bmac_stop_locked(%struct.nf10bmac_softc* %0) #0 {
  %2 = alloca %struct.nf10bmac_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  store %struct.nf10bmac_softc* %0, %struct.nf10bmac_softc** %2, align 8
  %4 = load %struct.nf10bmac_softc*, %struct.nf10bmac_softc** %2, align 8
  %5 = call i32 @NF10BMAC_LOCK_ASSERT(%struct.nf10bmac_softc* %4)
  %6 = load %struct.nf10bmac_softc*, %struct.nf10bmac_softc** %2, align 8
  %7 = getelementptr inbounds %struct.nf10bmac_softc, %struct.nf10bmac_softc* %6, i32 0, i32 1
  %8 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  store %struct.ifnet* %8, %struct.ifnet** %3, align 8
  %9 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %10 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %11 = or i32 %9, %10
  %12 = xor i32 %11, -1
  %13 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %14 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = and i32 %15, %12
  store i32 %16, i32* %14, align 4
  %17 = load %struct.nf10bmac_softc*, %struct.nf10bmac_softc** %2, align 8
  %18 = call i32 @NF10BMAC_RX_INTR_CLEAR_DIS(%struct.nf10bmac_softc* %17)
  %19 = load i32, i32* @NF10BMAC_FLAGS_LINK, align 4
  %20 = xor i32 %19, -1
  %21 = load %struct.nf10bmac_softc*, %struct.nf10bmac_softc** %2, align 8
  %22 = getelementptr inbounds %struct.nf10bmac_softc, %struct.nf10bmac_softc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = and i32 %23, %20
  store i32 %24, i32* %22, align 8
  %25 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %26 = load i32, i32* @LINK_STATE_DOWN, align 4
  %27 = call i32 @if_link_state_change(%struct.ifnet* %25, i32 %26)
  ret i32 0
}

declare dso_local i32 @NF10BMAC_LOCK_ASSERT(%struct.nf10bmac_softc*) #1

declare dso_local i32 @NF10BMAC_RX_INTR_CLEAR_DIS(%struct.nf10bmac_softc*) #1

declare dso_local i32 @if_link_state_change(%struct.ifnet*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
