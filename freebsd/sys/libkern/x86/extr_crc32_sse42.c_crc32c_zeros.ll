; ModuleID = '/home/carl/AnghaBench/freebsd/sys/libkern/x86/extr_crc32_sse42.c_crc32c_zeros.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/libkern/x86/extr_crc32_sse42.c_crc32c_zeros.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void ([256 x i32]*, i64)* @crc32c_zeros to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @crc32c_zeros([256 x i32]* %0, i64 %1) #0 {
  %3 = alloca [256 x i32]*, align 8
  %4 = alloca i64, align 8
  %5 = alloca [32 x i32], align 16
  %6 = alloca i32, align 4
  store [256 x i32]* %0, [256 x i32]** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 0
  %8 = load i64, i64* %4, align 8
  %9 = call i32 @crc32c_zeros_op(i32* %7, i64 %8)
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %49, %2
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %11, 256
  br i1 %12, label %13, label %52

13:                                               ; preds = %10
  %14 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 0
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @gf2_matrix_times(i32* %14, i32 %15)
  %17 = load [256 x i32]*, [256 x i32]** %3, align 8
  %18 = getelementptr inbounds [256 x i32], [256 x i32]* %17, i64 0
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [256 x i32], [256 x i32]* %18, i64 0, i64 %20
  store i32 %16, i32* %21, align 4
  %22 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 0
  %23 = load i32, i32* %6, align 4
  %24 = shl i32 %23, 8
  %25 = call i32 @gf2_matrix_times(i32* %22, i32 %24)
  %26 = load [256 x i32]*, [256 x i32]** %3, align 8
  %27 = getelementptr inbounds [256 x i32], [256 x i32]* %26, i64 1
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [256 x i32], [256 x i32]* %27, i64 0, i64 %29
  store i32 %25, i32* %30, align 4
  %31 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 0
  %32 = load i32, i32* %6, align 4
  %33 = shl i32 %32, 16
  %34 = call i32 @gf2_matrix_times(i32* %31, i32 %33)
  %35 = load [256 x i32]*, [256 x i32]** %3, align 8
  %36 = getelementptr inbounds [256 x i32], [256 x i32]* %35, i64 2
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [256 x i32], [256 x i32]* %36, i64 0, i64 %38
  store i32 %34, i32* %39, align 4
  %40 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 0
  %41 = load i32, i32* %6, align 4
  %42 = shl i32 %41, 24
  %43 = call i32 @gf2_matrix_times(i32* %40, i32 %42)
  %44 = load [256 x i32]*, [256 x i32]** %3, align 8
  %45 = getelementptr inbounds [256 x i32], [256 x i32]* %44, i64 3
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [256 x i32], [256 x i32]* %45, i64 0, i64 %47
  store i32 %43, i32* %48, align 4
  br label %49

49:                                               ; preds = %13
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %6, align 4
  br label %10

52:                                               ; preds = %10
  ret void
}

declare dso_local i32 @crc32c_zeros_op(i32*, i64) #1

declare dso_local i32 @gf2_matrix_times(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
