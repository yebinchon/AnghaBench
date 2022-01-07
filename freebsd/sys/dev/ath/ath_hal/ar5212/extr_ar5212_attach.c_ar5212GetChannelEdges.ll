; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5212/extr_ar5212_attach.c_ar5212GetChannelEdges.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5212/extr_ar5212_attach.c_ar5212GetChannelEdges.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }

@IEEE80211_CHAN_5GHZ = common dso_local global i32 0, align 4
@AH_TRUE = common dso_local global i32 0, align 4
@IEEE80211_CHAN_2GHZ = common dso_local global i32 0, align 4
@AR_EEP_BMODE = common dso_local global i32 0, align 4
@AR_EEP_GMODE = common dso_local global i32 0, align 4
@AH_FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar5212GetChannelEdges(%struct.ath_hal* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ath_hal*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* @IEEE80211_CHAN_5GHZ, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %4
  %15 = load i32*, i32** %8, align 8
  store i32 4915, i32* %15, align 4
  %16 = load i32*, i32** %9, align 8
  store i32 6100, i32* %16, align 4
  %17 = load i32, i32* @AH_TRUE, align 4
  store i32 %17, i32* %5, align 4
  br label %39

18:                                               ; preds = %4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @IEEE80211_CHAN_2GHZ, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %37

23:                                               ; preds = %18
  %24 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %25 = load i32, i32* @AR_EEP_BMODE, align 4
  %26 = call i64 @ath_hal_eepromGetFlag(%struct.ath_hal* %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %23
  %29 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %30 = load i32, i32* @AR_EEP_GMODE, align 4
  %31 = call i64 @ath_hal_eepromGetFlag(%struct.ath_hal* %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %28, %23
  %34 = load i32*, i32** %8, align 8
  store i32 2312, i32* %34, align 4
  %35 = load i32*, i32** %9, align 8
  store i32 2732, i32* %35, align 4
  %36 = load i32, i32* @AH_TRUE, align 4
  store i32 %36, i32* %5, align 4
  br label %39

37:                                               ; preds = %28, %18
  %38 = load i32, i32* @AH_FALSE, align 4
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %37, %33, %14
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

declare dso_local i64 @ath_hal_eepromGetFlag(%struct.ath_hal*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
