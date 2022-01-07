; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mgb/extr_if_mgb.c_mgb_mac_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mgb/extr_if_mgb.c_mgb_mac_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mgb_softc = type { i32 }

@MGB_MAC_CR = common dso_local global i32 0, align 4
@MGB_MAC_ADD_ENBL = common dso_local global i32 0, align 4
@MGB_MAC_ASD_ENBL = common dso_local global i32 0, align 4
@MGB_MAC_TX = common dso_local global i32 0, align 4
@MGB_MAC_ENBL = common dso_local global i32 0, align 4
@MGB_MAC_RX = common dso_local global i32 0, align 4
@MGB_STS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mgb_softc*)* @mgb_mac_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mgb_mac_init(%struct.mgb_softc* %0) #0 {
  %2 = alloca %struct.mgb_softc*, align 8
  store %struct.mgb_softc* %0, %struct.mgb_softc** %2, align 8
  %3 = load %struct.mgb_softc*, %struct.mgb_softc** %2, align 8
  %4 = load i32, i32* @MGB_MAC_CR, align 4
  %5 = load i32, i32* @MGB_MAC_ADD_ENBL, align 4
  %6 = load i32, i32* @MGB_MAC_ASD_ENBL, align 4
  %7 = or i32 %5, %6
  %8 = call i32 @CSR_UPDATE_REG(%struct.mgb_softc* %3, i32 %4, i32 %7)
  %9 = load %struct.mgb_softc*, %struct.mgb_softc** %2, align 8
  %10 = load i32, i32* @MGB_MAC_TX, align 4
  %11 = load i32, i32* @MGB_MAC_ENBL, align 4
  %12 = call i32 @CSR_UPDATE_REG(%struct.mgb_softc* %9, i32 %10, i32 %11)
  %13 = load %struct.mgb_softc*, %struct.mgb_softc** %2, align 8
  %14 = load i32, i32* @MGB_MAC_RX, align 4
  %15 = load i32, i32* @MGB_MAC_ENBL, align 4
  %16 = call i32 @CSR_UPDATE_REG(%struct.mgb_softc* %13, i32 %14, i32 %15)
  %17 = load i32, i32* @MGB_STS_OK, align 4
  ret i32 %17
}

declare dso_local i32 @CSR_UPDATE_REG(%struct.mgb_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
