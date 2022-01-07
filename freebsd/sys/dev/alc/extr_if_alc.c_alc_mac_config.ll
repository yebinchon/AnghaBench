; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/alc/extr_if_alc.c_alc_mac_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/alc/extr_if_alc.c_alc_mac_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alc_softc = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.mii_data = type { i32 }

@ALC_MAC_CFG = common dso_local global i32 0, align 4
@MAC_CFG_FULL_DUPLEX = common dso_local global i32 0, align 4
@MAC_CFG_TX_FC = common dso_local global i32 0, align 4
@MAC_CFG_RX_FC = common dso_local global i32 0, align 4
@MAC_CFG_SPEED_MASK = common dso_local global i32 0, align 4
@ALC_FLAG_AR816X_FAMILY = common dso_local global i32 0, align 4
@DEVICEID_ATHEROS_AR8151 = common dso_local global i64 0, align 8
@DEVICEID_ATHEROS_AR8151_V2 = common dso_local global i64 0, align 8
@DEVICEID_ATHEROS_AR8152_B2 = common dso_local global i64 0, align 8
@MAC_CFG_HASH_ALG_CRC32 = common dso_local global i32 0, align 4
@MAC_CFG_SPEED_MODE_SW = common dso_local global i32 0, align 4
@MAC_CFG_SPEED_10_100 = common dso_local global i32 0, align 4
@MAC_CFG_SPEED_1000 = common dso_local global i32 0, align 4
@IFM_FDX = common dso_local global i32 0, align 4
@IFM_ETH_TXPAUSE = common dso_local global i32 0, align 4
@IFM_ETH_RXPAUSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.alc_softc*)* @alc_mac_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alc_mac_config(%struct.alc_softc* %0) #0 {
  %2 = alloca %struct.alc_softc*, align 8
  %3 = alloca %struct.mii_data*, align 8
  %4 = alloca i32, align 4
  store %struct.alc_softc* %0, %struct.alc_softc** %2, align 8
  %5 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %6 = call i32 @ALC_LOCK_ASSERT(%struct.alc_softc* %5)
  %7 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %8 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = call %struct.mii_data* @device_get_softc(i32 %9)
  store %struct.mii_data* %10, %struct.mii_data** %3, align 8
  %11 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %12 = load i32, i32* @ALC_MAC_CFG, align 4
  %13 = call i32 @CSR_READ_4(%struct.alc_softc* %11, i32 %12)
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
  %24 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %25 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @ALC_FLAG_AR816X_FAMILY, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %54, label %30

30:                                               ; preds = %1
  %31 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %32 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @DEVICEID_ATHEROS_AR8151, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %54, label %38

38:                                               ; preds = %30
  %39 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %40 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @DEVICEID_ATHEROS_AR8151_V2, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %54, label %46

46:                                               ; preds = %38
  %47 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %48 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %47, i32 0, i32 1
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @DEVICEID_ATHEROS_AR8152_B2, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %46, %38, %30, %1
  %55 = load i32, i32* @MAC_CFG_HASH_ALG_CRC32, align 4
  %56 = load i32, i32* @MAC_CFG_SPEED_MODE_SW, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* %4, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %54, %46
  %61 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %62 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @IFM_SUBTYPE(i32 %63)
  switch i32 %64, label %73 [
    i32 128, label %65
    i32 129, label %65
    i32 130, label %69
  ]

65:                                               ; preds = %60, %60
  %66 = load i32, i32* @MAC_CFG_SPEED_10_100, align 4
  %67 = load i32, i32* %4, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %4, align 4
  br label %73

69:                                               ; preds = %60
  %70 = load i32, i32* @MAC_CFG_SPEED_1000, align 4
  %71 = load i32, i32* %4, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %4, align 4
  br label %73

73:                                               ; preds = %60, %69, %65
  %74 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %75 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @IFM_OPTIONS(i32 %76)
  %78 = load i32, i32* @IFM_FDX, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %109

81:                                               ; preds = %73
  %82 = load i32, i32* @MAC_CFG_FULL_DUPLEX, align 4
  %83 = load i32, i32* %4, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %4, align 4
  %85 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %86 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @IFM_OPTIONS(i32 %87)
  %89 = load i32, i32* @IFM_ETH_TXPAUSE, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %81
  %93 = load i32, i32* @MAC_CFG_TX_FC, align 4
  %94 = load i32, i32* %4, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %4, align 4
  br label %96

96:                                               ; preds = %92, %81
  %97 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %98 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @IFM_OPTIONS(i32 %99)
  %101 = load i32, i32* @IFM_ETH_RXPAUSE, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %96
  %105 = load i32, i32* @MAC_CFG_RX_FC, align 4
  %106 = load i32, i32* %4, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %4, align 4
  br label %108

108:                                              ; preds = %104, %96
  br label %109

109:                                              ; preds = %108, %73
  %110 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %111 = load i32, i32* @ALC_MAC_CFG, align 4
  %112 = load i32, i32* %4, align 4
  %113 = call i32 @CSR_WRITE_4(%struct.alc_softc* %110, i32 %111, i32 %112)
  ret void
}

declare dso_local i32 @ALC_LOCK_ASSERT(%struct.alc_softc*) #1

declare dso_local %struct.mii_data* @device_get_softc(i32) #1

declare dso_local i32 @CSR_READ_4(%struct.alc_softc*, i32) #1

declare dso_local i32 @IFM_SUBTYPE(i32) #1

declare dso_local i32 @IFM_OPTIONS(i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.alc_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
