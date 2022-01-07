; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ale/extr_if_ale.c_ale_mac_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ale/extr_if_ale.c_ale_mac_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ale_softc = type { i32 }
%struct.mii_data = type { i32 }

@ALE_MAC_CFG = common dso_local global i32 0, align 4
@MAC_CFG_FULL_DUPLEX = common dso_local global i32 0, align 4
@MAC_CFG_TX_FC = common dso_local global i32 0, align 4
@MAC_CFG_RX_FC = common dso_local global i32 0, align 4
@MAC_CFG_SPEED_MASK = common dso_local global i32 0, align 4
@MAC_CFG_SPEED_10_100 = common dso_local global i32 0, align 4
@MAC_CFG_SPEED_1000 = common dso_local global i32 0, align 4
@IFM_FDX = common dso_local global i32 0, align 4
@IFM_ETH_TXPAUSE = common dso_local global i32 0, align 4
@IFM_ETH_RXPAUSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ale_softc*)* @ale_mac_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ale_mac_config(%struct.ale_softc* %0) #0 {
  %2 = alloca %struct.ale_softc*, align 8
  %3 = alloca %struct.mii_data*, align 8
  %4 = alloca i32, align 4
  store %struct.ale_softc* %0, %struct.ale_softc** %2, align 8
  %5 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %6 = call i32 @ALE_LOCK_ASSERT(%struct.ale_softc* %5)
  %7 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %8 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.mii_data* @device_get_softc(i32 %9)
  store %struct.mii_data* %10, %struct.mii_data** %3, align 8
  %11 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %12 = load i32, i32* @ALE_MAC_CFG, align 4
  %13 = call i32 @CSR_READ_4(%struct.ale_softc* %11, i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* @MAC_CFG_FULL_DUPLEX, align 4
  %15 = load i32, i32* @MAC_CFG_TX_FC, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @MAC_CFG_RX_FC, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @MAC_CFG_SPEED_MASK, align 4
  %20 = or i32 %18, %19
  %21 = xor i32 %20, -1
  %22 = load i32, i32* %4, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %4, align 4
  %24 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %25 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @IFM_SUBTYPE(i32 %26)
  switch i32 %27, label %36 [
    i32 128, label %28
    i32 129, label %28
    i32 130, label %32
  ]

28:                                               ; preds = %1, %1
  %29 = load i32, i32* @MAC_CFG_SPEED_10_100, align 4
  %30 = load i32, i32* %4, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %4, align 4
  br label %36

32:                                               ; preds = %1
  %33 = load i32, i32* @MAC_CFG_SPEED_1000, align 4
  %34 = load i32, i32* %4, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %1, %32, %28
  %37 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %38 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @IFM_OPTIONS(i32 %39)
  %41 = load i32, i32* @IFM_FDX, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %72

44:                                               ; preds = %36
  %45 = load i32, i32* @MAC_CFG_FULL_DUPLEX, align 4
  %46 = load i32, i32* %4, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %4, align 4
  %48 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %49 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @IFM_OPTIONS(i32 %50)
  %52 = load i32, i32* @IFM_ETH_TXPAUSE, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %44
  %56 = load i32, i32* @MAC_CFG_TX_FC, align 4
  %57 = load i32, i32* %4, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %55, %44
  %60 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %61 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @IFM_OPTIONS(i32 %62)
  %64 = load i32, i32* @IFM_ETH_RXPAUSE, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %59
  %68 = load i32, i32* @MAC_CFG_RX_FC, align 4
  %69 = load i32, i32* %4, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %67, %59
  br label %72

72:                                               ; preds = %71, %36
  %73 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %74 = load i32, i32* @ALE_MAC_CFG, align 4
  %75 = load i32, i32* %4, align 4
  %76 = call i32 @CSR_WRITE_4(%struct.ale_softc* %73, i32 %74, i32 %75)
  ret void
}

declare dso_local i32 @ALE_LOCK_ASSERT(%struct.ale_softc*) #1

declare dso_local %struct.mii_data* @device_get_softc(i32) #1

declare dso_local i32 @CSR_READ_4(%struct.ale_softc*, i32) #1

declare dso_local i32 @IFM_SUBTYPE(i32) #1

declare dso_local i32 @IFM_OPTIONS(i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.ale_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
