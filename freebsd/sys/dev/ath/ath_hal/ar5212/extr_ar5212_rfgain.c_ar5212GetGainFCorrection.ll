; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5212/extr_ar5212_rfgain.c_ar5212GetGainFCorrection.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5212/extr_ar5212_rfgain.c_ar5212GetGainFCorrection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.ath_hal_5212 = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_hal*)* @ar5212GetGainFCorrection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar5212GetGainFCorrection(%struct.ath_hal* %0) #0 {
  %2 = alloca %struct.ath_hal*, align 8
  %3 = alloca %struct.ath_hal_5212*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %2, align 8
  %8 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %9 = call %struct.ath_hal_5212* @AH5212(%struct.ath_hal* %8)
  store %struct.ath_hal_5212* %9, %struct.ath_hal_5212** %3, align 8
  %10 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %11 = call i32 @IS_RADX112_REV2(%struct.ath_hal* %10)
  %12 = call i32 @HALASSERT(i32 %11)
  store i32 0, i32* %4, align 4
  %13 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %14 = call i32 @ar5212GetRfBank(%struct.ath_hal* %13, i32 7)
  %15 = call i32 @ar5212GetRfField(i32 %14, i32 1, i32 36, i32 0)
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %42

17:                                               ; preds = %1
  %18 = load %struct.ath_hal_5212*, %struct.ath_hal_5212** %3, align 8
  %19 = getelementptr inbounds %struct.ath_hal_5212, %struct.ath_hal_5212* %18, i32 0, i32 0
  store %struct.TYPE_4__* %19, %struct.TYPE_4__** %5, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %6, align 4
  %27 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %28 = call i32 @ar5212GetRfBank(%struct.ath_hal* %27, i32 7)
  %29 = call i32 @ar5212GetRfField(i32 %28, i32 4, i32 32, i32 0)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %6, align 4
  switch i32 %30, label %41 [
    i32 0, label %31
    i32 1, label %32
    i32 2, label %34
    i32 3, label %38
  ]

31:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %41

32:                                               ; preds = %17
  %33 = load i32, i32* %7, align 4
  store i32 %33, i32* %4, align 4
  br label %41

34:                                               ; preds = %17
  %35 = load i32, i32* %7, align 4
  %36 = mul nsw i32 2, %35
  %37 = sub nsw i32 %36, 5
  store i32 %37, i32* %4, align 4
  br label %41

38:                                               ; preds = %17
  %39 = load i32, i32* %7, align 4
  %40 = mul nsw i32 2, %39
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %17, %38, %34, %32, %31
  br label %42

42:                                               ; preds = %41, %1
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local %struct.ath_hal_5212* @AH5212(%struct.ath_hal*) #1

declare dso_local i32 @HALASSERT(i32) #1

declare dso_local i32 @IS_RADX112_REV2(%struct.ath_hal*) #1

declare dso_local i32 @ar5212GetRfField(i32, i32, i32, i32) #1

declare dso_local i32 @ar5212GetRfBank(%struct.ath_hal*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
