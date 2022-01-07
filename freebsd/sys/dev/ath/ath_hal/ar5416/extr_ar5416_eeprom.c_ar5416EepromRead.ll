; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5416/extr_ar5416_eeprom.c_ar5416EepromRead.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5416/extr_ar5416_eeprom.c_ar5416EepromRead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }

@AR5416_EEPROM_OFFSET = common dso_local global i64 0, align 8
@AR5416_EEPROM_S = common dso_local global i32 0, align 4
@AR_EEPROM_STATUS_DATA = common dso_local global i64 0, align 8
@AR_EEPROM_STATUS_DATA_BUSY = common dso_local global i32 0, align 4
@AR_EEPROM_STATUS_DATA_PROT_ACCESS = common dso_local global i32 0, align 4
@AH_FALSE = common dso_local global i32 0, align 4
@AR_EEPROM_STATUS_DATA_VAL = common dso_local global i32 0, align 4
@AH_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar5416EepromRead(%struct.ath_hal* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath_hal*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %8 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %9 = load i64, i64* @AR5416_EEPROM_OFFSET, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @AR5416_EEPROM_S, align 4
  %12 = shl i32 %10, %11
  %13 = sext i32 %12 to i64
  %14 = add nsw i64 %9, %13
  %15 = call i32 @OS_REG_READ(%struct.ath_hal* %8, i64 %14)
  %16 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %17 = load i64, i64* @AR_EEPROM_STATUS_DATA, align 8
  %18 = load i32, i32* @AR_EEPROM_STATUS_DATA_BUSY, align 4
  %19 = load i32, i32* @AR_EEPROM_STATUS_DATA_PROT_ACCESS, align 4
  %20 = or i32 %18, %19
  %21 = call i32 @ath_hal_wait(%struct.ath_hal* %16, i64 %17, i32 %20, i32 0)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* @AH_FALSE, align 4
  store i32 %24, i32* %4, align 4
  br label %33

25:                                               ; preds = %3
  %26 = load %struct.ath_hal*, %struct.ath_hal** %5, align 8
  %27 = load i64, i64* @AR_EEPROM_STATUS_DATA, align 8
  %28 = call i32 @OS_REG_READ(%struct.ath_hal* %26, i64 %27)
  %29 = load i32, i32* @AR_EEPROM_STATUS_DATA_VAL, align 4
  %30 = call i32 @MS(i32 %28, i32 %29)
  %31 = load i32*, i32** %7, align 8
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* @AH_TRUE, align 4
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %25, %23
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local i32 @OS_REG_READ(%struct.ath_hal*, i64) #1

declare dso_local i32 @ath_hal_wait(%struct.ath_hal*, i64, i32, i32) #1

declare dso_local i32 @MS(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
