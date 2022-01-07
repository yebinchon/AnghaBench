; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5212/extr_ar5212_misc.c_ar5212Use32KHzclock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5212/extr_ar5212_misc.c_ar5212Use32KHzclock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.ath_hal_5212 = type { i64 }

@HAL_M_HOSTAP = common dso_local global i64 0, align 8
@AR_EEP_32KHZCRYSTAL = common dso_local global i32 0, align 4
@USE_32KHZ = common dso_local global i64 0, align 8
@AUTO_32KHZ = common dso_local global i64 0, align 8
@AH_FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar5212Use32KHzclock(%struct.ath_hal* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath_hal*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ath_hal_5212*, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %5, align 8
  %8 = load i64, i64* @HAL_M_HOSTAP, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %34

10:                                               ; preds = %2
  %11 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %12 = call %struct.ath_hal_5212* @AH5212(%struct.ath_hal* %11)
  store %struct.ath_hal_5212* %12, %struct.ath_hal_5212** %6, align 8
  %13 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %14 = load i32, i32* @AR_EEP_32KHZCRYSTAL, align 4
  %15 = call i64 @ath_hal_eepromGetFlag(%struct.ath_hal* %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %31

17:                                               ; preds = %10
  %18 = load %struct.ath_hal_5212*, %struct.ath_hal_5212** %6, align 8
  %19 = getelementptr inbounds %struct.ath_hal_5212, %struct.ath_hal_5212* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @USE_32KHZ, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %29, label %23

23:                                               ; preds = %17
  %24 = load %struct.ath_hal_5212*, %struct.ath_hal_5212** %6, align 8
  %25 = getelementptr inbounds %struct.ath_hal_5212, %struct.ath_hal_5212* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @AUTO_32KHZ, align 8
  %28 = icmp eq i64 %26, %27
  br label %29

29:                                               ; preds = %23, %17
  %30 = phi i1 [ true, %17 ], [ %28, %23 ]
  br label %31

31:                                               ; preds = %29, %10
  %32 = phi i1 [ false, %10 ], [ %30, %29 ]
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %3, align 4
  br label %36

34:                                               ; preds = %2
  %35 = load i32, i32* @AH_FALSE, align 4
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %34, %31
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local %struct.ath_hal_5212* @AH5212(%struct.ath_hal*) #1

declare dso_local i64 @ath_hal_eepromGetFlag(%struct.ath_hal*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
