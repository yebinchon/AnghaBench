; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5416/extr_ar5416_ani.c_ar5416AniAttach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5416/extr_ar5416_ani.c_ar5416AniAttach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar5212AniParams = type { i32 }
%struct.ath_hal = type { i32 }
%struct.ath_hal_5212 = type { i32, i32, i32, i32 }

@AH_NULL = common dso_local global %struct.ar5212AniParams* null, align 8
@HAL_ANI_ENA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar5416AniAttach(%struct.ath_hal* %0, %struct.ar5212AniParams* %1, %struct.ar5212AniParams* %2, i64 %3) #0 {
  %5 = alloca %struct.ath_hal*, align 8
  %6 = alloca %struct.ar5212AniParams*, align 8
  %7 = alloca %struct.ar5212AniParams*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ath_hal_5212*, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %5, align 8
  store %struct.ar5212AniParams* %1, %struct.ar5212AniParams** %6, align 8
  store %struct.ar5212AniParams* %2, %struct.ar5212AniParams** %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %11 = call %struct.ath_hal_5212* @AH5212(%struct.ath_hal* %10)
  store %struct.ath_hal_5212* %11, %struct.ath_hal_5212** %9, align 8
  %12 = load %struct.ar5212AniParams*, %struct.ar5212AniParams** %6, align 8
  %13 = load %struct.ar5212AniParams*, %struct.ar5212AniParams** @AH_NULL, align 8
  %14 = icmp ne %struct.ar5212AniParams* %12, %13
  br i1 %14, label %15, label %24

15:                                               ; preds = %4
  %16 = load %struct.ath_hal_5212*, %struct.ath_hal_5212** %9, align 8
  %17 = getelementptr inbounds %struct.ath_hal_5212, %struct.ath_hal_5212* %16, i32 0, i32 1
  %18 = load %struct.ar5212AniParams*, %struct.ar5212AniParams** %6, align 8
  %19 = call i32 @OS_MEMCPY(i32* %17, %struct.ar5212AniParams* %18, i32 4)
  %20 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %21 = load %struct.ath_hal_5212*, %struct.ath_hal_5212** %9, align 8
  %22 = getelementptr inbounds %struct.ath_hal_5212, %struct.ath_hal_5212* %21, i32 0, i32 1
  %23 = call i32 @setPhyErrBase(%struct.ath_hal* %20, i32* %22)
  br label %24

24:                                               ; preds = %15, %4
  %25 = load %struct.ar5212AniParams*, %struct.ar5212AniParams** %7, align 8
  %26 = load %struct.ar5212AniParams*, %struct.ar5212AniParams** @AH_NULL, align 8
  %27 = icmp ne %struct.ar5212AniParams* %25, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %24
  %29 = load %struct.ath_hal_5212*, %struct.ath_hal_5212** %9, align 8
  %30 = getelementptr inbounds %struct.ath_hal_5212, %struct.ath_hal_5212* %29, i32 0, i32 3
  %31 = load %struct.ar5212AniParams*, %struct.ar5212AniParams** %7, align 8
  %32 = call i32 @OS_MEMCPY(i32* %30, %struct.ar5212AniParams* %31, i32 4)
  %33 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %34 = load %struct.ath_hal_5212*, %struct.ath_hal_5212** %9, align 8
  %35 = getelementptr inbounds %struct.ath_hal_5212, %struct.ath_hal_5212* %34, i32 0, i32 3
  %36 = call i32 @setPhyErrBase(%struct.ath_hal* %33, i32* %35)
  br label %37

37:                                               ; preds = %28, %24
  %38 = load %struct.ath_hal_5212*, %struct.ath_hal_5212** %9, align 8
  %39 = getelementptr inbounds %struct.ath_hal_5212, %struct.ath_hal_5212* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @OS_MEMZERO(i32 %40, i32 4)
  %42 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %43 = load %struct.ath_hal_5212*, %struct.ath_hal_5212** %9, align 8
  %44 = getelementptr inbounds %struct.ath_hal_5212, %struct.ath_hal_5212* %43, i32 0, i32 1
  %45 = call i32 @enableAniMIBCounters(%struct.ath_hal* %42, i32* %44)
  %46 = load i64, i64* %8, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %65

48:                                               ; preds = %37
  %49 = load %struct.ar5212AniParams*, %struct.ar5212AniParams** %6, align 8
  %50 = load %struct.ar5212AniParams*, %struct.ar5212AniParams** @AH_NULL, align 8
  %51 = icmp ne %struct.ar5212AniParams* %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = load %struct.ar5212AniParams*, %struct.ar5212AniParams** %7, align 8
  %54 = load %struct.ar5212AniParams*, %struct.ar5212AniParams** @AH_NULL, align 8
  %55 = icmp ne %struct.ar5212AniParams* %53, %54
  br label %56

56:                                               ; preds = %52, %48
  %57 = phi i1 [ false, %48 ], [ %55, %52 ]
  %58 = zext i1 %57 to i32
  %59 = call i32 @HALASSERT(i32 %58)
  %60 = load i32, i32* @HAL_ANI_ENA, align 4
  %61 = load %struct.ath_hal_5212*, %struct.ath_hal_5212** %9, align 8
  %62 = getelementptr inbounds %struct.ath_hal_5212, %struct.ath_hal_5212* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 4
  br label %72

65:                                               ; preds = %37
  %66 = load i32, i32* @HAL_ANI_ENA, align 4
  %67 = xor i32 %66, -1
  %68 = load %struct.ath_hal_5212*, %struct.ath_hal_5212** %9, align 8
  %69 = getelementptr inbounds %struct.ath_hal_5212, %struct.ath_hal_5212* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %70, %67
  store i32 %71, i32* %69, align 4
  br label %72

72:                                               ; preds = %65, %56
  ret void
}

declare dso_local %struct.ath_hal_5212* @AH5212(%struct.ath_hal*) #1

declare dso_local i32 @OS_MEMCPY(i32*, %struct.ar5212AniParams*, i32) #1

declare dso_local i32 @setPhyErrBase(%struct.ath_hal*, i32*) #1

declare dso_local i32 @OS_MEMZERO(i32, i32) #1

declare dso_local i32 @enableAniMIBCounters(%struct.ath_hal*, i32*) #1

declare dso_local i32 @HALASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
