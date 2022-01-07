; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar9002/extr_ar9285.c_ar9285RfAttach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar9002/extr_ar9285.c_ar9285RfAttach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.TYPE_2__ = type { i32 }

@AH_FALSE = common dso_local global i64 0, align 8
@ar9285GetNoiseFloor = common dso_local global i32 0, align 4
@AH_TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ar9285RfAttach(%struct.ath_hal* %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.ath_hal*, align 8
  %5 = alloca i32*, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %7 = load i32*, i32** %5, align 8
  %8 = call i64 @ar9280RfAttach(%struct.ath_hal* %6, i32* %7)
  %9 = load i64, i64* @AH_FALSE, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i64, i64* @AH_FALSE, align 8
  store i64 %12, i64* %3, align 8
  br label %19

13:                                               ; preds = %2
  %14 = load i32, i32* @ar9285GetNoiseFloor, align 4
  %15 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %16 = call %struct.TYPE_2__* @AH_PRIVATE(%struct.ath_hal* %15)
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i32 %14, i32* %17, align 4
  %18 = load i64, i64* @AH_TRUE, align 8
  store i64 %18, i64* %3, align 8
  br label %19

19:                                               ; preds = %13, %11
  %20 = load i64, i64* %3, align 8
  ret i64 %20
}

declare dso_local i64 @ar9280RfAttach(%struct.ath_hal*, i32*) #1

declare dso_local %struct.TYPE_2__* @AH_PRIVATE(%struct.ath_hal*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
