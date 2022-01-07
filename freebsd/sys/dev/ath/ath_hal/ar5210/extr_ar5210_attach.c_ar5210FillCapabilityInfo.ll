; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5210/extr_ar5210_attach.c_ar5210FillCapabilityInfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5210/extr_ar5210_attach.c_ar5210FillCapabilityInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.ath_hal_private = type { i32, i8*, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i8*, i32 }

@HAL_MODE_11A = common dso_local global i32 0, align 4
@AH_TRUE = common dso_local global i8* null, align 8
@AH_FALSE = common dso_local global i8* null, align 8
@HAL_NUM_TX_QUEUES = common dso_local global i32 0, align 4
@AR_EEP_RFKILL = common dso_local global i32 0, align 4
@AR_EEPROM_RFSILENT_GPIO_SEL = common dso_local global i32 0, align 4
@AR_EEPROM_RFSILENT_POLARITY = common dso_local global i32 0, align 4
@HAL_INT_COMMON = common dso_local global i32 0, align 4
@HAL_INT_BNR = common dso_local global i32 0, align 4
@HAL_INT_RX = common dso_local global i32 0, align 4
@HAL_INT_TX = common dso_local global i32 0, align 4
@HAL_INT_FATAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.ath_hal*)* @ar5210FillCapabilityInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ar5210FillCapabilityInfo(%struct.ath_hal* %0) #0 {
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
  %9 = load i32, i32* @HAL_MODE_11A, align 4
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 17
  %12 = load i32, i32* %11, align 8
  %13 = or i32 %12, %9
  store i32 %13, i32* %11, align 8
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store i32 5120, i32* %15, align 8
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  store i32 5430, i32* %17, align 4
  %18 = load i8*, i8** @AH_TRUE, align 8
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 16
  store i8* %18, i8** %20, align 8
  %21 = load i8*, i8** @AH_FALSE, align 8
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 15
  store i8* %21, i8** %23, align 8
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 2
  store i32 1, i32* %25, align 8
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 3
  store i32 1, i32* %27, align 4
  %28 = load i32, i32* @HAL_NUM_TX_QUEUES, align 4
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 14
  store i32 %28, i32* %30, align 8
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 4
  store i32 64, i32* %32, align 8
  %33 = load i8*, i8** @AH_FALSE, align 8
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 13
  store i8* %33, i8** %35, align 8
  %36 = load i8*, i8** @AH_FALSE, align 8
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 12
  store i8* %36, i8** %38, align 8
  %39 = load i8*, i8** @AH_TRUE, align 8
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 11
  store i8* %39, i8** %41, align 8
  %42 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %43 = load i32, i32* @AR_EEP_RFKILL, align 4
  %44 = call i64 @ath_hal_eepromGetFlag(%struct.ath_hal* %42, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %60

46:                                               ; preds = %1
  %47 = load i32, i32* @AR_EEPROM_RFSILENT_GPIO_SEL, align 4
  %48 = call i32 @SM(i32 0, i32 %47)
  %49 = load i32, i32* @AR_EEPROM_RFSILENT_POLARITY, align 4
  %50 = call i32 @SM(i32 0, i32 %49)
  %51 = or i32 %48, %50
  %52 = load %struct.ath_hal_private*, %struct.ath_hal_private** %3, align 8
  %53 = getelementptr inbounds %struct.ath_hal_private, %struct.ath_hal_private* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load i8*, i8** @AH_TRUE, align 8
  %55 = load %struct.ath_hal_private*, %struct.ath_hal_private** %3, align 8
  %56 = getelementptr inbounds %struct.ath_hal_private, %struct.ath_hal_private* %55, i32 0, i32 2
  store i8* %54, i8** %56, align 8
  %57 = load i8*, i8** @AH_TRUE, align 8
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 10
  store i8* %57, i8** %59, align 8
  br label %60

60:                                               ; preds = %46, %1
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 5
  store i32 16, i32* %62, align 4
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 6
  store i32 15, i32* %64, align 8
  %65 = load i32, i32* @HAL_INT_COMMON, align 4
  %66 = load i32, i32* @HAL_INT_BNR, align 4
  %67 = sub nsw i32 %65, %66
  %68 = load i32, i32* @HAL_INT_RX, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @HAL_INT_TX, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @HAL_INT_FATAL, align 4
  %73 = or i32 %71, %72
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 7
  store i32 %73, i32* %75, align 4
  %76 = load i8*, i8** @AH_TRUE, align 8
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 9
  store i8* %76, i8** %78, align 8
  %79 = load i8*, i8** @AH_TRUE, align 8
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 8
  store i8* %79, i8** %81, align 8
  %82 = load i8*, i8** @AH_TRUE, align 8
  %83 = load %struct.ath_hal_private*, %struct.ath_hal_private** %3, align 8
  %84 = getelementptr inbounds %struct.ath_hal_private, %struct.ath_hal_private* %83, i32 0, i32 1
  store i8* %82, i8** %84, align 8
  %85 = load i8*, i8** @AH_TRUE, align 8
  ret i8* %85
}

declare dso_local %struct.ath_hal_private* @AH_PRIVATE(%struct.ath_hal*) #1

declare dso_local i64 @ath_hal_eepromGetFlag(%struct.ath_hal*, i32) #1

declare dso_local i32 @SM(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
