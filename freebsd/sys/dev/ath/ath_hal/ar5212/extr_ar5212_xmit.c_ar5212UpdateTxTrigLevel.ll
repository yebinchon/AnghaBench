; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5212/extr_ar5212_xmit.c_ar5212UpdateTxTrigLevel.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5212/extr_ar5212_xmit.c_ar5212UpdateTxTrigLevel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.ath_hal_5212 = type { i64, i64, i32 }

@AH_FALSE = common dso_local global i32 0, align 4
@HAL_INT_GLOBAL = common dso_local global i32 0, align 4
@AR_TXCFG = common dso_local global i32 0, align 4
@AR_FTRIG = common dso_local global i64 0, align 8
@MIN_TX_FIFO_THRESHOLD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar5212UpdateTxTrigLevel(%struct.ath_hal* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath_hal*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ath_hal_5212*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %12 = call %struct.ath_hal_5212* @AH5212(%struct.ath_hal* %11)
  store %struct.ath_hal_5212* %12, %struct.ath_hal_5212** %6, align 8
  %13 = load %struct.ath_hal_5212*, %struct.ath_hal_5212** %6, align 8
  %14 = getelementptr inbounds %struct.ath_hal_5212, %struct.ath_hal_5212* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.ath_hal_5212*, %struct.ath_hal_5212** %6, align 8
  %17 = getelementptr inbounds %struct.ath_hal_5212, %struct.ath_hal_5212* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp sge i64 %15, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* @AH_FALSE, align 4
  store i32 %21, i32* %3, align 4
  br label %85

22:                                               ; preds = %2
  %23 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %24 = load %struct.ath_hal_5212*, %struct.ath_hal_5212** %6, align 8
  %25 = getelementptr inbounds %struct.ath_hal_5212, %struct.ath_hal_5212* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @HAL_INT_GLOBAL, align 4
  %28 = xor i32 %27, -1
  %29 = and i32 %26, %28
  %30 = call i32 @ath_hal_setInterrupts(%struct.ath_hal* %23, i32 %29)
  store i32 %30, i32* %10, align 4
  %31 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %32 = load i32, i32* @AR_TXCFG, align 4
  %33 = call i64 @OS_REG_READ(%struct.ath_hal* %31, i32 %32)
  store i64 %33, i64* %7, align 8
  %34 = load i64, i64* %7, align 8
  %35 = load i64, i64* @AR_FTRIG, align 8
  %36 = call i64 @MS(i64 %34, i64 %35)
  store i64 %36, i64* %8, align 8
  %37 = load i64, i64* %8, align 8
  store i64 %37, i64* %9, align 8
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %22
  %41 = load i64, i64* %8, align 8
  %42 = load %struct.ath_hal_5212*, %struct.ath_hal_5212** %6, align 8
  %43 = getelementptr inbounds %struct.ath_hal_5212, %struct.ath_hal_5212* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp slt i64 %41, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load i64, i64* %9, align 8
  %48 = add nsw i64 %47, 1
  store i64 %48, i64* %9, align 8
  br label %49

49:                                               ; preds = %46, %40
  br label %58

50:                                               ; preds = %22
  %51 = load i64, i64* %8, align 8
  %52 = load i64, i64* @MIN_TX_FIFO_THRESHOLD, align 8
  %53 = icmp sgt i64 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load i64, i64* %9, align 8
  %56 = add nsw i64 %55, -1
  store i64 %56, i64* %9, align 8
  br label %57

57:                                               ; preds = %54, %50
  br label %58

58:                                               ; preds = %57, %49
  %59 = load i64, i64* %9, align 8
  %60 = load i64, i64* %8, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %74

62:                                               ; preds = %58
  %63 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %64 = load i32, i32* @AR_TXCFG, align 4
  %65 = load i64, i64* %7, align 8
  %66 = load i64, i64* @AR_FTRIG, align 8
  %67 = xor i64 %66, -1
  %68 = and i64 %65, %67
  %69 = load i64, i64* %9, align 8
  %70 = load i64, i64* @AR_FTRIG, align 8
  %71 = call i64 @SM(i64 %69, i64 %70)
  %72 = or i64 %68, %71
  %73 = call i32 @OS_REG_WRITE(%struct.ath_hal* %63, i32 %64, i64 %72)
  br label %74

74:                                               ; preds = %62, %58
  %75 = load i64, i64* %9, align 8
  %76 = load %struct.ath_hal_5212*, %struct.ath_hal_5212** %6, align 8
  %77 = getelementptr inbounds %struct.ath_hal_5212, %struct.ath_hal_5212* %76, i32 0, i32 0
  store i64 %75, i64* %77, align 8
  %78 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %79 = load i32, i32* %10, align 4
  %80 = call i32 @ath_hal_setInterrupts(%struct.ath_hal* %78, i32 %79)
  %81 = load i64, i64* %9, align 8
  %82 = load i64, i64* %8, align 8
  %83 = icmp ne i64 %81, %82
  %84 = zext i1 %83 to i32
  store i32 %84, i32* %3, align 4
  br label %85

85:                                               ; preds = %74, %20
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local %struct.ath_hal_5212* @AH5212(%struct.ath_hal*) #1

declare dso_local i32 @ath_hal_setInterrupts(%struct.ath_hal*, i32) #1

declare dso_local i64 @OS_REG_READ(%struct.ath_hal*, i32) #1

declare dso_local i64 @MS(i64, i64) #1

declare dso_local i32 @OS_REG_WRITE(%struct.ath_hal*, i32, i64) #1

declare dso_local i64 @SM(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
