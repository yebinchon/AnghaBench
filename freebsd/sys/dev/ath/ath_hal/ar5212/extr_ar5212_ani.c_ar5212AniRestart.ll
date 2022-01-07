; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5212/extr_ar5212_ani.c_ar5212AniRestart.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5212/extr_ar5212_ani.c_ar5212AniRestart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.ar5212AniState = type { i64, i64, %struct.ar5212AniParams*, i64 }
%struct.ar5212AniParams = type { i32, i32 }
%struct.ath_hal_5212 = type { i32, i64 }

@AR_PHYCNT1 = common dso_local global i32 0, align 4
@AR_PHYCNT2 = common dso_local global i32 0, align 4
@AR_PHYCNTMASK1 = common dso_local global i32 0, align 4
@AR_PHY_ERR_OFDM_TIMING = common dso_local global i32 0, align 4
@AR_PHYCNTMASK2 = common dso_local global i32 0, align 4
@AR_PHY_ERR_CCK_TIMING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hal*, %struct.ar5212AniState*)* @ar5212AniRestart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar5212AniRestart(%struct.ath_hal* %0, %struct.ar5212AniState* %1) #0 {
  %3 = alloca %struct.ath_hal*, align 8
  %4 = alloca %struct.ar5212AniState*, align 8
  %5 = alloca %struct.ath_hal_5212*, align 8
  %6 = alloca %struct.ar5212AniParams*, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %3, align 8
  store %struct.ar5212AniState* %1, %struct.ar5212AniState** %4, align 8
  %7 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %8 = call %struct.ath_hal_5212* @AH5212(%struct.ath_hal* %7)
  store %struct.ath_hal_5212* %8, %struct.ath_hal_5212** %5, align 8
  %9 = load %struct.ar5212AniState*, %struct.ar5212AniState** %4, align 8
  %10 = getelementptr inbounds %struct.ar5212AniState, %struct.ar5212AniState* %9, i32 0, i32 3
  store i64 0, i64* %10, align 8
  %11 = load %struct.ath_hal_5212*, %struct.ath_hal_5212** %5, align 8
  %12 = getelementptr inbounds %struct.ath_hal_5212, %struct.ath_hal_5212* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %43

15:                                               ; preds = %2
  %16 = load %struct.ar5212AniState*, %struct.ar5212AniState** %4, align 8
  %17 = getelementptr inbounds %struct.ar5212AniState, %struct.ar5212AniState* %16, i32 0, i32 2
  %18 = load %struct.ar5212AniParams*, %struct.ar5212AniParams** %17, align 8
  store %struct.ar5212AniParams* %18, %struct.ar5212AniParams** %6, align 8
  %19 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %20 = load i32, i32* @AR_PHYCNT1, align 4
  %21 = load %struct.ar5212AniParams*, %struct.ar5212AniParams** %6, align 8
  %22 = getelementptr inbounds %struct.ar5212AniParams, %struct.ar5212AniParams* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @OS_REG_WRITE(%struct.ath_hal* %19, i32 %20, i32 %23)
  %25 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %26 = load i32, i32* @AR_PHYCNT2, align 4
  %27 = load %struct.ar5212AniParams*, %struct.ar5212AniParams** %6, align 8
  %28 = getelementptr inbounds %struct.ar5212AniParams, %struct.ar5212AniParams* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @OS_REG_WRITE(%struct.ath_hal* %25, i32 %26, i32 %29)
  %31 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %32 = load i32, i32* @AR_PHYCNTMASK1, align 4
  %33 = load i32, i32* @AR_PHY_ERR_OFDM_TIMING, align 4
  %34 = call i32 @OS_REG_WRITE(%struct.ath_hal* %31, i32 %32, i32 %33)
  %35 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %36 = load i32, i32* @AR_PHYCNTMASK2, align 4
  %37 = load i32, i32* @AR_PHY_ERR_CCK_TIMING, align 4
  %38 = call i32 @OS_REG_WRITE(%struct.ath_hal* %35, i32 %36, i32 %37)
  %39 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %40 = load %struct.ath_hal_5212*, %struct.ath_hal_5212** %5, align 8
  %41 = getelementptr inbounds %struct.ath_hal_5212, %struct.ath_hal_5212* %40, i32 0, i32 0
  %42 = call i32 @ar5212UpdateMibCounters(%struct.ath_hal* %39, i32* %41)
  br label %43

43:                                               ; preds = %15, %2
  %44 = load %struct.ar5212AniState*, %struct.ar5212AniState** %4, align 8
  %45 = getelementptr inbounds %struct.ar5212AniState, %struct.ar5212AniState* %44, i32 0, i32 1
  store i64 0, i64* %45, align 8
  %46 = load %struct.ar5212AniState*, %struct.ar5212AniState** %4, align 8
  %47 = getelementptr inbounds %struct.ar5212AniState, %struct.ar5212AniState* %46, i32 0, i32 0
  store i64 0, i64* %47, align 8
  ret void
}

declare dso_local %struct.ath_hal_5212* @AH5212(%struct.ath_hal*) #1

declare dso_local i32 @OS_REG_WRITE(%struct.ath_hal*, i32, i32) #1

declare dso_local i32 @ar5212UpdateMibCounters(%struct.ath_hal*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
