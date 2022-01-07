; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5211/extr_ar5211_xmit.c_ar5211UpdateTxTrigLevel.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5211/extr_ar5211_xmit.c_ar5211UpdateTxTrigLevel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }

@HAL_INT_GLOBAL = common dso_local global i32 0, align 4
@AR_TXCFG = common dso_local global i32 0, align 4
@AR_TXCFG_FTRIG_M = common dso_local global i32 0, align 4
@AR_TXCFG_FTRIG_S = common dso_local global i32 0, align 4
@MAX_TX_FIFO_THRESHOLD = common dso_local global i32 0, align 4
@MIN_TX_FIFO_THRESHOLD = common dso_local global i32 0, align 4
@AH_FALSE = common dso_local global i64 0, align 8
@AH_TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ar5211UpdateTxTrigLevel(%struct.ath_hal* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.ath_hal*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %10 = call i32 @ar5211GetInterrupts(%struct.ath_hal* %9)
  store i32 %10, i32* %8, align 4
  %11 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* @HAL_INT_GLOBAL, align 4
  %14 = xor i32 %13, -1
  %15 = and i32 %12, %14
  %16 = call i32 @ar5211SetInterrupts(%struct.ath_hal* %11, i32 %15)
  %17 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %18 = load i32, i32* @AR_TXCFG, align 4
  %19 = call i32 @OS_REG_READ(%struct.ath_hal* %17, i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @AR_TXCFG_FTRIG_M, align 4
  %22 = and i32 %20, %21
  %23 = load i32, i32* @AR_TXCFG_FTRIG_S, align 4
  %24 = ashr i32 %22, %23
  store i32 %24, i32* %6, align 4
  %25 = load i64, i64* %5, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %2
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @MAX_TX_FIFO_THRESHOLD, align 4
  %30 = load i32, i32* %6, align 4
  %31 = sub nsw i32 %29, %30
  %32 = sdiv i32 %31, 2
  %33 = add nsw i32 %28, %32
  store i32 %33, i32* %6, align 4
  br label %47

34:                                               ; preds = %2
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @MIN_TX_FIFO_THRESHOLD, align 4
  %37 = icmp sgt i32 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %6, align 4
  br label %46

41:                                               ; preds = %34
  %42 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @ar5211SetInterrupts(%struct.ath_hal* %42, i32 %43)
  %45 = load i64, i64* @AH_FALSE, align 8
  store i64 %45, i64* %3, align 8
  br label %65

46:                                               ; preds = %38
  br label %47

47:                                               ; preds = %46, %27
  %48 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %49 = load i32, i32* @AR_TXCFG, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @AR_TXCFG_FTRIG_M, align 4
  %52 = xor i32 %51, -1
  %53 = and i32 %50, %52
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @AR_TXCFG_FTRIG_S, align 4
  %56 = shl i32 %54, %55
  %57 = load i32, i32* @AR_TXCFG_FTRIG_M, align 4
  %58 = and i32 %56, %57
  %59 = or i32 %53, %58
  %60 = call i32 @OS_REG_WRITE(%struct.ath_hal* %48, i32 %49, i32 %59)
  %61 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @ar5211SetInterrupts(%struct.ath_hal* %61, i32 %62)
  %64 = load i64, i64* @AH_TRUE, align 8
  store i64 %64, i64* %3, align 8
  br label %65

65:                                               ; preds = %47, %41
  %66 = load i64, i64* %3, align 8
  ret i64 %66
}

declare dso_local i32 @ar5211GetInterrupts(%struct.ath_hal*) #1

declare dso_local i32 @ar5211SetInterrupts(%struct.ath_hal*, i32) #1

declare dso_local i32 @OS_REG_READ(%struct.ath_hal*, i32) #1

declare dso_local i32 @OS_REG_WRITE(%struct.ath_hal*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
