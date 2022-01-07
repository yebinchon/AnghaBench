; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vte/extr_if_vte.c_vte_mac_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vte/extr_if_vte.c_vte_mac_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vte_softc = type { i32 }
%struct.mii_data = type { i32 }

@VTE_MCR0 = common dso_local global i32 0, align 4
@MCR0_FC_ENB = common dso_local global i32 0, align 4
@MCR0_FULL_DUPLEX = common dso_local global i32 0, align 4
@IFM_FDX = common dso_local global i32 0, align 4
@IFM_ETH_RXPAUSE = common dso_local global i32 0, align 4
@IFM_ETH_TXPAUSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vte_softc*)* @vte_mac_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vte_mac_config(%struct.vte_softc* %0) #0 {
  %2 = alloca %struct.vte_softc*, align 8
  %3 = alloca %struct.mii_data*, align 8
  %4 = alloca i32, align 4
  store %struct.vte_softc* %0, %struct.vte_softc** %2, align 8
  %5 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %6 = call i32 @VTE_LOCK_ASSERT(%struct.vte_softc* %5)
  %7 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %8 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.mii_data* @device_get_softc(i32 %9)
  store %struct.mii_data* %10, %struct.mii_data** %3, align 8
  %11 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %12 = load i32, i32* @VTE_MCR0, align 4
  %13 = call i32 @CSR_READ_2(%struct.vte_softc* %11, i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* @MCR0_FC_ENB, align 4
  %15 = load i32, i32* @MCR0_FULL_DUPLEX, align 4
  %16 = or i32 %14, %15
  %17 = xor i32 %16, -1
  %18 = load i32, i32* %4, align 4
  %19 = and i32 %18, %17
  store i32 %19, i32* %4, align 4
  %20 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %21 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @IFM_OPTIONS(i32 %22)
  %24 = load i32, i32* @IFM_FDX, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %1
  %28 = load i32, i32* @MCR0_FULL_DUPLEX, align 4
  %29 = load i32, i32* %4, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %27, %1
  %32 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %33 = load i32, i32* @VTE_MCR0, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @CSR_WRITE_2(%struct.vte_softc* %32, i32 %33, i32 %34)
  ret void
}

declare dso_local i32 @VTE_LOCK_ASSERT(%struct.vte_softc*) #1

declare dso_local %struct.mii_data* @device_get_softc(i32) #1

declare dso_local i32 @CSR_READ_2(%struct.vte_softc*, i32) #1

declare dso_local i32 @IFM_OPTIONS(i32) #1

declare dso_local i32 @CSR_WRITE_2(%struct.vte_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
