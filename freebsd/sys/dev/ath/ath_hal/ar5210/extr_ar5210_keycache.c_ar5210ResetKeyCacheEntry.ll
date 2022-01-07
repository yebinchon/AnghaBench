; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5210/extr_ar5210_keycache.c_ar5210ResetKeyCacheEntry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5210/extr_ar5210_keycache.c_ar5210ResetKeyCacheEntry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }

@AR_KEYTABLE_SIZE = common dso_local global i64 0, align 8
@AH_TRUE = common dso_local global i32 0, align 4
@AH_FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar5210ResetKeyCacheEntry(%struct.ath_hal* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath_hal*, align 8
  %5 = alloca i64, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @AR_KEYTABLE_SIZE, align 8
  %8 = icmp slt i64 %6, %7
  br i1 %8, label %9, label %43

9:                                                ; preds = %2
  %10 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %11 = load i64, i64* %5, align 8
  %12 = call i32 @AR_KEYTABLE_KEY0(i64 %11)
  %13 = call i32 @OS_REG_WRITE(%struct.ath_hal* %10, i32 %12, i32 0)
  %14 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %15 = load i64, i64* %5, align 8
  %16 = call i32 @AR_KEYTABLE_KEY1(i64 %15)
  %17 = call i32 @OS_REG_WRITE(%struct.ath_hal* %14, i32 %16, i32 0)
  %18 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %19 = load i64, i64* %5, align 8
  %20 = call i32 @AR_KEYTABLE_KEY2(i64 %19)
  %21 = call i32 @OS_REG_WRITE(%struct.ath_hal* %18, i32 %20, i32 0)
  %22 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %23 = load i64, i64* %5, align 8
  %24 = call i32 @AR_KEYTABLE_KEY3(i64 %23)
  %25 = call i32 @OS_REG_WRITE(%struct.ath_hal* %22, i32 %24, i32 0)
  %26 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %27 = load i64, i64* %5, align 8
  %28 = call i32 @AR_KEYTABLE_KEY4(i64 %27)
  %29 = call i32 @OS_REG_WRITE(%struct.ath_hal* %26, i32 %28, i32 0)
  %30 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %31 = load i64, i64* %5, align 8
  %32 = call i32 @AR_KEYTABLE_TYPE(i64 %31)
  %33 = call i32 @OS_REG_WRITE(%struct.ath_hal* %30, i32 %32, i32 0)
  %34 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %35 = load i64, i64* %5, align 8
  %36 = call i32 @AR_KEYTABLE_MAC0(i64 %35)
  %37 = call i32 @OS_REG_WRITE(%struct.ath_hal* %34, i32 %36, i32 0)
  %38 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %39 = load i64, i64* %5, align 8
  %40 = call i32 @AR_KEYTABLE_MAC1(i64 %39)
  %41 = call i32 @OS_REG_WRITE(%struct.ath_hal* %38, i32 %40, i32 0)
  %42 = load i32, i32* @AH_TRUE, align 4
  store i32 %42, i32* %3, align 4
  br label %45

43:                                               ; preds = %2
  %44 = load i32, i32* @AH_FALSE, align 4
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %43, %9
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @OS_REG_WRITE(%struct.ath_hal*, i32, i32) #1

declare dso_local i32 @AR_KEYTABLE_KEY0(i64) #1

declare dso_local i32 @AR_KEYTABLE_KEY1(i64) #1

declare dso_local i32 @AR_KEYTABLE_KEY2(i64) #1

declare dso_local i32 @AR_KEYTABLE_KEY3(i64) #1

declare dso_local i32 @AR_KEYTABLE_KEY4(i64) #1

declare dso_local i32 @AR_KEYTABLE_TYPE(i64) #1

declare dso_local i32 @AR_KEYTABLE_MAC0(i64) #1

declare dso_local i32 @AR_KEYTABLE_MAC1(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
