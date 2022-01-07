; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5212/extr_ar5212_misc.c_ar5212WriteAssocid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5212/extr_ar5212_misc.c_ar5212WriteAssocid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.ath_hal_5212 = type { i32, i64 }

@IEEE80211_ADDR_LEN = common dso_local global i32 0, align 4
@AR_BSS_ID0 = common dso_local global i32 0, align 4
@AR_BSS_ID1 = common dso_local global i32 0, align 4
@AR_BSS_ID1_AID_S = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar5212WriteAssocid(%struct.ath_hal* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.ath_hal*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ath_hal_5212*, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %9 = call %struct.ath_hal_5212* @AH5212(%struct.ath_hal* %8)
  store %struct.ath_hal_5212* %9, %struct.ath_hal_5212** %7, align 8
  %10 = load %struct.ath_hal_5212*, %struct.ath_hal_5212** %7, align 8
  %11 = getelementptr inbounds %struct.ath_hal_5212, %struct.ath_hal_5212* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = load i32, i32* @IEEE80211_ADDR_LEN, align 4
  %15 = call i32 @OS_MEMCPY(i64 %12, i32* %13, i32 %14)
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.ath_hal_5212*, %struct.ath_hal_5212** %7, align 8
  %18 = getelementptr inbounds %struct.ath_hal_5212, %struct.ath_hal_5212* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %20 = load i32, i32* @AR_BSS_ID0, align 4
  %21 = load %struct.ath_hal_5212*, %struct.ath_hal_5212** %7, align 8
  %22 = getelementptr inbounds %struct.ath_hal_5212, %struct.ath_hal_5212* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @LE_READ_4(i64 %23)
  %25 = call i32 @OS_REG_WRITE(%struct.ath_hal* %19, i32 %20, i32 %24)
  %26 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %27 = load i32, i32* @AR_BSS_ID1, align 4
  %28 = load %struct.ath_hal_5212*, %struct.ath_hal_5212** %7, align 8
  %29 = getelementptr inbounds %struct.ath_hal_5212, %struct.ath_hal_5212* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %30, 4
  %32 = call i32 @LE_READ_2(i64 %31)
  %33 = load i32, i32* %6, align 4
  %34 = and i32 %33, 16383
  %35 = load i32, i32* @AR_BSS_ID1_AID_S, align 4
  %36 = shl i32 %34, %35
  %37 = or i32 %32, %36
  %38 = call i32 @OS_REG_WRITE(%struct.ath_hal* %26, i32 %27, i32 %37)
  ret void
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
