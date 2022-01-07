; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/ath/athrd/extr_athrd.c_eepromRead.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/ath/athrd/extr_athrd.c_eepromRead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }

@eeversion = common dso_local global i32 0, align 4
@AH_TRUE = common dso_local global i32 0, align 4
@AR_EEPROM_EEREGCAP_EN_KK_NEW_11A = common dso_local global i32 0, align 4
@AR_EEPROM_EEREGCAP_EN_KK_NEW_11A_PRE4_0 = common dso_local global i32 0, align 4
@AH_FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_hal*, i32, i32*)* @eepromRead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eepromRead(%struct.ath_hal* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath_hal*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %8 = load i32, i32* %6, align 4
  switch i32 %8, label %21 [
    i32 128, label %9
    i32 130, label %13
    i32 129, label %17
  ]

9:                                                ; preds = %3
  %10 = load i32, i32* @eeversion, align 4
  %11 = load i32*, i32** %7, align 8
  store i32 %10, i32* %11, align 4
  %12 = load i32, i32* @AH_TRUE, align 4
  store i32 %12, i32* %4, align 4
  br label %23

13:                                               ; preds = %3
  %14 = load i32, i32* @AR_EEPROM_EEREGCAP_EN_KK_NEW_11A, align 4
  %15 = load i32*, i32** %7, align 8
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* @AH_TRUE, align 4
  store i32 %16, i32* %4, align 4
  br label %23

17:                                               ; preds = %3
  %18 = load i32, i32* @AR_EEPROM_EEREGCAP_EN_KK_NEW_11A_PRE4_0, align 4
  %19 = load i32*, i32** %7, align 8
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* @AH_TRUE, align 4
  store i32 %20, i32* %4, align 4
  br label %23

21:                                               ; preds = %3
  %22 = load i32, i32* @AH_FALSE, align 4
  store i32 %22, i32* %4, align 4
  br label %23

23:                                               ; preds = %21, %17, %13, %9
  %24 = load i32, i32* %4, align 4
  ret i32 %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
