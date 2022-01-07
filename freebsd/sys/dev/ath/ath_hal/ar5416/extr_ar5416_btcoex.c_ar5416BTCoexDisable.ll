; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5416/extr_ar5416_btcoex.c_ar5416BTCoexDisable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5416/extr_ar5416_btcoex.c_ar5416BTCoexDisable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.ath_hal_5416 = type { i64, i32, i32 }

@HAL_GPIO_OUTPUT_MUX_AS_OUTPUT = common dso_local global i32 0, align 4
@AH_TRUE = common dso_local global i64 0, align 8
@AR_QUIET1 = common dso_local global i32 0, align 4
@AR_QUIET1_QUIET_ACK_CTS_ENABLE = common dso_local global i32 0, align 4
@AR_MISC_MODE = common dso_local global i32 0, align 4
@AR_PCU_BT_ANT_PREVENT_RX = common dso_local global i32 0, align 4
@AR_BT_COEX_MODE = common dso_local global i32 0, align 4
@AR_BT_QUIET = common dso_local global i32 0, align 4
@AR_BT_MODE = common dso_local global i32 0, align 4
@AR_BT_COEX_WEIGHT = common dso_local global i32 0, align 4
@AR_BT_COEX_WEIGHT2 = common dso_local global i32 0, align 4
@AR_BT_COEX_MODE2 = common dso_local global i32 0, align 4
@AH_FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar5416BTCoexDisable(%struct.ath_hal* %0) #0 {
  %2 = alloca %struct.ath_hal*, align 8
  %3 = alloca %struct.ath_hal_5416*, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %2, align 8
  %4 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %5 = call %struct.ath_hal_5416* @AH5416(%struct.ath_hal* %4)
  store %struct.ath_hal_5416* %5, %struct.ath_hal_5416** %3, align 8
  %6 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %7 = load %struct.ath_hal_5416*, %struct.ath_hal_5416** %3, align 8
  %8 = getelementptr inbounds %struct.ath_hal_5416, %struct.ath_hal_5416* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @ar5416GpioSet(%struct.ath_hal* %6, i32 %9, i32 0)
  %11 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %12 = load %struct.ath_hal_5416*, %struct.ath_hal_5416** %3, align 8
  %13 = getelementptr inbounds %struct.ath_hal_5416, %struct.ath_hal_5416* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @HAL_GPIO_OUTPUT_MUX_AS_OUTPUT, align 4
  %16 = call i32 @ar5416GpioCfgOutput(%struct.ath_hal* %11, i32 %14, i32 %15)
  %17 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %18 = call i64 @AR_SREV_9271(%struct.ath_hal* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %1
  %21 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %22 = load %struct.ath_hal_5416*, %struct.ath_hal_5416** %3, align 8
  %23 = getelementptr inbounds %struct.ath_hal_5416, %struct.ath_hal_5416* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @ar5416GpioCfgInput(%struct.ath_hal* %21, i32 %24)
  br label %26

26:                                               ; preds = %20, %1
  %27 = load %struct.ath_hal_5416*, %struct.ath_hal_5416** %3, align 8
  %28 = getelementptr inbounds %struct.ath_hal_5416, %struct.ath_hal_5416* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @AH_TRUE, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %26
  %33 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %34 = load i32, i32* @AR_QUIET1, align 4
  %35 = load i32, i32* @AR_QUIET1_QUIET_ACK_CTS_ENABLE, align 4
  %36 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %33, i32 %34, i32 %35, i32 1)
  %37 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %38 = load i32, i32* @AR_MISC_MODE, align 4
  %39 = load i32, i32* @AR_PCU_BT_ANT_PREVENT_RX, align 4
  %40 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %37, i32 %38, i32 %39, i32 0)
  br label %41

41:                                               ; preds = %32, %26
  %42 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %43 = load i32, i32* @AR_BT_COEX_MODE, align 4
  %44 = load i32, i32* @AR_BT_QUIET, align 4
  %45 = load i32, i32* @AR_BT_MODE, align 4
  %46 = or i32 %44, %45
  %47 = call i32 @OS_REG_WRITE(%struct.ath_hal* %42, i32 %43, i32 %46)
  %48 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %49 = load i32, i32* @AR_BT_COEX_WEIGHT, align 4
  %50 = call i32 @OS_REG_WRITE(%struct.ath_hal* %48, i32 %49, i32 0)
  %51 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %52 = call i64 @AR_SREV_KIWI_10_OR_LATER(%struct.ath_hal* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %41
  %55 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %56 = load i32, i32* @AR_BT_COEX_WEIGHT2, align 4
  %57 = call i32 @OS_REG_WRITE(%struct.ath_hal* %55, i32 %56, i32 0)
  br label %58

58:                                               ; preds = %54, %41
  %59 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %60 = load i32, i32* @AR_BT_COEX_MODE2, align 4
  %61 = call i32 @OS_REG_WRITE(%struct.ath_hal* %59, i32 %60, i32 0)
  %62 = load i32, i32* @AH_FALSE, align 4
  %63 = load %struct.ath_hal_5416*, %struct.ath_hal_5416** %3, align 8
  %64 = getelementptr inbounds %struct.ath_hal_5416, %struct.ath_hal_5416* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 8
  ret void
}

declare dso_local %struct.ath_hal_5416* @AH5416(%struct.ath_hal*) #1

declare dso_local i32 @ar5416GpioSet(%struct.ath_hal*, i32, i32) #1

declare dso_local i32 @ar5416GpioCfgOutput(%struct.ath_hal*, i32, i32) #1

declare dso_local i64 @AR_SREV_9271(%struct.ath_hal*) #1

declare dso_local i32 @ar5416GpioCfgInput(%struct.ath_hal*, i32) #1

declare dso_local i32 @OS_REG_RMW_FIELD(%struct.ath_hal*, i32, i32, i32) #1

declare dso_local i32 @OS_REG_WRITE(%struct.ath_hal*, i32, i32) #1

declare dso_local i64 @AR_SREV_KIWI_10_OR_LATER(%struct.ath_hal*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
