; ModuleID = '/home/carl/AnghaBench/freebsd/tools/test/testfloat/extr_testCases.c_testCases_initSequence.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/test/testfloat/extr_testCases.c_testCases_initSequence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i8*, i64, i64, i64 }
%struct.TYPE_11__ = type { i8*, i64, i64, i64 }

@sequenceType = common dso_local global i32 0, align 4
@sequenceA = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@FALSE = common dso_local global i8* null, align 8
@sequenceB = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@subcase = common dso_local global i64 0, align 8
@level = common dso_local global i32 0, align 4
@int32NumP1 = common dso_local global i32 0, align 4
@testCases_total = common dso_local global i32 0, align 4
@float32NumQOutP1 = common dso_local global i32 0, align 4
@float32NumQInP1 = common dso_local global i32 0, align 4
@current_a_float32 = common dso_local global i32 0, align 4
@float64NumQOutP1 = common dso_local global i32 0, align 4
@float64NumQInP1 = common dso_local global i32 0, align 4
@current_a_float64 = common dso_local global i32 0, align 4
@int32NumP2 = common dso_local global i32 0, align 4
@float32NumQOutP2 = common dso_local global i32 0, align 4
@float32NumQInP2 = common dso_local global i32 0, align 4
@float64NumQOutP2 = common dso_local global i32 0, align 4
@float64NumQInP2 = common dso_local global i32 0, align 4
@testCases_done = common dso_local global i8* null, align 8
@current_a_float128 = common dso_local global i32 0, align 4
@current_a_floatx80 = common dso_local global i32 0, align 4
@float128NumQInP1 = common dso_local global i32 0, align 4
@float128NumQInP2 = common dso_local global i32 0, align 4
@float128NumQOutP1 = common dso_local global i32 0, align 4
@float128NumQOutP2 = common dso_local global i32 0, align 4
@floatx80NumQInP1 = common dso_local global i32 0, align 4
@floatx80NumQInP2 = common dso_local global i32 0, align 4
@floatx80NumQOutP1 = common dso_local global i32 0, align 4
@floatx80NumQOutP2 = common dso_local global i32 0, align 4
@int64NumP1 = common dso_local global i32 0, align 4
@int64NumP2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @testCases_initSequence(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  store i32 %3, i32* @sequenceType, align 4
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @sequenceA, i32 0, i32 3), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @sequenceA, i32 0, i32 2), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @sequenceA, i32 0, i32 1), align 8
  %4 = load i8*, i8** @FALSE, align 8
  store i8* %4, i8** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @sequenceA, i32 0, i32 0), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @sequenceB, i32 0, i32 3), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @sequenceB, i32 0, i32 2), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @sequenceB, i32 0, i32 1), align 8
  %5 = load i8*, i8** @FALSE, align 8
  store i8* %5, i8** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @sequenceB, i32 0, i32 0), align 8
  store i64 0, i64* @subcase, align 8
  %6 = load i32, i32* @level, align 4
  switch i32 %6, label %55 [
    i32 1, label %7
    i32 2, label %31
  ]

7:                                                ; preds = %1
  %8 = load i32, i32* %2, align 4
  switch i32 %8, label %30 [
    i32 133, label %9
    i32 136, label %12
    i32 130, label %15
    i32 135, label %21
    i32 129, label %24
  ]

9:                                                ; preds = %7
  %10 = load i32, i32* @int32NumP1, align 4
  %11 = mul nsw i32 3, %10
  store i32 %11, i32* @testCases_total, align 4
  br label %30

12:                                               ; preds = %7
  %13 = load i32, i32* @float32NumQOutP1, align 4
  %14 = mul nsw i32 3, %13
  store i32 %14, i32* @testCases_total, align 4
  br label %30

15:                                               ; preds = %7
  %16 = load i32, i32* @float32NumQInP1, align 4
  %17 = mul nsw i32 6, %16
  %18 = load i32, i32* @float32NumQInP1, align 4
  %19 = mul nsw i32 %17, %18
  store i32 %19, i32* @testCases_total, align 4
  %20 = call i32 @float32NextQInP1(%struct.TYPE_12__* @sequenceA)
  store i32 %20, i32* @current_a_float32, align 4
  br label %30

21:                                               ; preds = %7
  %22 = load i32, i32* @float64NumQOutP1, align 4
  %23 = mul nsw i32 3, %22
  store i32 %23, i32* @testCases_total, align 4
  br label %30

24:                                               ; preds = %7
  %25 = load i32, i32* @float64NumQInP1, align 4
  %26 = mul nsw i32 6, %25
  %27 = load i32, i32* @float64NumQInP1, align 4
  %28 = mul nsw i32 %26, %27
  store i32 %28, i32* @testCases_total, align 4
  %29 = call i32 @float64NextQInP1(%struct.TYPE_12__* @sequenceA)
  store i32 %29, i32* @current_a_float64, align 4
  br label %30

30:                                               ; preds = %7, %24, %21, %15, %12, %9
  br label %55

31:                                               ; preds = %1
  %32 = load i32, i32* %2, align 4
  switch i32 %32, label %54 [
    i32 133, label %33
    i32 136, label %36
    i32 130, label %39
    i32 135, label %45
    i32 129, label %48
  ]

33:                                               ; preds = %31
  %34 = load i32, i32* @int32NumP2, align 4
  %35 = mul nsw i32 2, %34
  store i32 %35, i32* @testCases_total, align 4
  br label %54

36:                                               ; preds = %31
  %37 = load i32, i32* @float32NumQOutP2, align 4
  %38 = mul nsw i32 2, %37
  store i32 %38, i32* @testCases_total, align 4
  br label %54

39:                                               ; preds = %31
  %40 = load i32, i32* @float32NumQInP2, align 4
  %41 = mul nsw i32 2, %40
  %42 = load i32, i32* @float32NumQInP2, align 4
  %43 = mul nsw i32 %41, %42
  store i32 %43, i32* @testCases_total, align 4
  %44 = call i32 @float32NextQInP2(%struct.TYPE_12__* @sequenceA)
  store i32 %44, i32* @current_a_float32, align 4
  br label %54

45:                                               ; preds = %31
  %46 = load i32, i32* @float64NumQOutP2, align 4
  %47 = mul nsw i32 2, %46
  store i32 %47, i32* @testCases_total, align 4
  br label %54

48:                                               ; preds = %31
  %49 = load i32, i32* @float64NumQInP2, align 4
  %50 = mul nsw i32 2, %49
  %51 = load i32, i32* @float64NumQInP2, align 4
  %52 = mul nsw i32 %50, %51
  store i32 %52, i32* @testCases_total, align 4
  %53 = call i32 @float64NextQInP2(%struct.TYPE_12__* @sequenceA)
  store i32 %53, i32* @current_a_float64, align 4
  br label %54

54:                                               ; preds = %31, %48, %45, %39, %36, %33
  br label %55

55:                                               ; preds = %1, %54, %30
  %56 = load i8*, i8** @FALSE, align 8
  store i8* %56, i8** @testCases_done, align 8
  ret void
}

declare dso_local i32 @float32NextQInP1(%struct.TYPE_12__*) #1

declare dso_local i32 @float64NextQInP1(%struct.TYPE_12__*) #1

declare dso_local i32 @float32NextQInP2(%struct.TYPE_12__*) #1

declare dso_local i32 @float64NextQInP2(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
