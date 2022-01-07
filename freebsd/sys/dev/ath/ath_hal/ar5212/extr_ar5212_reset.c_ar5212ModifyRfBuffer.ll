; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5212/extr_ar5212_reset.c_ar5212ModifyRfBuffer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5212/extr_ar5212_reset.c_ar5212ModifyRfBuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_ANALOG_START = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar5212ModifyRfBuffer(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp sle i32 %17, 3
  %19 = zext i1 %18 to i32
  %20 = call i32 @HALASSERT(i32 %19)
  %21 = load i32, i32* %8, align 4
  %22 = icmp sle i32 %21, 32
  %23 = zext i1 %22 to i32
  %24 = call i32 @HALASSERT(i32 %23)
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %8, align 4
  %27 = add nsw i32 %25, %26
  %28 = icmp sle i32 %27, 319
  %29 = zext i1 %28 to i32
  %30 = call i32 @HALASSERT(i32 %29)
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @ath_hal_reverseBits(i32 %31, i32 %32)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %9, align 4
  %35 = sub nsw i32 %34, 1
  %36 = sdiv i32 %35, 8
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %9, align 4
  %38 = sub nsw i32 %37, 1
  %39 = srem i32 %38, 8
  store i32 %39, i32* %15, align 4
  %40 = load i32, i32* %8, align 4
  store i32 %40, i32* %16, align 4
  br label %41

41:                                               ; preds = %54, %5
  %42 = load i32, i32* %16, align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %98

44:                                               ; preds = %41
  %45 = load i32, i32* %15, align 4
  %46 = load i32, i32* %16, align 4
  %47 = add nsw i32 %45, %46
  %48 = icmp sgt i32 %47, 8
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  br label %54

50:                                               ; preds = %44
  %51 = load i32, i32* %15, align 4
  %52 = load i32, i32* %16, align 4
  %53 = add nsw i32 %51, %52
  br label %54

54:                                               ; preds = %50, %49
  %55 = phi i32 [ 8, %49 ], [ %53, %50 ]
  store i32 %55, i32* %14, align 4
  %56 = load i32, i32* %14, align 4
  %57 = shl i32 1, %56
  %58 = sub nsw i32 %57, 1
  %59 = load i32, i32* %15, align 4
  %60 = shl i32 1, %59
  %61 = sub nsw i32 %60, 1
  %62 = xor i32 %58, %61
  %63 = load i32, i32* %10, align 4
  %64 = mul nsw i32 %63, 8
  %65 = shl i32 %62, %64
  store i32 %65, i32* %12, align 4
  %66 = load i32, i32* %12, align 4
  %67 = xor i32 %66, -1
  %68 = load i32*, i32** %6, align 8
  %69 = load i32, i32* %13, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = and i32 %72, %67
  store i32 %73, i32* %71, align 4
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* %15, align 4
  %76 = shl i32 %74, %75
  %77 = load i32, i32* %10, align 4
  %78 = mul nsw i32 %77, 8
  %79 = shl i32 %76, %78
  %80 = load i32, i32* %12, align 4
  %81 = and i32 %79, %80
  %82 = load i32*, i32** %6, align 8
  %83 = load i32, i32* %13, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %86, %81
  store i32 %87, i32* %85, align 4
  %88 = load i32, i32* %15, align 4
  %89 = sub nsw i32 8, %88
  %90 = load i32, i32* %16, align 4
  %91 = sub nsw i32 %90, %89
  store i32 %91, i32* %16, align 4
  %92 = load i32, i32* %11, align 4
  %93 = load i32, i32* %15, align 4
  %94 = sub nsw i32 8, %93
  %95 = ashr i32 %92, %94
  store i32 %95, i32* %11, align 4
  store i32 0, i32* %15, align 4
  %96 = load i32, i32* %13, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %13, align 4
  br label %41

98:                                               ; preds = %41
  ret void
}

declare dso_local i32 @HALASSERT(i32) #1

declare dso_local i32 @ath_hal_reverseBits(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
