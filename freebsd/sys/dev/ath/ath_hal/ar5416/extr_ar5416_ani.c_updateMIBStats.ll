; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5416/extr_ar5416_ani.c_updateMIBStats.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5416/extr_ar5416_ani.c_updateMIBStats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.ar5212AniState = type { i64, i64, %struct.ar5212AniParams* }
%struct.ar5212AniParams = type { i64, i64 }
%struct.ath_hal_5212 = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@AR_PHY_ERR_1 = common dso_local global i32 0, align 4
@AR_PHY_ERR_2 = common dso_local global i32 0, align 4
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
  %16 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %17 = load %struct.ath_hal_5212*, %struct.ath_hal_5212** %5, align 8
  %18 = getelementptr inbounds %struct.ath_hal_5212, %struct.ath_hal_5212* %17, i32 0, i32 1
  %19 = call i32 @ar5212UpdateMibCounters(%struct.ath_hal* %16, i32* %18)
  %20 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %21 = load i32, i32* @AR_PHY_ERR_1, align 4
  %22 = call i64 @OS_REG_READ(%struct.ath_hal* %20, i32 %21)
  store i64 %22, i64* %7, align 8
  %23 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %24 = load i32, i32* @AR_PHY_ERR_2, align 4
  %25 = call i64 @OS_REG_READ(%struct.ath_hal* %23, i32 %24)
  store i64 %25, i64* %8, align 8
  %26 = load i64, i64* %7, align 8
  %27 = load %struct.ar5212AniParams*, %struct.ar5212AniParams** %6, align 8
  %28 = getelementptr inbounds %struct.ar5212AniParams, %struct.ar5212AniParams* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = sub nsw i64 %26, %29
  store i64 %30, i64* %9, align 8
  %31 = load i64, i64* %9, align 8
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %2
  %34 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %35 = load i32, i32* @HAL_DEBUG_ANI, align 4
  %36 = load i64, i64* %9, align 8
  %37 = load i64, i64* %7, align 8
  %38 = call i32 @HALDEBUG(%struct.ath_hal* %34, i32 %35, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %36, i64 %37)
  %39 = load i64, i64* @AR_PHY_COUNTMAX, align 8
  store i64 %39, i64* %9, align 8
  br label %40

40:                                               ; preds = %33, %2
  %41 = load i64, i64* %9, align 8
  %42 = load %struct.ar5212AniState*, %struct.ar5212AniState** %4, align 8
  %43 = getelementptr inbounds %struct.ar5212AniState, %struct.ar5212AniState* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = sub nsw i64 %41, %44
  %46 = load %struct.ath_hal_5212*, %struct.ath_hal_5212** %5, align 8
  %47 = getelementptr inbounds %struct.ath_hal_5212, %struct.ath_hal_5212* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %50, %45
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %48, align 4
  %53 = load i64, i64* %9, align 8
  %54 = load %struct.ar5212AniState*, %struct.ar5212AniState** %4, align 8
  %55 = getelementptr inbounds %struct.ar5212AniState, %struct.ar5212AniState* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  %56 = load i64, i64* %8, align 8
  %57 = load %struct.ar5212AniParams*, %struct.ar5212AniParams** %6, align 8
  %58 = getelementptr inbounds %struct.ar5212AniParams, %struct.ar5212AniParams* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = sub nsw i64 %56, %59
  store i64 %60, i64* %10, align 8
  %61 = load i64, i64* %10, align 8
  %62 = icmp slt i64 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %40
  %64 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %65 = load i32, i32* @HAL_DEBUG_ANI, align 4
  %66 = load i64, i64* %10, align 8
  %67 = load i64, i64* %8, align 8
  %68 = call i32 @HALDEBUG(%struct.ath_hal* %64, i32 %65, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i64 %66, i64 %67)
  %69 = load i64, i64* @AR_PHY_COUNTMAX, align 8
  store i64 %69, i64* %10, align 8
  br label %70

70:                                               ; preds = %63, %40
  %71 = load i64, i64* %10, align 8
  %72 = load %struct.ar5212AniState*, %struct.ar5212AniState** %4, align 8
  %73 = getelementptr inbounds %struct.ar5212AniState, %struct.ar5212AniState* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = sub nsw i64 %71, %74
  %76 = load %struct.ath_hal_5212*, %struct.ath_hal_5212** %5, align 8
  %77 = getelementptr inbounds %struct.ath_hal_5212, %struct.ath_hal_5212* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = sext i32 %79 to i64
  %81 = add nsw i64 %80, %75
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %78, align 4
  %83 = load i64, i64* %10, align 8
  %84 = load %struct.ar5212AniState*, %struct.ar5212AniState** %4, align 8
  %85 = getelementptr inbounds %struct.ar5212AniState, %struct.ar5212AniState* %84, i32 0, i32 1
  store i64 %83, i64* %85, align 8
  ret void
}

declare dso_local %struct.ath_hal_5212* @AH5212(%struct.ath_hal*) #1

declare dso_local i32 @ar5212UpdateMibCounters(%struct.ath_hal*, i32*) #1

declare dso_local i64 @OS_REG_READ(%struct.ath_hal*, i32) #1

declare dso_local i32 @HALDEBUG(%struct.ath_hal*, i32, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
