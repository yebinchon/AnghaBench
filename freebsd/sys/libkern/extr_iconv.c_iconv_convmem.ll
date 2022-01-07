; ModuleID = '/home/carl/AnghaBench/freebsd/sys/libkern/extr_iconv.c_iconv_convmem.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/libkern/extr_iconv.c_iconv_convmem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @iconv_convmem(i8* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load i8*, i8** %8, align 8
  store i8* %15, i8** %10, align 8
  %16 = load i8*, i8** %7, align 8
  store i8* %16, i8** %11, align 8
  %17 = load i32, i32* %9, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i8*, i8** %7, align 8
  store i8* %20, i8** %5, align 8
  br label %46

21:                                               ; preds = %4
  %22 = load i8*, i8** %6, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %21
  %25 = load i8*, i8** %7, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @memcpy(i8* %25, i8* %26, i32 %27)
  %29 = load i8*, i8** %7, align 8
  store i8* %29, i8** %5, align 8
  br label %46

30:                                               ; preds = %21
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  store i64 %32, i64* %13, align 8
  store i64 %32, i64* %12, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 @iconv_conv(i8* %33, i8** null, i64* null, i8** %11, i64* %13)
  store i32 %34, i32* %14, align 4
  %35 = load i32, i32* %14, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  store i8* null, i8** %5, align 8
  br label %46

38:                                               ; preds = %30
  %39 = load i8*, i8** %6, align 8
  %40 = call i32 @iconv_conv(i8* %39, i8** %10, i64* %12, i8** %11, i64* %13)
  store i32 %40, i32* %14, align 4
  %41 = load i32, i32* %14, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  store i8* null, i8** %5, align 8
  br label %46

44:                                               ; preds = %38
  %45 = load i8*, i8** %7, align 8
  store i8* %45, i8** %5, align 8
  br label %46

46:                                               ; preds = %44, %43, %37, %24, %19
  %47 = load i8*, i8** %5, align 8
  ret i8* %47
}

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @iconv_conv(i8*, i8**, i64*, i8**, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
