; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5212/extr_ar5212_misc.c_ar5212SetQuiet.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5212/extr_ar5212_misc.c_ar5212SetQuiet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }

@AR_QUIET2 = common dso_local global i32 0, align 4
@AR_QUIET2_QUIET_DUR_S = common dso_local global i32 0, align 4
@HAL_QUIET_ENABLE = common dso_local global i32 0, align 4
@AR_QUIET1 = common dso_local global i32 0, align 4
@HAL_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar5212SetQuiet(%struct.ath_hal* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.ath_hal*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %12 = load i32, i32* @AR_QUIET2, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @AR_QUIET2_QUIET_DUR_S, align 4
  %16 = shl i32 %14, %15
  %17 = or i32 %13, %16
  %18 = call i32 @OS_REG_WRITE(%struct.ath_hal* %11, i32 %12, i32 %17)
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* @HAL_QUIET_ENABLE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %5
  %24 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %25 = load i32, i32* @AR_QUIET1, align 4
  %26 = load i32, i32* %9, align 4
  %27 = or i32 %26, 65536
  %28 = call i32 @OS_REG_WRITE(%struct.ath_hal* %24, i32 %25, i32 %27)
  br label %34

29:                                               ; preds = %5
  %30 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %31 = load i32, i32* @AR_QUIET1, align 4
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @OS_REG_WRITE(%struct.ath_hal* %30, i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %29, %23
  %35 = load i32, i32* @HAL_OK, align 4
  ret i32 %35
}

declare dso_local i32 @OS_REG_WRITE(%struct.ath_hal*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
