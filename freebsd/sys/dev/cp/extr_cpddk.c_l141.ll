; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cp/extr_cpddk.c_l141.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cp/extr_cpddk.c_l141.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i32*, i32*)* @l141 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l141(i64 %0, i64 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %9 = load i32*, i32** %7, align 8
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %11, %4
  br label %15

11:                                               ; preds = %46
  %12 = load i32*, i32** %7, align 8
  %13 = load i32, i32* %12, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %12, align 4
  br label %10

15:                                               ; preds = %10
  %16 = load i64, i64* %5, align 8
  %17 = mul nsw i64 2, %16
  %18 = load i64, i64* %6, align 8
  %19 = sdiv i64 %17, %18
  %20 = load i32*, i32** %7, align 8
  %21 = load i32, i32* %20, align 4
  %22 = zext i32 %21 to i64
  %23 = ashr i64 %19, %22
  %24 = add nsw i64 %23, 1
  %25 = sdiv i64 %24, 2
  %26 = sub nsw i64 %25, 1
  %27 = trunc i64 %26 to i32
  %28 = load i32*, i32** %8, align 8
  store i32 %27, i32* %28, align 4
  %29 = load i32*, i32** %8, align 8
  %30 = load i32, i32* %29, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %15
  %33 = load i32*, i32** %7, align 8
  %34 = load i32, i32* %33, align 4
  %35 = icmp sgt i32 %34, 15
  br i1 %35, label %37, label %36

36:                                               ; preds = %32
  br label %40

37:                                               ; preds = %32, %15
  %38 = load i32*, i32** %7, align 8
  store i32 0, i32* %38, align 4
  %39 = load i32*, i32** %8, align 8
  store i32 0, i32* %39, align 4
  br label %47

40:                                               ; preds = %36
  %41 = load i32*, i32** %8, align 8
  %42 = load i32, i32* %41, align 4
  %43 = icmp sle i32 %42, 63
  br i1 %43, label %45, label %44

44:                                               ; preds = %40
  br label %46

45:                                               ; preds = %40
  br label %47

46:                                               ; preds = %44
  br label %11

47:                                               ; preds = %37, %45
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
