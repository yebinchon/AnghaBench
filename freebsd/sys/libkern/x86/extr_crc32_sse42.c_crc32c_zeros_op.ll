; ModuleID = '/home/carl/AnghaBench/freebsd/sys/libkern/x86/extr_crc32_sse42.c_crc32c_zeros_op.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/libkern/x86/extr_crc32_sse42.c_crc32c_zeros_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@POLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64)* @crc32c_zeros_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @crc32c_zeros_op(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca [32 x i32], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i32, i32* @POLY, align 4
  %9 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 0
  store i32 %8, i32* %9, align 16
  store i32 1, i32* %6, align 4
  store i32 1, i32* %7, align 4
  br label %10

10:                                               ; preds = %20, %2
  %11 = load i32, i32* %7, align 4
  %12 = icmp slt i32 %11, 32
  br i1 %12, label %13, label %23

13:                                               ; preds = %10
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 %16
  store i32 %14, i32* %17, align 4
  %18 = load i32, i32* %6, align 4
  %19 = shl i32 %18, 1
  store i32 %19, i32* %6, align 4
  br label %20

20:                                               ; preds = %13
  %21 = load i32, i32* %7, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %7, align 4
  br label %10

23:                                               ; preds = %10
  %24 = load i32*, i32** %3, align 8
  %25 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 0
  %26 = call i32 @gf2_matrix_square(i32* %24, i32* %25)
  %27 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 0
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 @gf2_matrix_square(i32* %27, i32* %28)
  br label %30

30:                                               ; preds = %45, %23
  %31 = load i32*, i32** %3, align 8
  %32 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 0
  %33 = call i32 @gf2_matrix_square(i32* %31, i32* %32)
  %34 = load i64, i64* %4, align 8
  %35 = lshr i64 %34, 1
  store i64 %35, i64* %4, align 8
  %36 = load i64, i64* %4, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  br label %64

39:                                               ; preds = %30
  %40 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 0
  %41 = load i32*, i32** %3, align 8
  %42 = call i32 @gf2_matrix_square(i32* %40, i32* %41)
  %43 = load i64, i64* %4, align 8
  %44 = lshr i64 %43, 1
  store i64 %44, i64* %4, align 8
  br label %45

45:                                               ; preds = %39
  %46 = load i64, i64* %4, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %30, label %48

48:                                               ; preds = %45
  store i32 0, i32* %7, align 4
  br label %49

49:                                               ; preds = %61, %48
  %50 = load i32, i32* %7, align 4
  %51 = icmp slt i32 %50, 32
  br i1 %51, label %52, label %64

52:                                               ; preds = %49
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = load i32*, i32** %3, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  store i32 %56, i32* %60, align 4
  br label %61

61:                                               ; preds = %52
  %62 = load i32, i32* %7, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %7, align 4
  br label %49

64:                                               ; preds = %38, %49
  ret void
}

declare dso_local i32 @gf2_matrix_square(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
