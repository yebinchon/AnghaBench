; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5212/extr_ar5212_rfgain.c_ar5212GetRfField.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5212/extr_ar5212_rfgain.c_ar5212GetRfField.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_ANALOG_START = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32)* @ar5212GetRfField to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar5212GetRfField(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp sle i32 %16, 3
  %18 = zext i1 %17 to i32
  %19 = call i32 @HALASSERT(i32 %18)
  %20 = load i32, i32* %6, align 4
  %21 = icmp sle i32 %20, 32
  %22 = zext i1 %21 to i32
  %23 = call i32 @HALASSERT(i32 %22)
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %24, %25
  %27 = sext i32 %26 to i64
  %28 = load i64, i64* @MAX_ANALOG_START, align 8
  %29 = icmp sle i64 %27, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @HALASSERT(i32 %30)
  %32 = load i32, i32* %7, align 4
  %33 = sub nsw i32 %32, 1
  %34 = sdiv i32 %33, 8
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %7, align 4
  %36 = sub nsw i32 %35, 1
  %37 = srem i32 %36, 8
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %15, align 4
  store i32 0, i32* %14, align 4
  br label %39

39:                                               ; preds = %52, %4
  %40 = load i32, i32* %15, align 4
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %91

42:                                               ; preds = %39
  %43 = load i32, i32* %13, align 4
  %44 = load i32, i32* %15, align 4
  %45 = add nsw i32 %43, %44
  %46 = icmp sgt i32 %45, 8
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  br label %52

48:                                               ; preds = %42
  %49 = load i32, i32* %13, align 4
  %50 = load i32, i32* %15, align 4
  %51 = add nsw i32 %49, %50
  br label %52

52:                                               ; preds = %48, %47
  %53 = phi i32 [ 8, %47 ], [ %51, %48 ]
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %12, align 4
  %55 = shl i32 1, %54
  %56 = sub nsw i32 %55, 1
  %57 = load i32, i32* %13, align 4
  %58 = shl i32 1, %57
  %59 = sub nsw i32 %58, 1
  %60 = xor i32 %56, %59
  %61 = load i32, i32* %8, align 4
  %62 = mul nsw i32 %61, 8
  %63 = shl i32 %60, %62
  store i32 %63, i32* %10, align 4
  %64 = load i32*, i32** %5, align 8
  %65 = load i32, i32* %11, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %10, align 4
  %70 = and i32 %68, %69
  %71 = load i32, i32* %8, align 4
  %72 = mul nsw i32 %71, 8
  %73 = ashr i32 %70, %72
  %74 = load i32, i32* %13, align 4
  %75 = ashr i32 %73, %74
  %76 = load i32, i32* %14, align 4
  %77 = shl i32 %75, %76
  %78 = load i32, i32* %9, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %9, align 4
  %80 = load i32, i32* %12, align 4
  %81 = load i32, i32* %13, align 4
  %82 = sub nsw i32 %80, %81
  %83 = load i32, i32* %14, align 4
  %84 = add nsw i32 %83, %82
  store i32 %84, i32* %14, align 4
  %85 = load i32, i32* %13, align 4
  %86 = sub nsw i32 8, %85
  %87 = load i32, i32* %15, align 4
  %88 = sub nsw i32 %87, %86
  store i32 %88, i32* %15, align 4
  store i32 0, i32* %13, align 4
  %89 = load i32, i32* %11, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %11, align 4
  br label %39

91:                                               ; preds = %39
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* %6, align 4
  %94 = call i32 @ath_hal_reverseBits(i32 %92, i32 %93)
  store i32 %94, i32* %9, align 4
  %95 = load i32, i32* %9, align 4
  ret i32 %95
}

declare dso_local i32 @HALASSERT(i32) #1

declare dso_local i32 @ath_hal_reverseBits(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
