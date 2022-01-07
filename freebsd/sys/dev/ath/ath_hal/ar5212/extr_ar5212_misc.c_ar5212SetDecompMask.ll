; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5212/extr_ar5212_misc.c_ar5212SetDecompMask.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5212/extr_ar5212_misc.c_ar5212SetDecompMask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.ath_hal_5212 = type { i32* }

@HAL_DECOMP_MASK_SIZE = common dso_local global i64 0, align 8
@AH_FALSE = common dso_local global i32 0, align 4
@AR_DCM_A = common dso_local global i32 0, align 4
@AR_DCM_D = common dso_local global i32 0, align 4
@AR_DCM_D_EN = common dso_local global i64 0, align 8
@AH_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar5212SetDecompMask(%struct.ath_hal* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath_hal*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ath_hal_5212*, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %10 = call %struct.ath_hal_5212* @AH5212(%struct.ath_hal* %9)
  store %struct.ath_hal_5212* %10, %struct.ath_hal_5212** %8, align 8
  %11 = load i64, i64* %6, align 8
  %12 = load i64, i64* @HAL_DECOMP_MASK_SIZE, align 8
  %13 = icmp uge i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* @AH_FALSE, align 4
  store i32 %15, i32* %4, align 4
  br label %38

16:                                               ; preds = %3
  %17 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %18 = load i32, i32* @AR_DCM_A, align 4
  %19 = load i64, i64* %6, align 8
  %20 = call i32 @OS_REG_WRITE(%struct.ath_hal* %17, i32 %18, i64 %19)
  %21 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %22 = load i32, i32* @AR_DCM_D, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %16
  %26 = load i64, i64* @AR_DCM_D_EN, align 8
  br label %28

27:                                               ; preds = %16
  br label %28

28:                                               ; preds = %27, %25
  %29 = phi i64 [ %26, %25 ], [ 0, %27 ]
  %30 = call i32 @OS_REG_WRITE(%struct.ath_hal* %21, i32 %22, i64 %29)
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.ath_hal_5212*, %struct.ath_hal_5212** %8, align 8
  %33 = getelementptr inbounds %struct.ath_hal_5212, %struct.ath_hal_5212* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i64, i64* %6, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  store i32 %31, i32* %36, align 4
  %37 = load i32, i32* @AH_TRUE, align 4
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %28, %14
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local %struct.ath_hal_5212* @AH5212(%struct.ath_hal*) #1

declare dso_local i32 @OS_REG_WRITE(%struct.ath_hal*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
