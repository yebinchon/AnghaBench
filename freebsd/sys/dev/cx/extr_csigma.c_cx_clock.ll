; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cx/extr_csigma.c_cx_clock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cx/extr_csigma.c_cx_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cx_clock.clocktab = internal global [6 x i16] [i16 8, i16 32, i16 128, i16 512, i16 2048, i16 0], align 2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cx_clock(i64 %0, i64 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load i32*, i32** %7, align 8
  store i32 0, i32* %10, align 4
  br label %11

11:                                               ; preds = %43, %4
  %12 = load i32*, i32** %7, align 8
  %13 = load i32, i32* %12, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [6 x i16], [6 x i16]* @cx_clock.clocktab, i64 0, i64 %14
  %16 = load i16, i16* %15, align 2
  %17 = icmp ne i16 %16, 0
  br i1 %17, label %18, label %47

18:                                               ; preds = %11
  %19 = load i64, i64* %6, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = load i32, i32* %20, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [6 x i16], [6 x i16]* @cx_clock.clocktab, i64 0, i64 %22
  %24 = load i16, i16* %23, align 2
  %25 = sext i16 %24 to i64
  %26 = mul nsw i64 %19, %25
  store i64 %26, i64* %9, align 8
  %27 = load i64, i64* %5, align 8
  %28 = load i64, i64* %9, align 8
  %29 = mul nsw i64 %28, 256
  %30 = icmp sle i64 %27, %29
  br i1 %30, label %31, label %42

31:                                               ; preds = %18
  %32 = load i64, i64* %5, align 8
  %33 = mul nsw i64 2, %32
  %34 = load i64, i64* %9, align 8
  %35 = add nsw i64 %33, %34
  %36 = load i64, i64* %9, align 8
  %37 = mul nsw i64 2, %36
  %38 = sdiv i64 %35, %37
  %39 = sub nsw i64 %38, 1
  %40 = trunc i64 %39 to i32
  %41 = load i32*, i32** %8, align 8
  store i32 %40, i32* %41, align 4
  br label %50

42:                                               ; preds = %18
  br label %43

43:                                               ; preds = %42
  %44 = load i32*, i32** %7, align 8
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 4
  br label %11

47:                                               ; preds = %11
  %48 = load i32*, i32** %7, align 8
  store i32 0, i32* %48, align 4
  %49 = load i32*, i32** %8, align 8
  store i32 255, i32* %49, align 4
  br label %50

50:                                               ; preds = %47, %31
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
