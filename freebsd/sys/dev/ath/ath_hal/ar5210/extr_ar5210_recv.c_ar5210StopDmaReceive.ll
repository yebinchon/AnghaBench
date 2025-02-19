; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5210/extr_ar5210_recv.c_ar5210StopDmaReceive.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5210/extr_ar5210_recv.c_ar5210StopDmaReceive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }

@AR_CR = common dso_local global i32 0, align 4
@AR_CR_RXD = common dso_local global i32 0, align 4
@AR_CR_RXE = common dso_local global i32 0, align 4
@AH_TRUE = common dso_local global i32 0, align 4
@AH_FALSE = common dso_local global i32 0, align 4
@AR_DIAG_SW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar5210StopDmaReceive(%struct.ath_hal* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath_hal*, align 8
  %4 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %3, align 8
  %5 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %6 = load i32, i32* @AR_CR, align 4
  %7 = load i32, i32* @AR_CR_RXD, align 4
  %8 = call i32 @OS_REG_WRITE(%struct.ath_hal* %5, i32 %6, i32 %7)
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %23, %1
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %10, 1000
  br i1 %11, label %12, label %26

12:                                               ; preds = %9
  %13 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %14 = load i32, i32* @AR_CR, align 4
  %15 = call i32 @OS_REG_READ(%struct.ath_hal* %13, i32 %14)
  %16 = load i32, i32* @AR_CR_RXE, align 4
  %17 = and i32 %15, %16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %12
  %20 = load i32, i32* @AH_TRUE, align 4
  store i32 %20, i32* %2, align 4
  br label %28

21:                                               ; preds = %12
  %22 = call i32 @OS_DELAY(i32 10)
  br label %23

23:                                               ; preds = %21
  %24 = load i32, i32* %4, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %4, align 4
  br label %9

26:                                               ; preds = %9
  %27 = load i32, i32* @AH_FALSE, align 4
  store i32 %27, i32* %2, align 4
  br label %28

28:                                               ; preds = %26, %19
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32 @OS_REG_WRITE(%struct.ath_hal*, i32, i32) #1

declare dso_local i32 @OS_REG_READ(%struct.ath_hal*, i32) #1

declare dso_local i32 @OS_DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
