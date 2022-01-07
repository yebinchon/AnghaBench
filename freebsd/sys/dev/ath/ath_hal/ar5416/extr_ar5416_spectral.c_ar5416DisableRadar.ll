; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5416/extr_ar5416_spectral.c_ar5416DisableRadar.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5416/extr_ar5416_spectral.c_ar5416DisableRadar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }

@AR_PHY_RADAR_0 = common dso_local global i32 0, align 4
@AR_PHY_RADAR_0_FFT_ENA = common dso_local global i32 0, align 4
@AR_PHY_RADAR_0_RRSSI = common dso_local global i32 0, align 4
@MAX_RADAR_RSSI_THRESH = common dso_local global i32 0, align 4
@AR_PHY_RADAR_0_HEIGHT = common dso_local global i32 0, align 4
@MAX_RADAR_HEIGHT = common dso_local global i32 0, align 4
@AR_PHY_RADAR_0_ENA = common dso_local global i32 0, align 4
@AR_PHY_RADAR_EXT = common dso_local global i32 0, align 4
@AR_PHY_RADAR_EXT_ENA = common dso_local global i32 0, align 4
@AR_RX_FILTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hal*)* @ar5416DisableRadar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar5416DisableRadar(%struct.ath_hal* %0) #0 {
  %2 = alloca %struct.ath_hal*, align 8
  %3 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %2, align 8
  %4 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %5 = load i32, i32* @AR_PHY_RADAR_0, align 4
  %6 = call i32 @OS_REG_READ(%struct.ath_hal* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @AR_PHY_RADAR_0_FFT_ENA, align 4
  %8 = load i32, i32* %3, align 4
  %9 = or i32 %8, %7
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* @AR_PHY_RADAR_0_RRSSI, align 4
  %11 = xor i32 %10, -1
  %12 = load i32, i32* %3, align 4
  %13 = and i32 %12, %11
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* @MAX_RADAR_RSSI_THRESH, align 4
  %15 = load i32, i32* @AR_PHY_RADAR_0_RRSSI, align 4
  %16 = call i32 @SM(i32 %14, i32 %15)
  %17 = load i32, i32* %3, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* @AR_PHY_RADAR_0_HEIGHT, align 4
  %20 = xor i32 %19, -1
  %21 = load i32, i32* %3, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* @MAX_RADAR_HEIGHT, align 4
  %24 = load i32, i32* @AR_PHY_RADAR_0_HEIGHT, align 4
  %25 = call i32 @SM(i32 %23, i32 %24)
  %26 = load i32, i32* %3, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* @AR_PHY_RADAR_0_ENA, align 4
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %3, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %3, align 4
  %32 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %33 = load i32, i32* @AR_PHY_RADAR_0, align 4
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @OS_REG_WRITE(%struct.ath_hal* %32, i32 %33, i32 %34)
  %36 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %37 = load i32, i32* @AR_PHY_RADAR_EXT, align 4
  %38 = call i32 @OS_REG_READ(%struct.ath_hal* %36, i32 %37)
  store i32 %38, i32* %3, align 4
  %39 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %40 = load i32, i32* @AR_PHY_RADAR_EXT, align 4
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* @AR_PHY_RADAR_EXT_ENA, align 4
  %43 = xor i32 %42, -1
  %44 = and i32 %41, %43
  %45 = call i32 @OS_REG_WRITE(%struct.ath_hal* %39, i32 %40, i32 %44)
  %46 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %47 = load i32, i32* @AR_RX_FILTER, align 4
  %48 = call i32 @OS_REG_READ(%struct.ath_hal* %46, i32 %47)
  store i32 %48, i32* %3, align 4
  %49 = load i32, i32* %3, align 4
  %50 = or i32 %49, 8192
  store i32 %50, i32* %3, align 4
  %51 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %52 = load i32, i32* @AR_RX_FILTER, align 4
  %53 = load i32, i32* %3, align 4
  %54 = call i32 @OS_REG_WRITE(%struct.ath_hal* %51, i32 %52, i32 %53)
  ret void
}

declare dso_local i32 @OS_REG_READ(%struct.ath_hal*, i32) #1

declare dso_local i32 @SM(i32, i32) #1

declare dso_local i32 @OS_REG_WRITE(%struct.ath_hal*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
