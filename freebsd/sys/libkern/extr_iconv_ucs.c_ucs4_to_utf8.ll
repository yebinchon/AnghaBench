; ModuleID = '/home/carl/AnghaBench/freebsd/sys/libkern/extr_iconv_ucs.c_ucs4_to_utf8.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/libkern/extr_iconv_ucs.c_ucs4_to_utf8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, i8*, i64*, i64)* @ucs4_to_utf8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ucs4_to_utf8(i32 %0, i8* %1, i64* %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load i32, i32* %6, align 4
  %15 = icmp slt i32 %14, 128
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  store i64 1, i64* %13, align 8
  store i32 0, i32* %10, align 4
  br label %33

17:                                               ; preds = %4
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %18, 2048
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i64 2, i64* %13, align 8
  store i32 192, i32* %10, align 4
  br label %32

21:                                               ; preds = %17
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %22, 65536
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i64 3, i64* %13, align 8
  store i32 224, i32* %10, align 4
  br label %31

25:                                               ; preds = %21
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %26, 2097152
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i64 4, i64* %13, align 8
  store i32 240, i32* %10, align 4
  br label %30

29:                                               ; preds = %25
  store i32* null, i32** %5, align 8
  br label %66

30:                                               ; preds = %28
  br label %31

31:                                               ; preds = %30, %24
  br label %32

32:                                               ; preds = %31, %20
  br label %33

33:                                               ; preds = %32, %16
  %34 = load i64, i64* %9, align 8
  %35 = load i64, i64* %13, align 8
  %36 = icmp ult i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i32* null, i32** %5, align 8
  br label %66

38:                                               ; preds = %33
  %39 = load i8*, i8** %7, align 8
  %40 = bitcast i8* %39 to i32*
  store i32* %40, i32** %11, align 8
  %41 = load i64, i64* %13, align 8
  %42 = sub i64 %41, 1
  store i64 %42, i64* %12, align 8
  br label %43

43:                                               ; preds = %55, %38
  %44 = load i64, i64* %12, align 8
  %45 = icmp uge i64 %44, 1
  br i1 %45, label %46, label %58

46:                                               ; preds = %43
  %47 = load i32, i32* %6, align 4
  %48 = and i32 %47, 63
  %49 = or i32 %48, 128
  %50 = load i32*, i32** %11, align 8
  %51 = load i64, i64* %12, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  store i32 %49, i32* %52, align 4
  %53 = load i32, i32* %6, align 4
  %54 = ashr i32 %53, 6
  store i32 %54, i32* %6, align 4
  br label %55

55:                                               ; preds = %46
  %56 = load i64, i64* %12, align 8
  %57 = add i64 %56, -1
  store i64 %57, i64* %12, align 8
  br label %43

58:                                               ; preds = %43
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* %10, align 4
  %61 = or i32 %59, %60
  %62 = load i32*, i32** %11, align 8
  store i32 %61, i32* %62, align 4
  %63 = load i64, i64* %13, align 8
  %64 = load i64*, i64** %8, align 8
  store i64 %63, i64* %64, align 8
  %65 = load i32*, i32** %11, align 8
  store i32* %65, i32** %5, align 8
  br label %66

66:                                               ; preds = %58, %37, %29
  %67 = load i32*, i32** %5, align 8
  ret i32* %67
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
