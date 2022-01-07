; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5212/extr_ar5111.c_ar5212GetScaledPower.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5212/extr_ar5111.c_ar5212GetScaledPower.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.TYPE_5__*)* @ar5212GetScaledPower to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar5212GetScaledPower(i32 %0, i32 %1, %struct.TYPE_5__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %7, align 8
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %22 = call i64 @ar5212FindValueInList(i32 %19, i32 %20, %struct.TYPE_5__* %21, i32* %8)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %4, align 4
  br label %77

26:                                               ; preds = %3
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @ar5212GetLowerUpperValues(i32 %27, i32 %30, i32 %33, i32* %9, i32* %10)
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %38 = call i32 @ar5212GetLowerUpperPcdacs(i32 %35, i32 %36, %struct.TYPE_5__* %37, i32* %11, i32* %12)
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %10, align 4
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %42 = call i32 @ar5212GetLowerUpperPcdacs(i32 %39, i32 %40, %struct.TYPE_5__* %41, i32* %13, i32* %14)
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %11, align 4
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %46 = call i64 @ar5212FindValueInList(i32 %43, i32 %44, %struct.TYPE_5__* %45, i32* %15)
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %12, align 4
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %50 = call i64 @ar5212FindValueInList(i32 %47, i32 %48, %struct.TYPE_5__* %49, i32* %16)
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* %15, align 4
  %55 = load i32, i32* %16, align 4
  %56 = call i32 @interpolate(i32 %51, i32 %52, i32 %53, i32 %54, i32 %55)
  store i32 %56, i32* %17, align 4
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* %13, align 4
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %60 = call i64 @ar5212FindValueInList(i32 %57, i32 %58, %struct.TYPE_5__* %59, i32* %15)
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %14, align 4
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %64 = call i64 @ar5212FindValueInList(i32 %61, i32 %62, %struct.TYPE_5__* %63, i32* %16)
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* %13, align 4
  %67 = load i32, i32* %14, align 4
  %68 = load i32, i32* %15, align 4
  %69 = load i32, i32* %16, align 4
  %70 = call i32 @interpolate(i32 %65, i32 %66, i32 %67, i32 %68, i32 %69)
  store i32 %70, i32* %18, align 4
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* %17, align 4
  %75 = load i32, i32* %18, align 4
  %76 = call i32 @interpolate(i32 %71, i32 %72, i32 %73, i32 %74, i32 %75)
  store i32 %76, i32* %4, align 4
  br label %77

77:                                               ; preds = %26, %24
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i64 @ar5212FindValueInList(i32, i32, %struct.TYPE_5__*, i32*) #1

declare dso_local i32 @ar5212GetLowerUpperValues(i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @ar5212GetLowerUpperPcdacs(i32, i32, %struct.TYPE_5__*, i32*, i32*) #1

declare dso_local i32 @interpolate(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
