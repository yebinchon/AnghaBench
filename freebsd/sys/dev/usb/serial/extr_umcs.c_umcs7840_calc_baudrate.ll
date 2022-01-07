; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_umcs.c_umcs7840_calc_baudrate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_umcs.c_umcs7840_calc_baudrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@umcs7840_baudrate_divisors = common dso_local global i32* null, align 8
@umcs7840_baudrate_divisors_len = common dso_local global i32 0, align 4
@MCS7840_DEV_SPx_CLOCK_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32*)* @umcs7840_calc_baudrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @umcs7840_calc_baudrate(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32*, i32** @umcs7840_baudrate_divisors, align 8
  %11 = load i32, i32* @umcs7840_baudrate_divisors_len, align 4
  %12 = sub nsw i32 %11, 1
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %10, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = icmp sgt i32 %9, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %70

18:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %19

19:                                               ; preds = %47, %18
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @umcs7840_baudrate_divisors_len, align 4
  %22 = sub nsw i32 %21, 1
  %23 = icmp slt i32 %20, %22
  br i1 %23, label %24, label %44

24:                                               ; preds = %19
  %25 = load i32, i32* %5, align 4
  %26 = load i32*, i32** @umcs7840_baudrate_divisors, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = icmp sgt i32 %25, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %24
  %33 = load i32, i32* %5, align 4
  %34 = load i32*, i32** @umcs7840_baudrate_divisors, align 8
  %35 = load i32, i32* %8, align 4
  %36 = add nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %34, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = icmp sle i32 %33, %39
  br label %41

41:                                               ; preds = %32, %24
  %42 = phi i1 [ false, %24 ], [ %40, %32 ]
  %43 = xor i1 %42, true
  br label %44

44:                                               ; preds = %41, %19
  %45 = phi i1 [ false, %19 ], [ %43, %41 ]
  br i1 %45, label %46, label %50

46:                                               ; preds = %44
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %8, align 4
  br label %19

50:                                               ; preds = %44
  %51 = load i32, i32* %5, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = load i32*, i32** %6, align 8
  store i32 1, i32* %54, align 4
  br label %65

55:                                               ; preds = %50
  %56 = load i32*, i32** @umcs7840_baudrate_divisors, align 8
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %56, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %5, align 4
  %63 = sdiv i32 %61, %62
  %64 = load i32*, i32** %6, align 8
  store i32 %63, i32* %64, align 4
  br label %65

65:                                               ; preds = %55, %53
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* @MCS7840_DEV_SPx_CLOCK_SHIFT, align 4
  %68 = shl i32 %66, %67
  %69 = load i32*, i32** %7, align 8
  store i32 %68, i32* %69, align 4
  store i32 0, i32* %4, align 4
  br label %70

70:                                               ; preds = %65, %17
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
