; ModuleID = '/home/carl/AnghaBench/freebsd/tools/test/testfloat/extr_testCases.c_float64RandomQInfP3.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/test/testfloat/extr_testCases.c_float64RandomQInfP3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@float64NumP2 = common dso_local global i32 0, align 4
@float64P2 = common dso_local global %struct.TYPE_2__* null, align 8
@float64NumQInfWeightMasks = common dso_local global i32 0, align 4
@float64QInfWeightMasks = common dso_local global i32* null, align 8
@float64QInfWeightOffsets = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @float64RandomQInfP3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @float64RandomQInfP3() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = call i32 (...) @randomUint8()
  %9 = load i32, i32* @float64NumP2, align 4
  %10 = srem i32 %8, %9
  %11 = sext i32 %10 to i64
  store i64 %11, i64* %1, align 8
  %12 = call i32 (...) @randomUint8()
  %13 = load i32, i32* @float64NumP2, align 4
  %14 = srem i32 %12, %13
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %2, align 8
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @float64P2, align 8
  %17 = load i64, i64* %1, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %3, align 4
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @float64P2, align 8
  %22 = load i64, i64* %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* %4, align 4
  %28 = add nsw i32 %26, %27
  store i32 %28, i32* %5, align 4
  %29 = call i32 (...) @randomUint8()
  %30 = load i32, i32* @float64NumQInfWeightMasks, align 4
  %31 = srem i32 %29, %30
  %32 = sext i32 %31 to i64
  store i64 %32, i64* %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 (...) @randomUint8()
  %35 = and i32 %34, 1
  %36 = shl i32 %35, 31
  %37 = call i32 (...) @randomUint16()
  %38 = and i32 %37, 4095
  %39 = shl i32 %38, 20
  %40 = load i32*, i32** @float64QInfWeightMasks, align 8
  %41 = load i64, i64* %6, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %39, %43
  %45 = load i32*, i32** @float64QInfWeightOffsets, align 8
  %46 = load i64, i64* %6, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %44, %48
  %50 = or i32 %36, %49
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** @float64P2, align 8
  %52 = load i64, i64* %1, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** @float64P2, align 8
  %57 = load i64, i64* %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %55, %60
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* %3, align 4
  %64 = icmp slt i32 %62, %63
  %65 = zext i1 %64 to i32
  %66 = add nsw i32 %61, %65
  %67 = and i32 %66, 1048575
  %68 = or i32 %50, %67
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @SETFLOAT64(i32 %33, i32 %68, i32 %69)
  %71 = load i32, i32* %7, align 4
  ret i32 %71
}

declare dso_local i32 @randomUint8(...) #1

declare dso_local i32 @SETFLOAT64(i32, i32, i32) #1

declare dso_local i32 @randomUint16(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
