; ModuleID = '/home/carl/AnghaBench/freebsd/sys/libkern/extr_iconv_ucs.c_utf8_to_ucs4.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/libkern/extr_iconv_ucs.c_utf8_to_ucs4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64*, i64)* @utf8_to_ucs4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @utf8_to_ucs4(i8* %0, i64* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %9, align 8
  store i32 0, i32* %10, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = and i32 %13, 128
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  store i64 1, i64* %9, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = and i32 %19, 127
  store i32 %20, i32* %10, align 4
  br label %58

21:                                               ; preds = %3
  %22 = load i8*, i8** %5, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = and i32 %24, 224
  %26 = icmp eq i32 %25, 192
  br i1 %26, label %27, label %32

27:                                               ; preds = %21
  store i64 2, i64* %9, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = and i32 %30, 31
  store i32 %31, i32* %10, align 4
  br label %57

32:                                               ; preds = %21
  %33 = load i8*, i8** %5, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = and i32 %35, 240
  %37 = icmp eq i32 %36, 224
  br i1 %37, label %38, label %43

38:                                               ; preds = %32
  store i64 3, i64* %9, align 8
  %39 = load i8*, i8** %5, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = and i32 %41, 15
  store i32 %42, i32* %10, align 4
  br label %56

43:                                               ; preds = %32
  %44 = load i8*, i8** %5, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = and i32 %46, 248
  %48 = icmp eq i32 %47, 240
  br i1 %48, label %49, label %54

49:                                               ; preds = %43
  store i64 4, i64* %9, align 8
  %50 = load i8*, i8** %5, align 8
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = and i32 %52, 7
  store i32 %53, i32* %10, align 4
  br label %55

54:                                               ; preds = %43
  store i32 0, i32* %4, align 4
  br label %95

55:                                               ; preds = %49
  br label %56

56:                                               ; preds = %55, %38
  br label %57

57:                                               ; preds = %56, %27
  br label %58

58:                                               ; preds = %57, %16
  %59 = load i64, i64* %7, align 8
  %60 = load i64, i64* %9, align 8
  %61 = icmp ult i64 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  store i32 0, i32* %4, align 4
  br label %95

63:                                               ; preds = %58
  store i64 1, i64* %8, align 8
  br label %64

64:                                               ; preds = %88, %63
  %65 = load i64, i64* %8, align 8
  %66 = load i64, i64* %9, align 8
  %67 = icmp ult i64 %65, %66
  br i1 %67, label %68, label %91

68:                                               ; preds = %64
  %69 = load i8*, i8** %5, align 8
  %70 = load i64, i64* %8, align 8
  %71 = getelementptr inbounds i8, i8* %69, i64 %70
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = and i32 %73, 192
  %75 = icmp ne i32 %74, 128
  br i1 %75, label %76, label %77

76:                                               ; preds = %68
  store i32 0, i32* %4, align 4
  br label %95

77:                                               ; preds = %68
  %78 = load i32, i32* %10, align 4
  %79 = shl i32 %78, 6
  store i32 %79, i32* %10, align 4
  %80 = load i8*, i8** %5, align 8
  %81 = load i64, i64* %8, align 8
  %82 = getelementptr inbounds i8, i8* %80, i64 %81
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = and i32 %84, 63
  %86 = load i32, i32* %10, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %10, align 4
  br label %88

88:                                               ; preds = %77
  %89 = load i64, i64* %8, align 8
  %90 = add i64 %89, 1
  store i64 %90, i64* %8, align 8
  br label %64

91:                                               ; preds = %64
  %92 = load i64, i64* %9, align 8
  %93 = load i64*, i64** %6, align 8
  store i64 %92, i64* %93, align 8
  %94 = load i32, i32* %10, align 4
  store i32 %94, i32* %4, align 4
  br label %95

95:                                               ; preds = %91, %76, %62, %54
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
