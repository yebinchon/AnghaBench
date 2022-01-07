; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5210/extr_ar5210_misc.c_ar5210SetCapability.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5210/extr_ar5210_misc.c_ar5210SetCapability.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.TYPE_2__ = type { i32 }

@AH_TRUE = common dso_local global i32 0, align 4
@AH_FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar5210SetCapability(%struct.ath_hal* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ath_hal*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %12 = load i32, i32* %8, align 4
  switch i32 %12, label %28 [
    i32 129, label %13
    i32 128, label %26
  ]

13:                                               ; preds = %5
  %14 = load i32, i32* %10, align 4
  %15 = and i32 %14, 6
  %16 = load %struct.ath_hal*, %struct.ath_hal** %7, align 8
  %17 = call %struct.TYPE_2__* @AH_PRIVATE(%struct.ath_hal* %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i32 %15, i32* %18, align 4
  %19 = load %struct.ath_hal*, %struct.ath_hal** %7, align 8
  %20 = load %struct.ath_hal*, %struct.ath_hal** %7, align 8
  %21 = call %struct.TYPE_2__* @AH_PRIVATE(%struct.ath_hal* %20)
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @ar5210UpdateDiagReg(%struct.ath_hal* %19, i32 %23)
  %25 = load i32, i32* @AH_TRUE, align 4
  store i32 %25, i32* %6, align 4
  br label %35

26:                                               ; preds = %5
  %27 = load i32, i32* @AH_FALSE, align 4
  store i32 %27, i32* %6, align 4
  br label %35

28:                                               ; preds = %5
  %29 = load %struct.ath_hal*, %struct.ath_hal** %7, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load i32*, i32** %11, align 8
  %34 = call i32 @ath_hal_setcapability(%struct.ath_hal* %29, i32 %30, i32 %31, i32 %32, i32* %33)
  store i32 %34, i32* %6, align 4
  br label %35

35:                                               ; preds = %28, %26, %13
  %36 = load i32, i32* %6, align 4
  ret i32 %36
}

declare dso_local %struct.TYPE_2__* @AH_PRIVATE(%struct.ath_hal*) #1

declare dso_local i32 @ar5210UpdateDiagReg(%struct.ath_hal*, i32) #1

declare dso_local i32 @ath_hal_setcapability(%struct.ath_hal*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
