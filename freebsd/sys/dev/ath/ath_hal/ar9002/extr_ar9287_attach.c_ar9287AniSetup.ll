; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar9002/extr_ar9287_attach.c_ar9287AniSetup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar9002/extr_ar9287_attach.c_ar9287AniSetup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar5212AniParams = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ath_hal = type { i32 }
%struct.TYPE_2__ = type { i32 }

@ar9287AniSetup.aniparams = internal constant %struct.ar5212AniParams { i32 4, i32 7, i32 2, i32 500, i32 200, i32 200, i32 100, i32 40, i32 7, i32 100, i32 0, i32 2, i32 -78, i32 -64, i32 -14, i32 -55 }, align 4
@HAL_ANI_NOISE_IMMUNITY_LEVEL = common dso_local global i32 0, align 4
@AH_TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hal*)* @ar9287AniSetup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar9287AniSetup(%struct.ath_hal* %0) #0 {
  %2 = alloca %struct.ath_hal*, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %2, align 8
  %3 = load i32, i32* @HAL_ANI_NOISE_IMMUNITY_LEVEL, align 4
  %4 = xor i32 %3, -1
  %5 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %6 = call %struct.TYPE_2__* @AH5416(%struct.ath_hal* %5)
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = and i32 %8, %4
  store i32 %9, i32* %7, align 4
  %10 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %11 = load i32, i32* @AH_TRUE, align 4
  %12 = call i32 @ar5416AniAttach(%struct.ath_hal* %10, %struct.ar5212AniParams* @ar9287AniSetup.aniparams, %struct.ar5212AniParams* @ar9287AniSetup.aniparams, i32 %11)
  ret void
}

declare dso_local %struct.TYPE_2__* @AH5416(%struct.ath_hal*) #1

declare dso_local i32 @ar5416AniAttach(%struct.ath_hal*, %struct.ar5212AniParams*, %struct.ar5212AniParams*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
