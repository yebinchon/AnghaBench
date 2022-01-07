; ModuleID = '/home/carl/AnghaBench/freebsd/tools/test/testfloat/extr_testCases.c_float64RandomQInfPInf.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/test/testfloat/extr_testCases.c_float64RandomQInfPInf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@float64NumQInfWeightMasks = common dso_local global i32 0, align 4
@float64QInfWeightMasks = common dso_local global i32* null, align 8
@float64QInfWeightOffsets = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @float64RandomQInfPInf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @float64RandomQInfPInf() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = call i32 (...) @randomUint8()
  %4 = load i32, i32* @float64NumQInfWeightMasks, align 4
  %5 = srem i32 %3, %4
  %6 = sext i32 %5 to i64
  store i64 %6, i64* %1, align 8
  %7 = load i32, i32* %2, align 4
  %8 = call i32 (...) @randomUint8()
  %9 = and i32 %8, 1
  %10 = shl i32 %9, 31
  %11 = call i32 (...) @randomUint16()
  %12 = and i32 %11, 4095
  %13 = shl i32 %12, 20
  %14 = load i32*, i32** @float64QInfWeightMasks, align 8
  %15 = load i64, i64* %1, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %13, %17
  %19 = load i32*, i32** @float64QInfWeightOffsets, align 8
  %20 = load i64, i64* %1, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %18, %22
  %24 = or i32 %10, %23
  %25 = call i32 (...) @randomUint32()
  %26 = and i32 %25, 1048575
  %27 = or i32 %24, %26
  %28 = call i32 (...) @randomUint32()
  %29 = call i32 @SETFLOAT64(i32 %7, i32 %27, i32 %28)
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @randomUint8(...) #1

declare dso_local i32 @SETFLOAT64(i32, i32, i32) #1

declare dso_local i32 @randomUint16(...) #1

declare dso_local i32 @randomUint32(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
