; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5212/extr_ar5212_ani.c_updateMIBStats.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5212/extr_ar5212_ani.c_updateMIBStats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.ar5212AniState = type { i64, i64, %struct.ar5212AniParams* }
%struct.ar5212AniParams = type { i64, i64 }
%struct.ath_hal_5212 = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@AR_PHYCNT1 = common dso_local global i32 0, align 4
@AR_PHYCNT2 = common dso_local global i32 0, align 4
@HAL_DEBUG_ANI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"OFDM phyErrCnt %d phyCnt1 0x%x\0A\00", align 1
@AR_PHY_COUNTMAX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"CCK phyErrCnt %d phyCnt2 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hal*, %struct.ar5212AniState*)* @updateMIBStats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @updateMIBStats(%struct.ath_hal* %0, %struct.ar5212AniState* %1) #0 {
  %3 = alloca %struct.ath_hal*, align 8
  %4 = alloca %struct.ar5212AniState*, align 8
  %5 = alloca %struct.ath_hal_5212*, align 8
  %6 = alloca %struct.ar5212AniParams*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %3, align 8
  store %struct.ar5212AniState* %1, %struct.ar5212AniState** %4, align 8
  %11 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %12 = call %struct.ath_hal_5212* @AH5212(%struct.ath_hal* %11)
  store %struct.ath_hal_5212* %12, %struct.ath_hal_5212** %5, align 8
  %13 = load %struct.ar5212AniState*, %struct.ar5212AniState** %4, align 8
  %14 = getelementptr inbounds %struct.ar5212AniState, %struct.ar5212AniState* %13, i32 0, i32 2
  %15 = load %struct.ar5212AniParams*, %struct.ar5212AniParams** %14, align 8
  store %struct.ar5212AniParams* %15, %struct.ar5212AniParams** %6, align 8
  %16 = load %struct.ath_hal_5212*, %struct.ath_hal_5212** %5, align 8
  %17 = getelementptr inbounds %struct.ath_hal_5212, %struct.ath_hal_5212* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @HALASSERT(i32 %18)
  %20 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %21 = load %struct.ath_hal_5212*, %struct.ath_hal_5212** %5, align 8
  %22 = getelementptr inbounds %struct.ath_hal_5212, %struct.ath_hal_5212* %21, i32 0, i32 1
  %23 = call i32 @ar5212UpdateMibCounters(%struct.ath_hal* %20, i32* %22)
  %24 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %25 = load i32, i32* @AR_PHYCNT1, align 4
  %26 = call i64 @OS_REG_READ(%struct.ath_hal* %24, i32 %25)
  store i64 %26, i64* %7, align 8
  %27 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %28 = load i32, i32* @AR_PHYCNT2, align 4
  %29 = call i64 @OS_REG_READ(%struct.ath_hal* %27, i32 %28)
  store i64 %29, i64* %8, align 8
  %30 = load i64, i64* %7, align 8
  %31 = load %struct.ar5212AniParams*, %struct.ar5212AniParams** %6, align 8
  %32 = getelementptr inbounds %struct.ar5212AniParams, %struct.ar5212AniParams* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = sub nsw i64 %30, %33
  store i64 %34, i64* %9, align 8
  %35 = load i64, i64* %9, align 8
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %2
  %38 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %39 = load i32, i32* @HAL_DEBUG_ANI, align 4
  %40 = load i64, i64* %9, align 8
  %41 = load i64, i64* %7, align 8
  %42 = call i32 @HALDEBUG(%struct.ath_hal* %38, i32 %39, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %40, i64 %41)
  %43 = load i64, i64* @AR_PHY_COUNTMAX, align 8
  store i64 %43, i64* %9, align 8
  br label %44

44:                                               ; preds = %37, %2
  %45 = load i64, i64* %9, align 8
  %46 = load %struct.ar5212AniState*, %struct.ar5212AniState** %4, align 8
  %47 = getelementptr inbounds %struct.ar5212AniState, %struct.ar5212AniState* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = sub nsw i64 %45, %48
  %50 = load %struct.ath_hal_5212*, %struct.ath_hal_5212** %5, align 8
  %51 = getelementptr inbounds %struct.ath_hal_5212, %struct.ath_hal_5212* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %54, %49
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %52, align 4
  %57 = load i64, i64* %9, align 8
  %58 = load %struct.ar5212AniState*, %struct.ar5212AniState** %4, align 8
  %59 = getelementptr inbounds %struct.ar5212AniState, %struct.ar5212AniState* %58, i32 0, i32 0
  store i64 %57, i64* %59, align 8
  %60 = load i64, i64* %8, align 8
  %61 = load %struct.ar5212AniParams*, %struct.ar5212AniParams** %6, align 8
  %62 = getelementptr inbounds %struct.ar5212AniParams, %struct.ar5212AniParams* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = sub nsw i64 %60, %63
  store i64 %64, i64* %10, align 8
  %65 = load i64, i64* %10, align 8
  %66 = icmp slt i64 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %44
  %68 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %69 = load i32, i32* @HAL_DEBUG_ANI, align 4
  %70 = load i64, i64* %10, align 8
  %71 = load i64, i64* %8, align 8
  %72 = call i32 @HALDEBUG(%struct.ath_hal* %68, i32 %69, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i64 %70, i64 %71)
  %73 = load i64, i64* @AR_PHY_COUNTMAX, align 8
  store i64 %73, i64* %10, align 8
  br label %74

74:                                               ; preds = %67, %44
  %75 = load i64, i64* %10, align 8
  %76 = load %struct.ar5212AniState*, %struct.ar5212AniState** %4, align 8
  %77 = getelementptr inbounds %struct.ar5212AniState, %struct.ar5212AniState* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = sub nsw i64 %75, %78
  %80 = load %struct.ath_hal_5212*, %struct.ath_hal_5212** %5, align 8
  %81 = getelementptr inbounds %struct.ath_hal_5212, %struct.ath_hal_5212* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = sext i32 %83 to i64
  %85 = add nsw i64 %84, %79
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %82, align 4
  %87 = load i64, i64* %10, align 8
  %88 = load %struct.ar5212AniState*, %struct.ar5212AniState** %4, align 8
  %89 = getelementptr inbounds %struct.ar5212AniState, %struct.ar5212AniState* %88, i32 0, i32 1
  store i64 %87, i64* %89, align 8
  ret void
}

declare dso_local %struct.ath_hal_5212* @AH5212(%struct.ath_hal*) #1

declare dso_local i32 @HALASSERT(i32) #1

declare dso_local i32 @ar5212UpdateMibCounters(%struct.ath_hal*, i32*) #1

declare dso_local i64 @OS_REG_READ(%struct.ath_hal*, i32) #1

declare dso_local i32 @HALDEBUG(%struct.ath_hal*, i32, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
