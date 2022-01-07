; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5212/extr_ar5212_ani.c_setPhyErrBase.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5212/extr_ar5212_ani.c_setPhyErrBase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.ar5212AniParams = type { i64, i64, i64, i64 }

@AR_PHY_COUNTMAX = common dso_local global i64 0, align 8
@HAL_DEBUG_ANY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"OFDM Trigger %d is too high for hw counters, using max\0A\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"CCK Trigger %d is too high for hw counters, using max\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hal*, %struct.ar5212AniParams*)* @setPhyErrBase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setPhyErrBase(%struct.ath_hal* %0, %struct.ar5212AniParams* %1) #0 {
  %3 = alloca %struct.ath_hal*, align 8
  %4 = alloca %struct.ar5212AniParams*, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %3, align 8
  store %struct.ar5212AniParams* %1, %struct.ar5212AniParams** %4, align 8
  %5 = load %struct.ar5212AniParams*, %struct.ar5212AniParams** %4, align 8
  %6 = getelementptr inbounds %struct.ar5212AniParams, %struct.ar5212AniParams* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @AR_PHY_COUNTMAX, align 8
  %9 = icmp sge i64 %7, %8
  br i1 %9, label %10, label %19

10:                                               ; preds = %2
  %11 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %12 = load i32, i32* @HAL_DEBUG_ANY, align 4
  %13 = load %struct.ar5212AniParams*, %struct.ar5212AniParams** %4, align 8
  %14 = getelementptr inbounds %struct.ar5212AniParams, %struct.ar5212AniParams* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @HALDEBUG(%struct.ath_hal* %11, i32 %12, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i64 %15)
  %17 = load %struct.ar5212AniParams*, %struct.ar5212AniParams** %4, align 8
  %18 = getelementptr inbounds %struct.ar5212AniParams, %struct.ar5212AniParams* %17, i32 0, i32 3
  store i64 0, i64* %18, align 8
  br label %27

19:                                               ; preds = %2
  %20 = load i64, i64* @AR_PHY_COUNTMAX, align 8
  %21 = load %struct.ar5212AniParams*, %struct.ar5212AniParams** %4, align 8
  %22 = getelementptr inbounds %struct.ar5212AniParams, %struct.ar5212AniParams* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = sub nsw i64 %20, %23
  %25 = load %struct.ar5212AniParams*, %struct.ar5212AniParams** %4, align 8
  %26 = getelementptr inbounds %struct.ar5212AniParams, %struct.ar5212AniParams* %25, i32 0, i32 3
  store i64 %24, i64* %26, align 8
  br label %27

27:                                               ; preds = %19, %10
  %28 = load %struct.ar5212AniParams*, %struct.ar5212AniParams** %4, align 8
  %29 = getelementptr inbounds %struct.ar5212AniParams, %struct.ar5212AniParams* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @AR_PHY_COUNTMAX, align 8
  %32 = icmp sge i64 %30, %31
  br i1 %32, label %33, label %42

33:                                               ; preds = %27
  %34 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %35 = load i32, i32* @HAL_DEBUG_ANY, align 4
  %36 = load %struct.ar5212AniParams*, %struct.ar5212AniParams** %4, align 8
  %37 = getelementptr inbounds %struct.ar5212AniParams, %struct.ar5212AniParams* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @HALDEBUG(%struct.ath_hal* %34, i32 %35, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i64 %38)
  %40 = load %struct.ar5212AniParams*, %struct.ar5212AniParams** %4, align 8
  %41 = getelementptr inbounds %struct.ar5212AniParams, %struct.ar5212AniParams* %40, i32 0, i32 2
  store i64 0, i64* %41, align 8
  br label %50

42:                                               ; preds = %27
  %43 = load i64, i64* @AR_PHY_COUNTMAX, align 8
  %44 = load %struct.ar5212AniParams*, %struct.ar5212AniParams** %4, align 8
  %45 = getelementptr inbounds %struct.ar5212AniParams, %struct.ar5212AniParams* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = sub nsw i64 %43, %46
  %48 = load %struct.ar5212AniParams*, %struct.ar5212AniParams** %4, align 8
  %49 = getelementptr inbounds %struct.ar5212AniParams, %struct.ar5212AniParams* %48, i32 0, i32 2
  store i64 %47, i64* %49, align 8
  br label %50

50:                                               ; preds = %42, %33
  ret void
}

declare dso_local i32 @HALDEBUG(%struct.ath_hal*, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
