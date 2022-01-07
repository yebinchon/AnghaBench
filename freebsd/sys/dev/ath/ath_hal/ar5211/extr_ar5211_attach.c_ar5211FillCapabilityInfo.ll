; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5211/extr_ar5211_attach.c_ar5211FillCapabilityInfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5211/extr_ar5211_attach.c_ar5211FillCapabilityInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.ath_hal_private = type { i8*, i8*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i8*, i32 }

@AR_EEP_AMODE = common dso_local global i32 0, align 4
@HAL_MODE_11A = common dso_local global i32 0, align 4
@AR_EEP_TURBO5DISABLE = common dso_local global i32 0, align 4
@HAL_MODE_TURBO = common dso_local global i32 0, align 4
@AR_EEP_BMODE = common dso_local global i32 0, align 4
@HAL_MODE_11B = common dso_local global i32 0, align 4
@AH_TRUE = common dso_local global i8* null, align 8
@HAL_NUM_TX_QUEUES = common dso_local global i32 0, align 4
@AH_FALSE = common dso_local global i8* null, align 8
@AR_EEP_RFKILL = common dso_local global i32 0, align 4
@AR_EEP_RFSILENT = common dso_local global i32 0, align 4
@HAL_OK = common dso_local global i64 0, align 8
@HAL_INT_COMMON = common dso_local global i32 0, align 4
@HAL_INT_RX = common dso_local global i32 0, align 4
@HAL_INT_TX = common dso_local global i32 0, align 4
@HAL_INT_FATAL = common dso_local global i32 0, align 4
@HAL_INT_BNR = common dso_local global i32 0, align 4
@HAL_INT_TIM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.ath_hal*)* @ar5211FillCapabilityInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ar5211FillCapabilityInfo(%struct.ath_hal* %0) #0 {
  %2 = alloca %struct.ath_hal*, align 8
  %3 = alloca %struct.ath_hal_private*, align 8
  %4 = alloca %struct.TYPE_2__*, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %2, align 8
  %5 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %6 = call %struct.ath_hal_private* @AH_PRIVATE(%struct.ath_hal* %5)
  store %struct.ath_hal_private* %6, %struct.ath_hal_private** %3, align 8
  %7 = load %struct.ath_hal_private*, %struct.ath_hal_private** %3, align 8
  %8 = getelementptr inbounds %struct.ath_hal_private, %struct.ath_hal_private* %7, i32 0, i32 3
  store %struct.TYPE_2__* %8, %struct.TYPE_2__** %4, align 8
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 21
  store i32 0, i32* %10, align 8
  %11 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %12 = load i32, i32* @AR_EEP_AMODE, align 4
  %13 = call i64 @ath_hal_eepromGetFlag(%struct.ath_hal* %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %32

15:                                               ; preds = %1
  %16 = load i32, i32* @HAL_MODE_11A, align 4
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 21
  %19 = load i32, i32* %18, align 8
  %20 = or i32 %19, %16
  store i32 %20, i32* %18, align 8
  %21 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %22 = load i32, i32* @AR_EEP_TURBO5DISABLE, align 4
  %23 = call i64 @ath_hal_eepromGetFlag(%struct.ath_hal* %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %15
  %26 = load i32, i32* @HAL_MODE_TURBO, align 4
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 21
  %29 = load i32, i32* %28, align 8
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 8
  br label %31

31:                                               ; preds = %25, %15
  br label %32

32:                                               ; preds = %31, %1
  %33 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %34 = load i32, i32* @AR_EEP_BMODE, align 4
  %35 = call i64 @ath_hal_eepromGetFlag(%struct.ath_hal* %33, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = load i32, i32* @HAL_MODE_11B, align 4
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 21
  %41 = load i32, i32* %40, align 8
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 8
  br label %43

43:                                               ; preds = %37, %32
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store i32 2312, i32* %45, align 8
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  store i32 2732, i32* %47, align 4
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 2
  store i32 4920, i32* %49, align 8
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 3
  store i32 6100, i32* %51, align 4
  %52 = load i8*, i8** @AH_TRUE, align 8
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 20
  store i8* %52, i8** %54, align 8
  %55 = load i8*, i8** @AH_TRUE, align 8
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 19
  store i8* %55, i8** %57, align 8
  %58 = load i8*, i8** @AH_TRUE, align 8
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 18
  store i8* %58, i8** %60, align 8
  %61 = load i8*, i8** @AH_TRUE, align 8
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 17
  store i8* %61, i8** %63, align 8
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 4
  store i32 1, i32* %65, align 8
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 5
  store i32 1, i32* %67, align 4
  %68 = load i32, i32* @HAL_NUM_TX_QUEUES, align 4
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 16
  store i32 %68, i32* %70, align 8
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 6
  store i32 128, i32* %72, align 8
  %73 = load i8*, i8** @AH_FALSE, align 8
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 15
  store i8* %73, i8** %75, align 8
  %76 = load i8*, i8** @AH_FALSE, align 8
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 14
  store i8* %76, i8** %78, align 8
  %79 = load i8*, i8** @AH_TRUE, align 8
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 13
  store i8* %79, i8** %81, align 8
  %82 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %83 = load i32, i32* @AR_EEP_RFKILL, align 4
  %84 = call i64 @ath_hal_eepromGetFlag(%struct.ath_hal* %82, i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %101

86:                                               ; preds = %43
  %87 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %88 = load i32, i32* @AR_EEP_RFSILENT, align 4
  %89 = load %struct.ath_hal_private*, %struct.ath_hal_private** %3, align 8
  %90 = getelementptr inbounds %struct.ath_hal_private, %struct.ath_hal_private* %89, i32 0, i32 2
  %91 = call i64 @ath_hal_eepromGet(%struct.ath_hal* %87, i32 %88, i32* %90)
  %92 = load i64, i64* @HAL_OK, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %101

94:                                               ; preds = %86
  %95 = load i8*, i8** @AH_TRUE, align 8
  %96 = load %struct.ath_hal_private*, %struct.ath_hal_private** %3, align 8
  %97 = getelementptr inbounds %struct.ath_hal_private, %struct.ath_hal_private* %96, i32 0, i32 1
  store i8* %95, i8** %97, align 8
  %98 = load i8*, i8** @AH_TRUE, align 8
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 12
  store i8* %98, i8** %100, align 8
  br label %101

101:                                              ; preds = %94, %86, %43
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 7
  store i32 13, i32* %103, align 4
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 8
  store i32 16, i32* %105, align 8
  %106 = load i32, i32* @HAL_INT_COMMON, align 4
  %107 = load i32, i32* @HAL_INT_RX, align 4
  %108 = or i32 %106, %107
  %109 = load i32, i32* @HAL_INT_TX, align 4
  %110 = or i32 %108, %109
  %111 = load i32, i32* @HAL_INT_FATAL, align 4
  %112 = or i32 %110, %111
  %113 = load i32, i32* @HAL_INT_BNR, align 4
  %114 = or i32 %112, %113
  %115 = load i32, i32* @HAL_INT_TIM, align 4
  %116 = or i32 %114, %115
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 9
  store i32 %116, i32* %118, align 4
  %119 = load i8*, i8** @AH_TRUE, align 8
  %120 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 11
  store i8* %119, i8** %121, align 8
  %122 = load i8*, i8** @AH_TRUE, align 8
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 10
  store i8* %122, i8** %124, align 8
  %125 = load i8*, i8** @AH_TRUE, align 8
  %126 = load %struct.ath_hal_private*, %struct.ath_hal_private** %3, align 8
  %127 = getelementptr inbounds %struct.ath_hal_private, %struct.ath_hal_private* %126, i32 0, i32 0
  store i8* %125, i8** %127, align 8
  %128 = load i8*, i8** @AH_TRUE, align 8
  ret i8* %128
}

declare dso_local %struct.ath_hal_private* @AH_PRIVATE(%struct.ath_hal*) #1

declare dso_local i64 @ath_hal_eepromGetFlag(%struct.ath_hal*, i32) #1

declare dso_local i64 @ath_hal_eepromGet(%struct.ath_hal*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
