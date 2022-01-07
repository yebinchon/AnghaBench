; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5416/extr_ar5416_attach.c_ar5416WriteIni.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5416/extr_ar5416_attach.c_ar5416WriteIni.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.ieee80211_channel = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i32 (%struct.ath_hal*, i32, i32, i32)* }

@AR_PHY_ADC_SERIAL_CTL = common dso_local global i32 0, align 4
@AR_PHY_SEL_EXTERNAL_RADIO = common dso_local global i32 0, align 4
@AR_PHY_SEL_INTERNAL_ADDAC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hal*, %struct.ieee80211_channel*)* @ar5416WriteIni to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar5416WriteIni(%struct.ath_hal* %0, %struct.ieee80211_channel* %1) #0 {
  %3 = alloca %struct.ath_hal*, align 8
  %4 = alloca %struct.ieee80211_channel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %3, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %4, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %9 = call i64 @IEEE80211_IS_CHAN_2GHZ(%struct.ieee80211_channel* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %24

11:                                               ; preds = %2
  store i32 2, i32* %6, align 4
  %12 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %13 = call i64 @IEEE80211_IS_CHAN_HT40(%struct.ieee80211_channel* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  store i32 3, i32* %5, align 4
  br label %23

16:                                               ; preds = %11
  %17 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %18 = call i64 @IEEE80211_IS_CHAN_108G(%struct.ieee80211_channel* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i32 5, i32* %5, align 4
  br label %22

21:                                               ; preds = %16
  store i32 4, i32* %5, align 4
  br label %22

22:                                               ; preds = %21, %20
  br label %23

23:                                               ; preds = %22, %15
  br label %35

24:                                               ; preds = %2
  store i32 1, i32* %6, align 4
  %25 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %26 = call i64 @IEEE80211_IS_CHAN_HT40(%struct.ieee80211_channel* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %30 = call i64 @IEEE80211_IS_CHAN_TURBO(%struct.ieee80211_channel* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28, %24
  store i32 2, i32* %5, align 4
  br label %34

33:                                               ; preds = %28
  store i32 1, i32* %5, align 4
  br label %34

34:                                               ; preds = %33, %32
  br label %35

35:                                               ; preds = %34, %23
  %36 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %37 = call i32 @AR_PHY(i32 0)
  %38 = call i32 @OS_REG_WRITE(%struct.ath_hal* %36, i32 %37, i32 7)
  %39 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %40 = load i32, i32* @AR_PHY_ADC_SERIAL_CTL, align 4
  %41 = load i32, i32* @AR_PHY_SEL_EXTERNAL_RADIO, align 4
  %42 = call i32 @OS_REG_WRITE(%struct.ath_hal* %39, i32 %40, i32 %41)
  %43 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %44 = call i64 @AR_SREV_SOWL(%struct.ath_hal* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %35
  %47 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %48 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %49 = call i32 @ar5416EepromSetAddac(%struct.ath_hal* %47, %struct.ieee80211_channel* %48)
  br label %50

50:                                               ; preds = %46, %35
  %51 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %52 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %53 = call %struct.TYPE_5__* @AH5416(%struct.ath_hal* %52)
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @ath_hal_ini_write(%struct.ath_hal* %51, i32* %54, i32 1, i32 %55)
  store i32 %56, i32* %7, align 4
  %57 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %58 = load i32, i32* @AR_PHY_ADC_SERIAL_CTL, align 4
  %59 = load i32, i32* @AR_PHY_SEL_INTERNAL_ADDAC, align 4
  %60 = call i32 @OS_REG_WRITE(%struct.ath_hal* %57, i32 %58, i32 %59)
  %61 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %62 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %63 = call %struct.TYPE_6__* @AH5212(%struct.ath_hal* %62)
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 2
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @ath_hal_ini_write(%struct.ath_hal* %61, i32* %64, i32 %65, i32 %66)
  store i32 %67, i32* %7, align 4
  %68 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %69 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %70 = call %struct.TYPE_6__* @AH5212(%struct.ath_hal* %69)
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @ath_hal_ini_write(%struct.ath_hal* %68, i32* %71, i32 1, i32 %72)
  store i32 %73, i32* %7, align 4
  %74 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %75 = call %struct.TYPE_6__* @AH5212(%struct.ath_hal* %74)
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32 (%struct.ath_hal*, i32, i32, i32)*, i32 (%struct.ath_hal*, i32, i32, i32)** %78, align 8
  %80 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* %7, align 4
  %84 = call i32 %79(%struct.ath_hal* %80, i32 %81, i32 %82, i32 %83)
  ret void
}

declare dso_local i64 @IEEE80211_IS_CHAN_2GHZ(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_HT40(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_108G(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_TURBO(%struct.ieee80211_channel*) #1

declare dso_local i32 @OS_REG_WRITE(%struct.ath_hal*, i32, i32) #1

declare dso_local i32 @AR_PHY(i32) #1

declare dso_local i64 @AR_SREV_SOWL(%struct.ath_hal*) #1

declare dso_local i32 @ar5416EepromSetAddac(%struct.ath_hal*, %struct.ieee80211_channel*) #1

declare dso_local i32 @ath_hal_ini_write(%struct.ath_hal*, i32*, i32, i32) #1

declare dso_local %struct.TYPE_5__* @AH5416(%struct.ath_hal*) #1

declare dso_local %struct.TYPE_6__* @AH5212(%struct.ath_hal*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
