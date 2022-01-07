; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5212/extr_ar5212_misc.c_ar5212SetBssIdMask.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5212/extr_ar5212_misc.c_ar5212SetBssIdMask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.ath_hal_5212 = type { i64 }

@IEEE80211_ADDR_LEN = common dso_local global i32 0, align 4
@AR_BSSMSKL = common dso_local global i32 0, align 4
@AR_BSSMSKU = common dso_local global i32 0, align 4
@AH_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar5212SetBssIdMask(%struct.ath_hal* %0, i32* %1) #0 {
  %3 = alloca %struct.ath_hal*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.ath_hal_5212*, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %7 = call %struct.ath_hal_5212* @AH5212(%struct.ath_hal* %6)
  store %struct.ath_hal_5212* %7, %struct.ath_hal_5212** %5, align 8
  %8 = load %struct.ath_hal_5212*, %struct.ath_hal_5212** %5, align 8
  %9 = getelementptr inbounds %struct.ath_hal_5212, %struct.ath_hal_5212* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = load i32, i32* @IEEE80211_ADDR_LEN, align 4
  %13 = call i32 @OS_MEMCPY(i64 %10, i32* %11, i32 %12)
  %14 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %15 = load i32, i32* @AR_BSSMSKL, align 4
  %16 = load %struct.ath_hal_5212*, %struct.ath_hal_5212** %5, align 8
  %17 = getelementptr inbounds %struct.ath_hal_5212, %struct.ath_hal_5212* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @LE_READ_4(i64 %18)
  %20 = call i32 @OS_REG_WRITE(%struct.ath_hal* %14, i32 %15, i32 %19)
  %21 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %22 = load i32, i32* @AR_BSSMSKU, align 4
  %23 = load %struct.ath_hal_5212*, %struct.ath_hal_5212** %5, align 8
  %24 = getelementptr inbounds %struct.ath_hal_5212, %struct.ath_hal_5212* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %25, 4
  %27 = call i32 @LE_READ_2(i64 %26)
  %28 = call i32 @OS_REG_WRITE(%struct.ath_hal* %21, i32 %22, i32 %27)
  %29 = load i32, i32* @AH_TRUE, align 4
  ret i32 %29
}

declare dso_local %struct.ath_hal_5212* @AH5212(%struct.ath_hal*) #1

declare dso_local i32 @OS_MEMCPY(i64, i32*, i32) #1

declare dso_local i32 @OS_REG_WRITE(%struct.ath_hal*, i32, i32) #1

declare dso_local i32 @LE_READ_4(i64) #1

declare dso_local i32 @LE_READ_2(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
