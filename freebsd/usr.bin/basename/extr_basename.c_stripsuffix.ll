; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/basename/extr_basename.c_stripsuffix.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/basename/extr_basename.c_stripsuffix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MB_LEN_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stripsuffix(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load i64, i64* %6, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %57

13:                                               ; preds = %3
  %14 = load i8*, i8** %4, align 8
  %15 = call i32 @strchr(i8* %14, i8 signext 0)
  %16 = sext i32 %15 to i64
  %17 = load i64, i64* %6, align 8
  %18 = sub i64 %16, %17
  %19 = inttoptr i64 %18 to i8*
  store i8* %19, i8** %7, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = icmp ugt i8* %19, %20
  br i1 %21, label %22, label %57

22:                                               ; preds = %13
  %23 = load i8*, i8** %5, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = call i64 @strcmp(i8* %23, i8* %24)
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %57

27:                                               ; preds = %22
  %28 = call i32 @memset(i32* %9, i32 0, i32 4)
  %29 = load i8*, i8** %4, align 8
  store i8* %29, i8** %8, align 8
  br label %30

30:                                               ; preds = %46, %27
  %31 = load i8*, i8** %8, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = icmp ult i8* %31, %32
  br i1 %33, label %34, label %50

34:                                               ; preds = %30
  %35 = load i8*, i8** %8, align 8
  %36 = load i32, i32* @MB_LEN_MAX, align 4
  %37 = call i64 @mbrlen(i8* %35, i32 %36, i32* %9)
  store i64 %37, i64* %10, align 8
  %38 = load i64, i64* %10, align 8
  %39 = icmp eq i64 %38, -1
  br i1 %39, label %43, label %40

40:                                               ; preds = %34
  %41 = load i64, i64* %10, align 8
  %42 = icmp eq i64 %41, -2
  br i1 %42, label %43, label %45

43:                                               ; preds = %40, %34
  %44 = call i32 @memset(i32* %9, i32 0, i32 4)
  store i64 1, i64* %10, align 8
  br label %45

45:                                               ; preds = %43, %40
  br label %46

46:                                               ; preds = %45
  %47 = load i64, i64* %10, align 8
  %48 = load i8*, i8** %8, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 %47
  store i8* %49, i8** %8, align 8
  br label %30

50:                                               ; preds = %30
  %51 = load i8*, i8** %7, align 8
  %52 = load i8*, i8** %8, align 8
  %53 = icmp eq i8* %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = load i8*, i8** %7, align 8
  store i8 0, i8* %55, align 1
  br label %56

56:                                               ; preds = %54, %50
  br label %57

57:                                               ; preds = %56, %22, %13, %3
  ret void
}

declare dso_local i32 @strchr(i8*, i8 signext) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @mbrlen(i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
