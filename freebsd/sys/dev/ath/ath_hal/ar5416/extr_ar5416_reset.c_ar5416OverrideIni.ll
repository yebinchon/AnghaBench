; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5416/extr_ar5416_reset.c_ar5416OverrideIni.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5416/extr_ar5416_reset.c_ar5416OverrideIni.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.ieee80211_channel = type { i32 }

@AR_DIAG_SW = common dso_local global i32 0, align 4
@AR_DIAG_RX_DIS = common dso_local global i32 0, align 4
@AR_DIAG_RX_ABORT = common dso_local global i32 0, align 4
@AR_PCU_MISC_MODE2 = common dso_local global i32 0, align 4
@AR_PCU_MISC_MODE2_ADHOC_MCAST_KEYID_ENABLE = common dso_local global i32 0, align 4
@AR_PCU_MISC_MODE2_HWWAR1 = common dso_local global i32 0, align 4
@AR_PCU_MISC_MODE2_HWWAR2 = common dso_local global i32 0, align 4
@AH_FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hal*, %struct.ieee80211_channel*)* @ar5416OverrideIni to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar5416OverrideIni(%struct.ath_hal* %0, %struct.ieee80211_channel* %1) #0 {
  %3 = alloca %struct.ath_hal*, align 8
  %4 = alloca %struct.ieee80211_channel*, align 8
  %5 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %3, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %4, align 8
  %6 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %7 = load i32, i32* @AR_DIAG_SW, align 4
  %8 = load i32, i32* @AR_DIAG_RX_DIS, align 4
  %9 = load i32, i32* @AR_DIAG_RX_ABORT, align 4
  %10 = or i32 %8, %9
  %11 = call i32 @OS_REG_SET_BIT(%struct.ath_hal* %6, i32 %7, i32 %10)
  %12 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %13 = call i64 @AR_SREV_MERLIN_10_OR_LATER(%struct.ath_hal* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %45

15:                                               ; preds = %2
  %16 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %17 = load i32, i32* @AR_PCU_MISC_MODE2, align 4
  %18 = call i32 @OS_REG_READ(%struct.ath_hal* %16, i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* @AR_PCU_MISC_MODE2_ADHOC_MCAST_KEYID_ENABLE, align 4
  %20 = xor i32 %19, -1
  %21 = load i32, i32* %5, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %5, align 4
  %23 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %24 = call i32 @AR_SREV_9271(%struct.ath_hal* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %15
  %27 = load i32, i32* @AR_PCU_MISC_MODE2_HWWAR1, align 4
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %5, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %26, %15
  %32 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %33 = call i64 @AR_SREV_KIWI_10_OR_LATER(%struct.ath_hal* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %31
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @AR_PCU_MISC_MODE2_HWWAR2, align 4
  %38 = xor i32 %37, -1
  %39 = and i32 %36, %38
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %35, %31
  %41 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %42 = load i32, i32* @AR_PCU_MISC_MODE2, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @OS_REG_WRITE(%struct.ath_hal* %41, i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %40, %2
  %46 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %47 = call i64 @AR_SREV_HOWL(%struct.ath_hal* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %45
  %50 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %51 = call i64 @AR_SREV_SOWL(%struct.ath_hal* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %49, %45
  %54 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %55 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %56 = load i32, i32* @AH_FALSE, align 4
  %57 = call i32 @ar5416SetRifsDelay(%struct.ath_hal* %54, %struct.ieee80211_channel* %55, i32 %56)
  br label %58

58:                                               ; preds = %53, %49
  %59 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %60 = call i32 @AR_SREV_5416_V20_OR_LATER(%struct.ath_hal* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %64 = call i64 @AR_SREV_MERLIN(%struct.ath_hal* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %62, %58
  br label %70

67:                                               ; preds = %62
  %68 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %69 = call i32 @OS_REG_WRITE(%struct.ath_hal* %68, i32 41516, i32 17)
  br label %70

70:                                               ; preds = %67, %66
  ret void
}

declare dso_local i32 @OS_REG_SET_BIT(%struct.ath_hal*, i32, i32) #1

declare dso_local i64 @AR_SREV_MERLIN_10_OR_LATER(%struct.ath_hal*) #1

declare dso_local i32 @OS_REG_READ(%struct.ath_hal*, i32) #1

declare dso_local i32 @AR_SREV_9271(%struct.ath_hal*) #1

declare dso_local i64 @AR_SREV_KIWI_10_OR_LATER(%struct.ath_hal*) #1

declare dso_local i32 @OS_REG_WRITE(%struct.ath_hal*, i32, i32) #1

declare dso_local i64 @AR_SREV_HOWL(%struct.ath_hal*) #1

declare dso_local i64 @AR_SREV_SOWL(%struct.ath_hal*) #1

declare dso_local i32 @ar5416SetRifsDelay(%struct.ath_hal*, %struct.ieee80211_channel*, i32) #1

declare dso_local i32 @AR_SREV_5416_V20_OR_LATER(%struct.ath_hal*) #1

declare dso_local i64 @AR_SREV_MERLIN(%struct.ath_hal*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
