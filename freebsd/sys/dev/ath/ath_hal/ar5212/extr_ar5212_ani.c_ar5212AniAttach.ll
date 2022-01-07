; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5212/extr_ar5212_ani.c_ar5212AniAttach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5212/extr_ar5212_ani.c_ar5212AniAttach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar5212AniParams = type { i32 }
%struct.ath_hal = type { i32 }
%struct.ath_hal_5212 = type { i32, i32, i64, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@AH_NULL = common dso_local global %struct.ar5212AniParams* null, align 8
@HAL_ANI_ENA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar5212AniAttach(%struct.ath_hal* %0, %struct.ar5212AniParams* %1, %struct.ar5212AniParams* %2, i64 %3) #0 {
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
  %12 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %13 = call %struct.TYPE_4__* @AH_PRIVATE(%struct.ath_hal* %12)
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.ath_hal_5212*, %struct.ath_hal_5212** %9, align 8
  %18 = getelementptr inbounds %struct.ath_hal_5212, %struct.ath_hal_5212* %17, i32 0, i32 2
  store i64 %16, i64* %18, align 8
  %19 = load %struct.ar5212AniParams*, %struct.ar5212AniParams** %6, align 8
  %20 = load %struct.ar5212AniParams*, %struct.ar5212AniParams** @AH_NULL, align 8
  %21 = icmp ne %struct.ar5212AniParams* %19, %20
  br i1 %21, label %22, label %31

22:                                               ; preds = %4
  %23 = load %struct.ath_hal_5212*, %struct.ath_hal_5212** %9, align 8
  %24 = getelementptr inbounds %struct.ath_hal_5212, %struct.ath_hal_5212* %23, i32 0, i32 1
  %25 = load %struct.ar5212AniParams*, %struct.ar5212AniParams** %6, align 8
  %26 = call i32 @OS_MEMCPY(i32* %24, %struct.ar5212AniParams* %25, i32 4)
  %27 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %28 = load %struct.ath_hal_5212*, %struct.ath_hal_5212** %9, align 8
  %29 = getelementptr inbounds %struct.ath_hal_5212, %struct.ath_hal_5212* %28, i32 0, i32 1
  %30 = call i32 @setPhyErrBase(%struct.ath_hal* %27, i32* %29)
  br label %31

31:                                               ; preds = %22, %4
  %32 = load %struct.ar5212AniParams*, %struct.ar5212AniParams** %7, align 8
  %33 = load %struct.ar5212AniParams*, %struct.ar5212AniParams** @AH_NULL, align 8
  %34 = icmp ne %struct.ar5212AniParams* %32, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %31
  %36 = load %struct.ath_hal_5212*, %struct.ath_hal_5212** %9, align 8
  %37 = getelementptr inbounds %struct.ath_hal_5212, %struct.ath_hal_5212* %36, i32 0, i32 4
  %38 = load %struct.ar5212AniParams*, %struct.ar5212AniParams** %7, align 8
  %39 = call i32 @OS_MEMCPY(i32* %37, %struct.ar5212AniParams* %38, i32 4)
  %40 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %41 = load %struct.ath_hal_5212*, %struct.ath_hal_5212** %9, align 8
  %42 = getelementptr inbounds %struct.ath_hal_5212, %struct.ath_hal_5212* %41, i32 0, i32 4
  %43 = call i32 @setPhyErrBase(%struct.ath_hal* %40, i32* %42)
  br label %44

44:                                               ; preds = %35, %31
  %45 = load %struct.ath_hal_5212*, %struct.ath_hal_5212** %9, align 8
  %46 = getelementptr inbounds %struct.ath_hal_5212, %struct.ath_hal_5212* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @OS_MEMZERO(i32 %47, i32 4)
  %49 = load %struct.ath_hal_5212*, %struct.ath_hal_5212** %9, align 8
  %50 = getelementptr inbounds %struct.ath_hal_5212, %struct.ath_hal_5212* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %44
  %54 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %55 = load %struct.ath_hal_5212*, %struct.ath_hal_5212** %9, align 8
  %56 = getelementptr inbounds %struct.ath_hal_5212, %struct.ath_hal_5212* %55, i32 0, i32 1
  %57 = call i32 @enableAniMIBCounters(%struct.ath_hal* %54, i32* %56)
  br label %58

58:                                               ; preds = %53, %44
  %59 = load i64, i64* %8, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %78

61:                                               ; preds = %58
  %62 = load %struct.ar5212AniParams*, %struct.ar5212AniParams** %6, align 8
  %63 = load %struct.ar5212AniParams*, %struct.ar5212AniParams** @AH_NULL, align 8
  %64 = icmp ne %struct.ar5212AniParams* %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %61
  %66 = load %struct.ar5212AniParams*, %struct.ar5212AniParams** %7, align 8
  %67 = load %struct.ar5212AniParams*, %struct.ar5212AniParams** @AH_NULL, align 8
  %68 = icmp ne %struct.ar5212AniParams* %66, %67
  br label %69

69:                                               ; preds = %65, %61
  %70 = phi i1 [ false, %61 ], [ %68, %65 ]
  %71 = zext i1 %70 to i32
  %72 = call i32 @HALASSERT(i32 %71)
  %73 = load i32, i32* @HAL_ANI_ENA, align 4
  %74 = load %struct.ath_hal_5212*, %struct.ath_hal_5212** %9, align 8
  %75 = getelementptr inbounds %struct.ath_hal_5212, %struct.ath_hal_5212* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 8
  br label %85

78:                                               ; preds = %58
  %79 = load i32, i32* @HAL_ANI_ENA, align 4
  %80 = xor i32 %79, -1
  %81 = load %struct.ath_hal_5212*, %struct.ath_hal_5212** %9, align 8
  %82 = getelementptr inbounds %struct.ath_hal_5212, %struct.ath_hal_5212* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = and i32 %83, %80
  store i32 %84, i32* %82, align 8
  br label %85

85:                                               ; preds = %78, %69
  ret void
}

declare dso_local %struct.ath_hal_5212* @AH5212(%struct.ath_hal*) #1

declare dso_local %struct.TYPE_4__* @AH_PRIVATE(%struct.ath_hal*) #1

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
