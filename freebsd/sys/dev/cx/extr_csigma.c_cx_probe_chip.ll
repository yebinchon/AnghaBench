; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cx/extr_csigma.c_cx_probe_chip.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cx/extr_csigma.c_cx_probe_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REVCL_MIN = common dso_local global i32 0, align 4
@REVCL_MAX = common dso_local global i32 0, align 4
@REVCL31_MIN = common dso_local global i32 0, align 4
@REVCL31_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @cx_probe_chip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx_probe_chip(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %18, %1
  %8 = load i32, i32* %4, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %7
  %11 = load i32, i32* %6, align 4
  %12 = icmp sge i32 %11, 20000
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %52

14:                                               ; preds = %10
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @GFRCR(i32 %15)
  %17 = call i32 @inb(i32 %16)
  store i32 %17, i32* %4, align 4
  br label %18

18:                                               ; preds = %14
  %19 = load i32, i32* %6, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %6, align 4
  br label %7

21:                                               ; preds = %7
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @REVCL_MIN, align 4
  %24 = icmp sge i32 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @REVCL_MAX, align 4
  %28 = icmp sle i32 %26, %27
  br i1 %28, label %38, label %29

29:                                               ; preds = %25, %21
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @REVCL31_MIN, align 4
  %32 = icmp sge i32 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @REVCL31_MAX, align 4
  %36 = icmp sle i32 %34, %35
  br i1 %36, label %38, label %37

37:                                               ; preds = %33, %29
  store i32 0, i32* %2, align 4
  br label %52

38:                                               ; preds = %33, %25
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @cx_reset(i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %38
  store i32 0, i32* %2, align 4
  br label %52

43:                                               ; preds = %38
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @GFRCR(i32 %44)
  %46 = call i32 @inb(i32 %45)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* %4, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  store i32 0, i32* %2, align 4
  br label %52

51:                                               ; preds = %43
  store i32 1, i32* %2, align 4
  br label %52

52:                                               ; preds = %51, %50, %42, %37, %13
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @GFRCR(i32) #1

declare dso_local i32 @cx_reset(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
