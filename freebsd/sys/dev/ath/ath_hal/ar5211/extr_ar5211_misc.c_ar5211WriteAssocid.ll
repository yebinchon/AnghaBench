; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5211/extr_ar5211_misc.c_ar5211WriteAssocid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5211/extr_ar5211_misc.c_ar5211WriteAssocid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.ath_hal_5211 = type { i64 }

@IEEE80211_ADDR_LEN = common dso_local global i32 0, align 4
@AR_BSS_ID0 = common dso_local global i32 0, align 4
@AR_BSS_ID1 = common dso_local global i32 0, align 4
@AR_BSS_ID1_AID_S = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar5211WriteAssocid(%struct.ath_hal* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.ath_hal*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ath_hal_5211*, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %9 = call %struct.ath_hal_5211* @AH5211(%struct.ath_hal* %8)
  store %struct.ath_hal_5211* %9, %struct.ath_hal_5211** %7, align 8
  %10 = load %struct.ath_hal_5211*, %struct.ath_hal_5211** %7, align 8
  %11 = getelementptr inbounds %struct.ath_hal_5211, %struct.ath_hal_5211* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = load i32, i32* @IEEE80211_ADDR_LEN, align 4
  %15 = call i32 @OS_MEMCPY(i64 %12, i32* %13, i32 %14)
  %16 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %17 = load i32, i32* @AR_BSS_ID0, align 4
  %18 = load %struct.ath_hal_5211*, %struct.ath_hal_5211** %7, align 8
  %19 = getelementptr inbounds %struct.ath_hal_5211, %struct.ath_hal_5211* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @LE_READ_4(i64 %20)
  %22 = call i32 @OS_REG_WRITE(%struct.ath_hal* %16, i32 %17, i32 %21)
  %23 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %24 = load i32, i32* @AR_BSS_ID1, align 4
  %25 = load %struct.ath_hal_5211*, %struct.ath_hal_5211** %7, align 8
  %26 = getelementptr inbounds %struct.ath_hal_5211, %struct.ath_hal_5211* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %27, 4
  %29 = call i32 @LE_READ_2(i64 %28)
  %30 = load i32, i32* %6, align 4
  %31 = and i32 %30, 16383
  %32 = load i32, i32* @AR_BSS_ID1_AID_S, align 4
  %33 = shl i32 %31, %32
  %34 = or i32 %29, %33
  %35 = call i32 @OS_REG_WRITE(%struct.ath_hal* %23, i32 %24, i32 %34)
  ret void
}

declare dso_local %struct.ath_hal_5211* @AH5211(%struct.ath_hal*) #1

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
