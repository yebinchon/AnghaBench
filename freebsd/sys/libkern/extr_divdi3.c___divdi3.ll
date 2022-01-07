; ModuleID = '/home/carl/AnghaBench/freebsd/sys/libkern/extr_divdi3.c___divdi3.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/libkern/extr_divdi3.c___divdi3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @__divdi3(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load i64, i64* %3, align 8
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i64, i64* %3, align 8
  %13 = sub nsw i64 0, %12
  store i64 %13, i64* %5, align 8
  store i32 1, i32* %8, align 4
  br label %16

14:                                               ; preds = %2
  %15 = load i64, i64* %3, align 8
  store i64 %15, i64* %5, align 8
  store i32 0, i32* %8, align 4
  br label %16

16:                                               ; preds = %14, %11
  %17 = load i64, i64* %4, align 8
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %16
  %20 = load i64, i64* %4, align 8
  %21 = sub nsw i64 0, %20
  store i64 %21, i64* %6, align 8
  %22 = load i32, i32* %8, align 4
  %23 = xor i32 %22, 1
  store i32 %23, i32* %8, align 4
  br label %26

24:                                               ; preds = %16
  %25 = load i64, i64* %4, align 8
  store i64 %25, i64* %6, align 8
  br label %26

26:                                               ; preds = %24, %19
  %27 = load i64, i64* %5, align 8
  %28 = load i64, i64* %6, align 8
  %29 = call i64 @__qdivrem(i64 %27, i64 %28, i64* null)
  store i64 %29, i64* %7, align 8
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load i64, i64* %7, align 8
  %34 = sub nsw i64 0, %33
  br label %37

35:                                               ; preds = %26
  %36 = load i64, i64* %7, align 8
  br label %37

37:                                               ; preds = %35, %32
  %38 = phi i64 [ %34, %32 ], [ %36, %35 ]
  ret i64 %38
}

declare dso_local i64 @__qdivrem(i64, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
