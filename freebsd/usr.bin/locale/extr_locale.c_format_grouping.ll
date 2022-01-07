; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/locale/extr_locale.c_format_grouping.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/locale/extr_locale.c_format_grouping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@format_grouping.rval = internal global [64 x i8] zeroinitializer, align 16
@CHAR_MAX = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [4 x i8] c"%u;\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @format_grouping(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i32
  %10 = load i8, i8* @CHAR_MAX, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %9, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i8*, i8** %3, align 8
  store i8* %14, i8** %2, align 8
  br label %64

15:                                               ; preds = %1
  store i8 0, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @format_grouping.rval, i64 0, i64 0), align 16
  store i64 0, i64* %5, align 8
  %16 = load i8*, i8** %3, align 8
  store i8* %16, i8** %4, align 8
  br label %17

17:                                               ; preds = %53, %15
  %18 = load i8*, i8** %4, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %56

22:                                               ; preds = %17
  %23 = load i64, i64* %5, align 8
  %24 = getelementptr inbounds [64 x i8], [64 x i8]* @format_grouping.rval, i64 0, i64 %23
  %25 = load i64, i64* %5, align 8
  %26 = sub i64 64, %25
  %27 = trunc i64 %26 to i32
  %28 = load i8*, i8** %4, align 8
  %29 = load i8, i8* %28, align 1
  %30 = call i32 @snprintf(i8* %24, i32 %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8 signext %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %22
  %34 = load i32, i32* %6, align 4
  %35 = zext i32 %34 to i64
  %36 = load i64, i64* %5, align 8
  %37 = sub i64 64, %36
  %38 = icmp uge i64 %35, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %33, %22
  br label %56

40:                                               ; preds = %33
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = load i64, i64* %5, align 8
  %44 = add i64 %43, %42
  store i64 %44, i64* %5, align 8
  %45 = load i8*, i8** %4, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = load i8, i8* @CHAR_MAX, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %47, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %40
  br label %56

52:                                               ; preds = %40
  br label %53

53:                                               ; preds = %52
  %54 = load i8*, i8** %4, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %4, align 8
  br label %17

56:                                               ; preds = %51, %39, %17
  %57 = load i64, i64* %5, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %56
  %60 = load i64, i64* %5, align 8
  %61 = sub i64 %60, 1
  %62 = getelementptr inbounds [64 x i8], [64 x i8]* @format_grouping.rval, i64 0, i64 %61
  store i8 0, i8* %62, align 1
  br label %63

63:                                               ; preds = %59, %56
  store i8* getelementptr inbounds ([64 x i8], [64 x i8]* @format_grouping.rval, i64 0, i64 0), i8** %2, align 8
  br label %64

64:                                               ; preds = %63, %13
  %65 = load i8*, i8** %2, align 8
  ret i8* %65
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
