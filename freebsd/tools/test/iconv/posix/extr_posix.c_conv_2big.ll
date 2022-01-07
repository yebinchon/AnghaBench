; ModuleID = '/home/carl/AnghaBench/freebsd/tools/test/iconv/posix/extr_posix.c_conv_2big.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/test/iconv/posix/extr_posix.c_conv_2big.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1
@errno = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @conv_2big to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @conv_2big() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [4 x i32], align 16
  %8 = alloca [2 x i32], align 4
  %9 = alloca i32, align 4
  %10 = call i32 @iconv_open(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %10, i32* %2, align 4
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %12, label %13

12:                                               ; preds = %0
  store i32 1, i32* %1, align 4
  br label %53

13:                                               ; preds = %0
  %14 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %15 = bitcast i32* %14 to i8*
  store i8* %15, i8** %5, align 8
  %16 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %17 = bitcast i32* %16 to i8*
  store i8* %17, i8** %6, align 8
  store i64 16, i64* %3, align 8
  store i64 8, i64* %4, align 8
  store i32 0, i32* @errno, align 4
  %18 = load i32, i32* %2, align 4
  %19 = call i32 @iconv(i32 %18, i8** %5, i64* %3, i8** %6, i64* %4)
  store i32 %19, i32* %9, align 4
  %20 = load i8*, i8** %5, align 8
  %21 = bitcast i8* %20 to i32*
  %22 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %23 = ptrtoint i32* %21 to i64
  %24 = ptrtoint i32* %22 to i64
  %25 = sub i64 %23, %24
  %26 = sdiv exact i64 %25, 4
  %27 = icmp eq i64 %26, 8
  br i1 %27, label %28, label %52

28:                                               ; preds = %13
  %29 = load i64, i64* %3, align 8
  %30 = icmp eq i64 %29, 8
  br i1 %30, label %31, label %52

31:                                               ; preds = %28
  %32 = load i64, i64* %4, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %52

34:                                               ; preds = %31
  %35 = load i8*, i8** %6, align 8
  %36 = bitcast i8* %35 to i32*
  %37 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %38 = ptrtoint i32* %36 to i64
  %39 = ptrtoint i32* %37 to i64
  %40 = sub i64 %38, %39
  %41 = sdiv exact i64 %40, 4
  %42 = icmp eq i64 %41, 8
  br i1 %42, label %43, label %52

43:                                               ; preds = %34
  %44 = load i32, i32* @errno, align 4
  %45 = load i32, i32* @E2BIG, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %43
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = icmp eq i64 %49, -1
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  store i32 0, i32* %1, align 4
  br label %53

52:                                               ; preds = %47, %43, %34, %31, %28, %13
  store i32 1, i32* %1, align 4
  br label %53

53:                                               ; preds = %52, %51, %12
  %54 = load i32, i32* %1, align 4
  ret i32 %54
}

declare dso_local i32 @iconv_open(i8*, i8*) #1

declare dso_local i32 @iconv(i32, i8**, i64*, i8**, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
