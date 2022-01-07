; ModuleID = '/home/carl/AnghaBench/gb-studio/buildTools/darwin-x64/gbdk/libc/extr__divslong.c__divslong.c'
source_filename = "/home/carl/AnghaBench/gb-studio/buildTools/darwin-x64/gbdk/libc/extr__divslong.c__divslong.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @_divslong(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %4, align 8
  %8 = icmp slt i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i64, i64* %4, align 8
  %11 = sub nsw i64 0, %10
  br label %14

12:                                               ; preds = %2
  %13 = load i64, i64* %4, align 8
  br label %14

14:                                               ; preds = %12, %9
  %15 = phi i64 [ %11, %9 ], [ %13, %12 ]
  %16 = load i64, i64* %5, align 8
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load i64, i64* %5, align 8
  %20 = sub nsw i64 0, %19
  br label %23

21:                                               ; preds = %14
  %22 = load i64, i64* %5, align 8
  br label %23

23:                                               ; preds = %21, %18
  %24 = phi i64 [ %20, %18 ], [ %22, %21 ]
  %25 = call i64 @_divulong(i64 %15, i64 %24)
  store i64 %25, i64* %6, align 8
  %26 = load i64, i64* %4, align 8
  %27 = icmp slt i64 %26, 0
  %28 = zext i1 %27 to i32
  %29 = load i64, i64* %5, align 8
  %30 = icmp slt i64 %29, 0
  %31 = zext i1 %30 to i32
  %32 = xor i32 %28, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %23
  %35 = load i64, i64* %6, align 8
  %36 = sub nsw i64 0, %35
  store i64 %36, i64* %3, align 8
  br label %39

37:                                               ; preds = %23
  %38 = load i64, i64* %6, align 8
  store i64 %38, i64* %3, align 8
  br label %39

39:                                               ; preds = %37, %34
  %40 = load i64, i64* %3, align 8
  ret i64 %40
}

declare dso_local i64 @_divulong(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
