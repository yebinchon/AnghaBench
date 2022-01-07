; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5212/extr_ar5212_ani.c_ar5212AniSetParams.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5212/extr_ar5212_ani.c_ar5212AniSetParams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.ar5212AniParams = type { i32 }
%struct.ath_hal_5212 = type { i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@HAL_ANI_ENA = common dso_local global i32 0, align 4
@HAL_ANI_MODE = common dso_local global i32 0, align 4
@AH_FALSE = common dso_local global i32 0, align 4
@AH_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar5212AniSetParams(%struct.ath_hal* %0, %struct.ar5212AniParams* %1, %struct.ar5212AniParams* %2) #0 {
  %4 = alloca %struct.ath_hal*, align 8
  %5 = alloca %struct.ar5212AniParams*, align 8
  %6 = alloca %struct.ar5212AniParams*, align 8
  %7 = alloca %struct.ath_hal_5212*, align 8
  %8 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %4, align 8
  store %struct.ar5212AniParams* %1, %struct.ar5212AniParams** %5, align 8
  store %struct.ar5212AniParams* %2, %struct.ar5212AniParams** %6, align 8
  %9 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %10 = call %struct.ath_hal_5212* @AH5212(%struct.ath_hal* %9)
  store %struct.ath_hal_5212* %10, %struct.ath_hal_5212** %7, align 8
  %11 = load %struct.ath_hal_5212*, %struct.ath_hal_5212** %7, align 8
  %12 = getelementptr inbounds %struct.ath_hal_5212, %struct.ath_hal_5212* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @HAL_ANI_ENA, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  %17 = zext i1 %16 to i32
  store i32 %17, i32* %8, align 4
  %18 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %19 = load i32, i32* @HAL_ANI_MODE, align 4
  %20 = load i32, i32* @AH_FALSE, align 4
  %21 = call i32 @ar5212AniControl(%struct.ath_hal* %18, i32 %19, i32 %20)
  %22 = load %struct.ath_hal_5212*, %struct.ath_hal_5212** %7, align 8
  %23 = getelementptr inbounds %struct.ath_hal_5212, %struct.ath_hal_5212* %22, i32 0, i32 3
  %24 = load %struct.ar5212AniParams*, %struct.ar5212AniParams** %5, align 8
  %25 = call i32 @OS_MEMCPY(i32* %23, %struct.ar5212AniParams* %24, i32 4)
  %26 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %27 = load %struct.ath_hal_5212*, %struct.ath_hal_5212** %7, align 8
  %28 = getelementptr inbounds %struct.ath_hal_5212, %struct.ath_hal_5212* %27, i32 0, i32 3
  %29 = call i32 @setPhyErrBase(%struct.ath_hal* %26, i32* %28)
  %30 = load %struct.ath_hal_5212*, %struct.ath_hal_5212** %7, align 8
  %31 = getelementptr inbounds %struct.ath_hal_5212, %struct.ath_hal_5212* %30, i32 0, i32 2
  %32 = load %struct.ar5212AniParams*, %struct.ar5212AniParams** %6, align 8
  %33 = call i32 @OS_MEMCPY(i32* %31, %struct.ar5212AniParams* %32, i32 4)
  %34 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %35 = load %struct.ath_hal_5212*, %struct.ath_hal_5212** %7, align 8
  %36 = getelementptr inbounds %struct.ath_hal_5212, %struct.ath_hal_5212* %35, i32 0, i32 2
  %37 = call i32 @setPhyErrBase(%struct.ath_hal* %34, i32* %36)
  %38 = load %struct.ath_hal_5212*, %struct.ath_hal_5212** %7, align 8
  %39 = getelementptr inbounds %struct.ath_hal_5212, %struct.ath_hal_5212* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @OS_MEMZERO(i32 %40, i32 4)
  %42 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %43 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %44 = call %struct.TYPE_2__* @AH_PRIVATE(%struct.ath_hal* %43)
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %48 = call %struct.TYPE_2__* @AH_PRIVATE(%struct.ath_hal* %47)
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @AH_FALSE, align 4
  %52 = call i32 @ar5212AniReset(%struct.ath_hal* %42, i32 %46, i32 %50, i32 %51)
  %53 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %54 = load i32, i32* @HAL_ANI_MODE, align 4
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @ar5212AniControl(%struct.ath_hal* %53, i32 %54, i32 %55)
  %57 = load i32, i32* @AH_TRUE, align 4
  ret i32 %57
}

declare dso_local %struct.ath_hal_5212* @AH5212(%struct.ath_hal*) #1

declare dso_local i32 @ar5212AniControl(%struct.ath_hal*, i32, i32) #1

declare dso_local i32 @OS_MEMCPY(i32*, %struct.ar5212AniParams*, i32) #1

declare dso_local i32 @setPhyErrBase(%struct.ath_hal*, i32*) #1

declare dso_local i32 @OS_MEMZERO(i32, i32) #1

declare dso_local i32 @ar5212AniReset(%struct.ath_hal*, i32, i32, i32) #1

declare dso_local %struct.TYPE_2__* @AH_PRIVATE(%struct.ath_hal*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
