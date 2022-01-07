; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5312/extr_ar5312_attach.c_ar5312AniSetup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5312/extr_ar5312_attach.c_ar5312AniSetup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar5212AniParams = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ath_hal = type { i32 }

@ar5312AniSetup.aniparams = internal constant %struct.ar5212AniParams { i32 4, i32 2, i32 2, i32 500, i32 200, i32 200, i32 100, i32 40, i32 7, i32 100, i32 0, i32 2, i32 -72, i32 -56, i32 -18, i32 -41 }, align 4
@AH_TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hal*)* @ar5312AniSetup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar5312AniSetup(%struct.ath_hal* %0) #0 {
  %2 = alloca %struct.ath_hal*, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %2, align 8
  %3 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %4 = load i32, i32* @AH_TRUE, align 4
  %5 = call i32 @ar5212AniAttach(%struct.ath_hal* %3, %struct.ar5212AniParams* @ar5312AniSetup.aniparams, %struct.ar5212AniParams* @ar5312AniSetup.aniparams, i32 %4)
  ret void
}

declare dso_local i32 @ar5212AniAttach(%struct.ath_hal*, %struct.ar5212AniParams*, %struct.ar5212AniParams*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
