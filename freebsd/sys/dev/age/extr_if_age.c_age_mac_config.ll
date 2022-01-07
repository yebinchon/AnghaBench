; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/age/extr_if_age.c_age_mac_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/age/extr_if_age.c_age_mac_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.age_softc = type { i32 }
%struct.mii_data = type { i32 }

@AGE_MAC_CFG = common dso_local global i32 0, align 4
@MAC_CFG_FULL_DUPLEX = common dso_local global i32 0, align 4
@MAC_CFG_TX_FC = common dso_local global i32 0, align 4
@MAC_CFG_RX_FC = common dso_local global i32 0, align 4
@MAC_CFG_SPEED_MASK = common dso_local global i32 0, align 4
@MAC_CFG_SPEED_10_100 = common dso_local global i32 0, align 4
@MAC_CFG_SPEED_1000 = common dso_local global i32 0, align 4
@IFM_FDX = common dso_local global i32 0, align 4
@IFM_ETH_RXPAUSE = common dso_local global i32 0, align 4
@IFM_ETH_TXPAUSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.age_softc*)* @age_mac_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @age_mac_config(%struct.age_softc* %0) #0 {
  %2 = alloca %struct.age_softc*, align 8
  %3 = alloca %struct.mii_data*, align 8
  %4 = alloca i32, align 4
  store %struct.age_softc* %0, %struct.age_softc** %2, align 8
  %5 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %6 = call i32 @AGE_LOCK_ASSERT(%struct.age_softc* %5)
  %7 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %8 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.mii_data* @device_get_softc(i32 %9)
  store %struct.mii_data* %10, %struct.mii_data** %3, align 8
  %11 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %12 = load i32, i32* @AGE_MAC_CFG, align 4
  %13 = call i32 @CSR_READ_4(%struct.age_softc* %11, i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* @MAC_CFG_FULL_DUPLEX, align 4
  %15 = xor i32 %14, -1
  %16 = load i32, i32* %4, align 4
  %17 = and i32 %16, %15
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* @MAC_CFG_TX_FC, align 4
  %19 = load i32, i32* @MAC_CFG_RX_FC, align 4
  %20 = or i32 %18, %19
  %21 = xor i32 %20, -1
  %22 = load i32, i32* %4, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* @MAC_CFG_SPEED_MASK, align 4
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %4, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %4, align 4
  %28 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %29 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @IFM_SUBTYPE(i32 %30)
  switch i32 %31, label %40 [
    i32 128, label %32
    i32 129, label %32
    i32 130, label %36
  ]

32:                                               ; preds = %1, %1
  %33 = load i32, i32* @MAC_CFG_SPEED_10_100, align 4
  %34 = load i32, i32* %4, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %4, align 4
  br label %40

36:                                               ; preds = %1
  %37 = load i32, i32* @MAC_CFG_SPEED_1000, align 4
  %38 = load i32, i32* %4, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %1, %36, %32
  %41 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %42 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @IFM_OPTIONS(i32 %43)
  %45 = load i32, i32* @IFM_FDX, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %40
  %49 = load i32, i32* @MAC_CFG_FULL_DUPLEX, align 4
  %50 = load i32, i32* %4, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %48, %40
  %53 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %54 = load i32, i32* @AGE_MAC_CFG, align 4
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @CSR_WRITE_4(%struct.age_softc* %53, i32 %54, i32 %55)
  ret void
}

declare dso_local i32 @AGE_LOCK_ASSERT(%struct.age_softc*) #1

declare dso_local %struct.mii_data* @device_get_softc(i32) #1

declare dso_local i32 @CSR_READ_4(%struct.age_softc*, i32) #1

declare dso_local i32 @IFM_SUBTYPE(i32) #1

declare dso_local i32 @IFM_OPTIONS(i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.age_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
