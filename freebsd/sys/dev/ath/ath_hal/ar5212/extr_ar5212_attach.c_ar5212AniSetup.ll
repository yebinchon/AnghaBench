; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5212/extr_ar5212_attach.c_ar5212AniSetup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5212/extr_ar5212_attach.c_ar5212AniSetup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar5212AniParams = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ath_hal = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@ar5212AniSetup.aniparams = internal constant %struct.ar5212AniParams { i32 4, i32 2, i32 2, i32 500, i32 200, i32 200, i32 100, i32 40, i32 7, i32 100, i32 0, i32 2, i32 -78, i32 -64, i32 -14, i32 -55 }, align 4
@AR_SREV_VERSION_GRIFFIN = common dso_local global i64 0, align 8
@AH_TRUE = common dso_local global i32 0, align 4
@ar5212AniControl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hal*)* @ar5212AniSetup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar5212AniSetup(%struct.ath_hal* %0) #0 {
  %2 = alloca %struct.ath_hal*, align 8
  %3 = alloca %struct.ar5212AniParams, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %2, align 8
  %4 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %5 = call %struct.TYPE_3__* @AH_PRIVATE(%struct.ath_hal* %4)
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @AR_SREV_VERSION_GRIFFIN, align 8
  %9 = icmp slt i64 %7, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = call i32 @OS_MEMCPY(%struct.ar5212AniParams* %3, %struct.ar5212AniParams* @ar5212AniSetup.aniparams, i32 64)
  %12 = getelementptr inbounds %struct.ar5212AniParams, %struct.ar5212AniParams* %3, i32 0, i32 1
  store i32 7, i32* %12, align 4
  %13 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %14 = load i32, i32* @AH_TRUE, align 4
  %15 = call i32 @ar5212AniAttach(%struct.ath_hal* %13, %struct.ar5212AniParams* %3, %struct.ar5212AniParams* %3, i32 %14)
  br label %20

16:                                               ; preds = %1
  %17 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %18 = load i32, i32* @AH_TRUE, align 4
  %19 = call i32 @ar5212AniAttach(%struct.ath_hal* %17, %struct.ar5212AniParams* @ar5212AniSetup.aniparams, %struct.ar5212AniParams* @ar5212AniSetup.aniparams, i32 %18)
  br label %20

20:                                               ; preds = %16, %10
  %21 = load i32, i32* @ar5212AniControl, align 4
  %22 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %23 = call %struct.TYPE_4__* @AH5212(%struct.ath_hal* %22)
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store i32 %21, i32* %24, align 4
  ret void
}

declare dso_local %struct.TYPE_3__* @AH_PRIVATE(%struct.ath_hal*) #1

declare dso_local i32 @OS_MEMCPY(%struct.ar5212AniParams*, %struct.ar5212AniParams*, i32) #1

declare dso_local i32 @ar5212AniAttach(%struct.ath_hal*, %struct.ar5212AniParams*, %struct.ar5212AniParams*, i32) #1

declare dso_local %struct.TYPE_4__* @AH5212(%struct.ath_hal*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
