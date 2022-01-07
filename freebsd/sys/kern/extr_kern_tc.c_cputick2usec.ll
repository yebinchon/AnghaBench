; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_tc.c_cputick2usec.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_tc.c_cputick2usec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @cputick2usec(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = icmp sgt i64 %4, 18446744073709551
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = load i64, i64* %3, align 8
  %8 = call i64 (...) @cpu_tickrate()
  %9 = sdiv i64 %8, 1000000
  %10 = sdiv i64 %7, %9
  store i64 %10, i64* %2, align 8
  br label %25

11:                                               ; preds = %1
  %12 = load i64, i64* %3, align 8
  %13 = icmp sgt i64 %12, 18446744073709
  br i1 %13, label %14, label %20

14:                                               ; preds = %11
  %15 = load i64, i64* %3, align 8
  %16 = mul nsw i64 %15, 1000
  %17 = call i64 (...) @cpu_tickrate()
  %18 = sdiv i64 %17, 1000
  %19 = sdiv i64 %16, %18
  store i64 %19, i64* %2, align 8
  br label %25

20:                                               ; preds = %11
  %21 = load i64, i64* %3, align 8
  %22 = mul nsw i64 %21, 1000000
  %23 = call i64 (...) @cpu_tickrate()
  %24 = sdiv i64 %22, %23
  store i64 %24, i64* %2, align 8
  br label %25

25:                                               ; preds = %20, %14, %6
  %26 = load i64, i64* %2, align 8
  ret i64 %26
}

declare dso_local i64 @cpu_tickrate(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
