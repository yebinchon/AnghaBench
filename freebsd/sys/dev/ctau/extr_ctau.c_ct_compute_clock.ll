; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ctau/extr_ctau.c_ct_compute_clock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ctau/extr_ctau.c_ct_compute_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ct_compute_clock(i64 %0, i64 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %9 = load i64, i64* %6, align 8
  %10 = icmp slt i64 %9, 100
  br i1 %10, label %11, label %12

11:                                               ; preds = %4
  store i64 100, i64* %6, align 8
  br label %12

12:                                               ; preds = %11, %4
  %13 = load i32*, i32** %7, align 8
  store i32 0, i32* %13, align 4
  %14 = load i64, i64* %6, align 8
  %15 = mul nsw i64 4, %14
  %16 = load i64, i64* %5, align 8
  %17 = mul nsw i64 3, %16
  %18 = icmp sgt i64 %15, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %12
  %20 = load i32*, i32** %8, align 8
  store i32 1, i32* %20, align 4
  br label %46

21:                                               ; preds = %12
  br label %22

22:                                               ; preds = %32, %21
  %23 = load i64, i64* %5, align 8
  %24 = load i64, i64* %6, align 8
  %25 = sdiv i64 %23, %24
  %26 = load i32*, i32** %7, align 8
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 4
  %29 = zext i32 %28 to i64
  %30 = ashr i64 %25, %29
  %31 = icmp sgt i64 %30, 256
  br i1 %31, label %32, label %33

32:                                               ; preds = %22
  br label %22

33:                                               ; preds = %22
  %34 = load i64, i64* %5, align 8
  %35 = mul nsw i64 2, %34
  %36 = load i64, i64* %6, align 8
  %37 = sdiv i64 %35, %36
  %38 = load i32*, i32** %7, align 8
  %39 = load i32, i32* %38, align 4
  %40 = zext i32 %39 to i64
  %41 = ashr i64 %37, %40
  %42 = add nsw i64 %41, 1
  %43 = sdiv i64 %42, 2
  %44 = trunc i64 %43 to i32
  %45 = load i32*, i32** %8, align 8
  store i32 %44, i32* %45, align 4
  br label %46

46:                                               ; preds = %33, %19
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
