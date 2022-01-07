; ModuleID = '/home/carl/AnghaBench/freebsd/sys/libkern/extr_murmur3_32.c_murmur3_32_hash32.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/libkern/extr_murmur3_32.c_murmur3_32_hash32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @murmur3_32_hash32(i32* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i64, i64* %5, align 8
  store i64 %10, i64* %9, align 8
  %11 = load i32, i32* %6, align 4
  store i32 %11, i32* %7, align 4
  br label %12

12:                                               ; preds = %34, %3
  %13 = load i64, i64* %9, align 8
  %14 = icmp ugt i64 %13, 0
  br i1 %14, label %15, label %39

15:                                               ; preds = %12
  %16 = load i32*, i32** %4, align 8
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @le32toh(i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = mul i32 %19, -862048943
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @rol32(i32 %21, i32 15)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = mul nsw i32 %23, 461845907
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %7, align 4
  %27 = xor i32 %26, %25
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @rol32(i32 %28, i32 13)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = mul nsw i32 %30, 5
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = add i32 %32, -430675100
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %15
  %35 = load i64, i64* %9, align 8
  %36 = add i64 %35, -1
  store i64 %36, i64* %9, align 8
  %37 = load i32*, i32** %4, align 8
  %38 = getelementptr inbounds i32, i32* %37, i32 1
  store i32* %38, i32** %4, align 8
  br label %12

39:                                               ; preds = %12
  %40 = load i64, i64* %5, align 8
  %41 = trunc i64 %40 to i32
  %42 = load i32, i32* %7, align 4
  %43 = xor i32 %42, %41
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = ashr i32 %44, 16
  %46 = load i32, i32* %7, align 4
  %47 = xor i32 %46, %45
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = mul i32 %48, -2048144789
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = ashr i32 %50, 13
  %52 = load i32, i32* %7, align 4
  %53 = xor i32 %52, %51
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = mul i32 %54, -1028477387
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = ashr i32 %56, 16
  %58 = load i32, i32* %7, align 4
  %59 = xor i32 %58, %57
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  ret i32 %60
}

declare dso_local i32 @le32toh(i32) #1

declare dso_local i32 @rol32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
