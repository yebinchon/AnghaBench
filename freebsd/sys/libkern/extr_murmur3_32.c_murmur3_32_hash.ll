; ModuleID = '/home/carl/AnghaBench/freebsd/sys/libkern/extr_murmur3_32.c_murmur3_32_hash.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/libkern/extr_murmur3_32.c_murmur3_32_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @murmur3_32_hash(i8* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to i32*
  store i32* %12, i32** %7, align 8
  %13 = load i64, i64* %5, align 8
  store i64 %13, i64* %10, align 8
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %8, align 4
  br label %15

15:                                               ; preds = %18, %3
  %16 = load i64, i64* %10, align 8
  %17 = icmp uge i64 %16, 4
  br i1 %17, label %18, label %40

18:                                               ; preds = %15
  %19 = load i32*, i32** %7, align 8
  %20 = call i32 @le32dec(i32* %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32*, i32** %7, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 4
  store i32* %22, i32** %7, align 8
  %23 = load i64, i64* %10, align 8
  %24 = sub i64 %23, 4
  store i64 %24, i64* %10, align 8
  %25 = load i32, i32* %9, align 4
  %26 = mul i32 %25, -862048943
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @rol32(i32 %27, i32 15)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = mul nsw i32 %29, 461845907
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %8, align 4
  %33 = xor i32 %32, %31
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @rol32(i32 %34, i32 13)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = mul nsw i32 %36, 5
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = add i32 %38, -430675100
  store i32 %39, i32* %8, align 4
  br label %15

40:                                               ; preds = %15
  %41 = load i64, i64* %10, align 8
  %42 = icmp ugt i64 %41, 0
  br i1 %42, label %43, label %75

43:                                               ; preds = %40
  store i32 0, i32* %9, align 4
  %44 = load i64, i64* %10, align 8
  switch i64 %44, label %74 [
    i64 3, label %45
    i64 2, label %52
    i64 1, label %59
  ]

45:                                               ; preds = %43
  %46 = load i32*, i32** %7, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 2
  %48 = load i32, i32* %47, align 4
  %49 = shl i32 %48, 16
  %50 = load i32, i32* %9, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %9, align 4
  br label %52

52:                                               ; preds = %43, %45
  %53 = load i32*, i32** %7, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 1
  %55 = load i32, i32* %54, align 4
  %56 = shl i32 %55, 8
  %57 = load i32, i32* %9, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %9, align 4
  br label %59

59:                                               ; preds = %43, %52
  %60 = load i32*, i32** %7, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %9, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %9, align 4
  %66 = mul i32 %65, -862048943
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @rol32(i32 %67, i32 15)
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %9, align 4
  %70 = mul nsw i32 %69, 461845907
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* %8, align 4
  %73 = xor i32 %72, %71
  store i32 %73, i32* %8, align 4
  br label %74

74:                                               ; preds = %43, %59
  br label %75

75:                                               ; preds = %74, %40
  %76 = load i64, i64* %5, align 8
  %77 = trunc i64 %76 to i32
  %78 = load i32, i32* %8, align 4
  %79 = xor i32 %78, %77
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %8, align 4
  %81 = ashr i32 %80, 16
  %82 = load i32, i32* %8, align 4
  %83 = xor i32 %82, %81
  store i32 %83, i32* %8, align 4
  %84 = load i32, i32* %8, align 4
  %85 = mul i32 %84, -2048144789
  store i32 %85, i32* %8, align 4
  %86 = load i32, i32* %8, align 4
  %87 = ashr i32 %86, 13
  %88 = load i32, i32* %8, align 4
  %89 = xor i32 %88, %87
  store i32 %89, i32* %8, align 4
  %90 = load i32, i32* %8, align 4
  %91 = mul i32 %90, -1028477387
  store i32 %91, i32* %8, align 4
  %92 = load i32, i32* %8, align 4
  %93 = ashr i32 %92, 16
  %94 = load i32, i32* %8, align 4
  %95 = xor i32 %94, %93
  store i32 %95, i32* %8, align 4
  %96 = load i32, i32* %8, align 4
  ret i32 %96
}

declare dso_local i32 @le32dec(i32*) #1

declare dso_local i32 @rol32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
