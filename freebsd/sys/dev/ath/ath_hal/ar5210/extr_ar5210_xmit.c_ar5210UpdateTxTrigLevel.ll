; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5210/extr_ar5210_xmit.c_ar5210UpdateTxTrigLevel.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5210/extr_ar5210_xmit.c_ar5210UpdateTxTrigLevel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }

@HAL_INT_GLOBAL = common dso_local global i32 0, align 4
@AR_TRIG_LEV = common dso_local global i32 0, align 4
@MAX_TX_FIFO_THRESHOLD = common dso_local global i32 0, align 4
@MIN_TX_FIFO_THRESHOLD = common dso_local global i32 0, align 4
@AH_FALSE = common dso_local global i64 0, align 8
@AH_TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ar5210UpdateTxTrigLevel(%struct.ath_hal* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.ath_hal*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %9 = call i32 @ar5210GetInterrupts(%struct.ath_hal* %8)
  store i32 %9, i32* %7, align 4
  %10 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @HAL_INT_GLOBAL, align 4
  %13 = xor i32 %12, -1
  %14 = and i32 %11, %13
  %15 = call i32 @ar5210SetInterrupts(%struct.ath_hal* %10, i32 %14)
  %16 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %17 = load i32, i32* @AR_TRIG_LEV, align 4
  %18 = call i32 @OS_REG_READ(%struct.ath_hal* %16, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i64, i64* %5, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %2
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @MAX_TX_FIFO_THRESHOLD, align 4
  %24 = load i32, i32* %6, align 4
  %25 = sub nsw i32 %23, %24
  %26 = sdiv i32 %25, 2
  %27 = add nsw i32 %22, %26
  store i32 %27, i32* %6, align 4
  br label %41

28:                                               ; preds = %2
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @MIN_TX_FIFO_THRESHOLD, align 4
  %31 = icmp sgt i32 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %6, align 4
  br label %40

35:                                               ; preds = %28
  %36 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @ar5210SetInterrupts(%struct.ath_hal* %36, i32 %37)
  %39 = load i64, i64* @AH_FALSE, align 8
  store i64 %39, i64* %3, align 8
  br label %50

40:                                               ; preds = %32
  br label %41

41:                                               ; preds = %40, %21
  %42 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %43 = load i32, i32* @AR_TRIG_LEV, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @OS_REG_WRITE(%struct.ath_hal* %42, i32 %43, i32 %44)
  %46 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @ar5210SetInterrupts(%struct.ath_hal* %46, i32 %47)
  %49 = load i64, i64* @AH_TRUE, align 8
  store i64 %49, i64* %3, align 8
  br label %50

50:                                               ; preds = %41, %35
  %51 = load i64, i64* %3, align 8
  ret i64 %51
}

declare dso_local i32 @ar5210GetInterrupts(%struct.ath_hal*) #1

declare dso_local i32 @ar5210SetInterrupts(%struct.ath_hal*, i32) #1

declare dso_local i32 @OS_REG_READ(%struct.ath_hal*, i32) #1

declare dso_local i32 @OS_REG_WRITE(%struct.ath_hal*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
