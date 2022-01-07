; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5416/extr_ar5416_misc.c_ar5416SetQuiet.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5416/extr_ar5416_misc.c_ar5416SetQuiet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@HAL_QUIET_ENABLE = common dso_local global i32 0, align 4
@HAL_QUIET_ADD_CURRENT_TSF = common dso_local global i32 0, align 4
@AR_TSF_L32 = common dso_local global i32 0, align 4
@HAL_QUIET_ADD_SWBA_RESP_TIME = common dso_local global i32 0, align 4
@AR_QUIET1 = common dso_local global i32 0, align 4
@AR_QUIET1_QUIET_ACK_CTS_ENABLE = common dso_local global i32 0, align 4
@AR_QUIET2 = common dso_local global i32 0, align 4
@AR_QUIET2_QUIET_DUR = common dso_local global i32 0, align 4
@AR_QUIET_PERIOD = common dso_local global i32 0, align 4
@AR_NEXT_QUIET = common dso_local global i32 0, align 4
@AR_TIMER_MODE = common dso_local global i32 0, align 4
@AR_TIMER_MODE_QUIET = common dso_local global i32 0, align 4
@HAL_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar5416SetQuiet(%struct.ath_hal* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.ath_hal*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @TU_TO_USEC(i32 %13)
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %9, align 4
  %16 = call i32 @TU_TO_USEC(i32 %15)
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* @HAL_QUIET_ENABLE, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %74

21:                                               ; preds = %5
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* @HAL_QUIET_ADD_CURRENT_TSF, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %24, %21
  %30 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %31 = load i32, i32* @AR_TSF_L32, align 4
  %32 = call i64 @OS_REG_READ(%struct.ath_hal* %30, i32 %31)
  %33 = load i32, i32* %12, align 4
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %34, %32
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %12, align 4
  br label %37

37:                                               ; preds = %29, %24
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* @HAL_QUIET_ADD_SWBA_RESP_TIME, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %37
  %43 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %44 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i32, i32* %12, align 4
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %48, %46
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %12, align 4
  br label %51

51:                                               ; preds = %42, %37
  %52 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %53 = load i32, i32* @AR_QUIET1, align 4
  %54 = load i32, i32* @AR_QUIET1_QUIET_ACK_CTS_ENABLE, align 4
  %55 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %52, i32 %53, i32 %54, i32 1)
  %56 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %57 = load i32, i32* @AR_QUIET2, align 4
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* @AR_QUIET2_QUIET_DUR, align 4
  %60 = call i32 @SM(i32 %58, i32 %59)
  %61 = call i32 @OS_REG_WRITE(%struct.ath_hal* %56, i32 %57, i32 %60)
  %62 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %63 = load i32, i32* @AR_QUIET_PERIOD, align 4
  %64 = load i32, i32* %11, align 4
  %65 = call i32 @OS_REG_WRITE(%struct.ath_hal* %62, i32 %63, i32 %64)
  %66 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %67 = load i32, i32* @AR_NEXT_QUIET, align 4
  %68 = load i32, i32* %12, align 4
  %69 = call i32 @OS_REG_WRITE(%struct.ath_hal* %66, i32 %67, i32 %68)
  %70 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %71 = load i32, i32* @AR_TIMER_MODE, align 4
  %72 = load i32, i32* @AR_TIMER_MODE_QUIET, align 4
  %73 = call i32 @OS_REG_SET_BIT(%struct.ath_hal* %70, i32 %71, i32 %72)
  br label %79

74:                                               ; preds = %5
  %75 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %76 = load i32, i32* @AR_TIMER_MODE, align 4
  %77 = load i32, i32* @AR_TIMER_MODE_QUIET, align 4
  %78 = call i32 @OS_REG_CLR_BIT(%struct.ath_hal* %75, i32 %76, i32 %77)
  br label %79

79:                                               ; preds = %74, %51
  %80 = load i32, i32* @HAL_OK, align 4
  ret i32 %80
}

declare dso_local i32 @TU_TO_USEC(i32) #1

declare dso_local i64 @OS_REG_READ(%struct.ath_hal*, i32) #1

declare dso_local i32 @OS_REG_RMW_FIELD(%struct.ath_hal*, i32, i32, i32) #1

declare dso_local i32 @OS_REG_WRITE(%struct.ath_hal*, i32, i32) #1

declare dso_local i32 @SM(i32, i32) #1

declare dso_local i32 @OS_REG_SET_BIT(%struct.ath_hal*, i32, i32) #1

declare dso_local i32 @OS_REG_CLR_BIT(%struct.ath_hal*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
