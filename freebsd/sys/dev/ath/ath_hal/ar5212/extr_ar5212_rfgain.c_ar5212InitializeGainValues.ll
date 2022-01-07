; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5212/extr_ar5212_rfgain.c_ar5212InitializeGainValues.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5212/extr_ar5212_rfgain.c_ar5212InitializeGainValues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32* }
%struct.TYPE_6__ = type { i64, i32* }
%struct.ath_hal = type { i32 }
%struct.ath_hal_5212 = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32, i32, i8*, i32* }

@gainLadder5112 = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@AH_TRUE = common dso_local global i8* null, align 8
@gainLadder = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar5212InitializeGainValues(%struct.ath_hal* %0) #0 {
  %2 = alloca %struct.ath_hal*, align 8
  %3 = alloca %struct.ath_hal_5212*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %2, align 8
  %5 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %6 = call %struct.ath_hal_5212* @AH5212(%struct.ath_hal* %5)
  store %struct.ath_hal_5212* %6, %struct.ath_hal_5212** %3, align 8
  %7 = load %struct.ath_hal_5212*, %struct.ath_hal_5212** %3, align 8
  %8 = getelementptr inbounds %struct.ath_hal_5212, %struct.ath_hal_5212* %7, i32 0, i32 0
  store %struct.TYPE_4__* %8, %struct.TYPE_4__** %4, align 8
  %9 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %10 = call i64 @IS_RAD5112_ANY(%struct.ath_hal* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %28

12:                                               ; preds = %1
  %13 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @gainLadder5112, i32 0, i32 0), align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  store i64 %13, i64* %15, align 8
  %16 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @gainLadder5112, i32 0, i32 1), align 8
  %17 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @gainLadder5112, i32 0, i32 0), align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 4
  store i32* %18, i32** %20, align 8
  %21 = load i8*, i8** @AH_TRUE, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 3
  store i8* %21, i8** %23, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  store i32 20, i32* %25, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 2
  store i32 85, i32* %27, align 4
  br label %44

28:                                               ; preds = %1
  %29 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gainLadder, i32 0, i32 0), align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  %32 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gainLadder, i32 0, i32 1), align 8
  %33 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gainLadder, i32 0, i32 0), align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 4
  store i32* %34, i32** %36, align 8
  %37 = load i8*, i8** @AH_TRUE, align 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 3
  store i8* %37, i8** %39, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  store i32 20, i32* %41, align 8
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 2
  store i32 35, i32* %43, align 4
  br label %44

44:                                               ; preds = %28, %12
  ret void
}

declare dso_local %struct.ath_hal_5212* @AH5212(%struct.ath_hal*) #1

declare dso_local i64 @IS_RAD5112_ANY(%struct.ath_hal*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
