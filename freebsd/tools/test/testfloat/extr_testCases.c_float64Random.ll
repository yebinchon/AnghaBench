; ModuleID = '/home/carl/AnghaBench/freebsd/tools/test/testfloat/extr_testCases.c_float64Random.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/test/testfloat/extr_testCases.c_float64Random.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @float64Random to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @float64Random() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @randomUint8()
  %3 = and i32 %2, 7
  switch i32 %3, label %10 [
    i32 0, label %4
    i32 1, label %4
    i32 2, label %4
    i32 3, label %6
    i32 4, label %8
    i32 5, label %8
    i32 6, label %8
  ]

4:                                                ; preds = %0, %0, %0
  %5 = call i32 (...) @float64RandomQOutP3()
  store i32 %5, i32* %1, align 4
  br label %12

6:                                                ; preds = %0
  %7 = call i32 (...) @float64RandomQOutPInf()
  store i32 %7, i32* %1, align 4
  br label %12

8:                                                ; preds = %0, %0, %0
  %9 = call i32 (...) @float64RandomQInfP3()
  store i32 %9, i32* %1, align 4
  br label %12

10:                                               ; preds = %0
  %11 = call i32 (...) @float64RandomQInfPInf()
  store i32 %11, i32* %1, align 4
  br label %12

12:                                               ; preds = %10, %8, %6, %4
  %13 = load i32, i32* %1, align 4
  ret i32 %13
}

declare dso_local i32 @randomUint8(...) #1

declare dso_local i32 @float64RandomQOutP3(...) #1

declare dso_local i32 @float64RandomQOutPInf(...) #1

declare dso_local i32 @float64RandomQInfP3(...) #1

declare dso_local i32 @float64RandomQInfPInf(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
