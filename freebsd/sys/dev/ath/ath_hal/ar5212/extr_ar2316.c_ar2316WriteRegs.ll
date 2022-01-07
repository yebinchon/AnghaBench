; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5212/extr_ar2316.c_ar2316WriteRegs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5212/extr_ar2316.c_ar2316WriteRegs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.ath_hal_5212 = type { i64 }

@ar5212Modes_2316 = common dso_local global i32 0, align 4
@ar5212Common_2316 = common dso_local global i32 0, align 4
@ar5212BB_RfGain_2316 = common dso_local global i32 0, align 4
@AH_FALSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hal*, i32, i32, i32)* @ar2316WriteRegs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar2316WriteRegs(%struct.ath_hal* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ath_hal*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ath_hal_5212*, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %11 = call %struct.ath_hal_5212* @AH5212(%struct.ath_hal* %10)
  store %struct.ath_hal_5212* %11, %struct.ath_hal_5212** %9, align 8
  %12 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %13 = load i32, i32* @ar5212Modes_2316, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %8, align 4
  %16 = call i32 @HAL_INI_WRITE_ARRAY(%struct.ath_hal* %12, i32 %13, i32 %14, i32 %15)
  %17 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %18 = load i32, i32* @ar5212Common_2316, align 4
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @HAL_INI_WRITE_ARRAY(%struct.ath_hal* %17, i32 %18, i32 1, i32 %19)
  %21 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %22 = load i32, i32* @ar5212BB_RfGain_2316, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @HAL_INI_WRITE_ARRAY(%struct.ath_hal* %21, i32 %22, i32 %23, i32 %24)
  %26 = load %struct.ath_hal_5212*, %struct.ath_hal_5212** %9, align 8
  %27 = getelementptr inbounds %struct.ath_hal_5212, %struct.ath_hal_5212* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %4
  %31 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %32 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %33 = call i32 @OS_REG_READ(%struct.ath_hal* %32, i32 41816)
  %34 = and i32 %33, -3
  %35 = call i32 @OS_REG_WRITE(%struct.ath_hal* %31, i32 41816, i32 %34)
  br label %40

36:                                               ; preds = %4
  %37 = load i64, i64* @AH_FALSE, align 8
  %38 = load %struct.ath_hal_5212*, %struct.ath_hal_5212** %9, align 8
  %39 = getelementptr inbounds %struct.ath_hal_5212, %struct.ath_hal_5212* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  br label %40

40:                                               ; preds = %36, %30
  ret void
}

declare dso_local %struct.ath_hal_5212* @AH5212(%struct.ath_hal*) #1

declare dso_local i32 @HAL_INI_WRITE_ARRAY(%struct.ath_hal*, i32, i32, i32) #1

declare dso_local i32 @OS_REG_WRITE(%struct.ath_hal*, i32, i32) #1

declare dso_local i32 @OS_REG_READ(%struct.ath_hal*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
