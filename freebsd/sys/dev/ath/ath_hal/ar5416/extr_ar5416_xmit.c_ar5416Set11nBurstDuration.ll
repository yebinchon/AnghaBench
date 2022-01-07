; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5416/extr_ar5416_xmit.c_ar5416Set11nBurstDuration.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5416/extr_ar5416_xmit.c_ar5416Set11nBurstDuration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.ath_desc = type { i32 }
%struct.ar5416_desc = type { i32, i32, i32 }

@AR_XmitDataTries0 = common dso_local global i32 0, align 4
@AR_IsAggr = common dso_local global i32 0, align 4
@baDurationDelta = common dso_local global i64* null, align 8
@AR_BurstDur = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar5416Set11nBurstDuration(%struct.ath_hal* %0, %struct.ath_desc* %1, i64 %2) #0 {
  %4 = alloca %struct.ath_hal*, align 8
  %5 = alloca %struct.ath_desc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ar5416_desc*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %4, align 8
  store %struct.ath_desc* %1, %struct.ath_desc** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.ath_desc*, %struct.ath_desc** %5, align 8
  %11 = call %struct.ar5416_desc* @AR5416DESC(%struct.ath_desc* %10)
  store %struct.ar5416_desc* %11, %struct.ar5416_desc** %7, align 8
  store i64 0, i64* %8, align 8
  %12 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %13 = call i32 @AR_SREV_MERLIN_10_OR_LATER(%struct.ath_hal* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %34, label %15

15:                                               ; preds = %3
  %16 = load %struct.ar5416_desc*, %struct.ar5416_desc** %7, align 8
  %17 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @AR_XmitDataTries0, align 4
  %20 = call i32 @MS(i32 %18, i32 %19)
  store i32 %20, i32* %9, align 4
  %21 = load %struct.ar5416_desc*, %struct.ar5416_desc** %7, align 8
  %22 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @AR_IsAggr, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %15
  %28 = load i64*, i64** @baDurationDelta, align 8
  %29 = load i32, i32* %9, align 4
  %30 = call i64 @HT_RC_2_MCS(i32 %29)
  %31 = getelementptr inbounds i64, i64* %28, i64 %30
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %8, align 8
  br label %33

33:                                               ; preds = %27, %15
  br label %34

34:                                               ; preds = %33, %3
  %35 = load i32, i32* @AR_BurstDur, align 4
  %36 = xor i32 %35, -1
  %37 = load %struct.ar5416_desc*, %struct.ar5416_desc** %7, align 8
  %38 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, %36
  store i32 %40, i32* %38, align 4
  %41 = load i64, i64* %8, align 8
  %42 = load i64, i64* %6, align 8
  %43 = add nsw i64 %41, %42
  %44 = load i32, i32* @AR_BurstDur, align 4
  %45 = call i32 @SM(i64 %43, i32 %44)
  %46 = load %struct.ar5416_desc*, %struct.ar5416_desc** %7, align 8
  %47 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 4
  ret void
}

declare dso_local %struct.ar5416_desc* @AR5416DESC(%struct.ath_desc*) #1

declare dso_local i32 @AR_SREV_MERLIN_10_OR_LATER(%struct.ath_hal*) #1

declare dso_local i32 @MS(i32, i32) #1

declare dso_local i64 @HT_RC_2_MCS(i32) #1

declare dso_local i32 @SM(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
