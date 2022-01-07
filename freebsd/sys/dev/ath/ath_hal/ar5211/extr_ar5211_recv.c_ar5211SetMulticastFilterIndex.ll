; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5211/extr_ar5211_recv.c_ar5211SetMulticastFilterIndex.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5211/extr_ar5211_recv.c_ar5211SetMulticastFilterIndex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }

@AH_FALSE = common dso_local global i32 0, align 4
@AR_MCAST_FIL1 = common dso_local global i32 0, align 4
@AR_MCAST_FIL0 = common dso_local global i32 0, align 4
@AH_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar5211SetMulticastFilterIndex(%struct.ath_hal* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath_hal*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp sge i32 %7, 64
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i32, i32* @AH_FALSE, align 4
  store i32 %10, i32* %3, align 4
  br label %39

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = icmp sge i32 %12, 32
  br i1 %13, label %14, label %26

14:                                               ; preds = %11
  %15 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %16 = load i32, i32* @AR_MCAST_FIL1, align 4
  %17 = call i32 @OS_REG_READ(%struct.ath_hal* %15, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %19 = load i32, i32* @AR_MCAST_FIL1, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %5, align 4
  %22 = sub nsw i32 %21, 32
  %23 = shl i32 1, %22
  %24 = or i32 %20, %23
  %25 = call i32 @OS_REG_WRITE(%struct.ath_hal* %18, i32 %19, i32 %24)
  br label %37

26:                                               ; preds = %11
  %27 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %28 = load i32, i32* @AR_MCAST_FIL0, align 4
  %29 = call i32 @OS_REG_READ(%struct.ath_hal* %27, i32 %28)
  store i32 %29, i32* %6, align 4
  %30 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %31 = load i32, i32* @AR_MCAST_FIL0, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %5, align 4
  %34 = shl i32 1, %33
  %35 = or i32 %32, %34
  %36 = call i32 @OS_REG_WRITE(%struct.ath_hal* %30, i32 %31, i32 %35)
  br label %37

37:                                               ; preds = %26, %14
  %38 = load i32, i32* @AH_TRUE, align 4
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %37, %9
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @OS_REG_READ(%struct.ath_hal*, i32) #1

declare dso_local i32 @OS_REG_WRITE(%struct.ath_hal*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
