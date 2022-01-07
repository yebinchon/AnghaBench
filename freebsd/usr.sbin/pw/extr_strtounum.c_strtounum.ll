; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pw/extr_strtounum.c_strtounum.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pw/extr_strtounum.c_strtounum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"invalid\00", align 1
@ERANGE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"too small\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"too large\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @strtounum(i8* noalias %0, i64 %1, i64 %2, i8** noalias %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i8** %3, i8*** %9, align 8
  %12 = load i8**, i8*** %9, align 8
  store i8* null, i8** %12, align 8
  %13 = load i64, i64* %7, align 8
  %14 = load i64, i64* %8, align 8
  %15 = icmp sgt i64 %13, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %4
  %17 = load i64, i64* @EINVAL, align 8
  store i64 %17, i64* @errno, align 8
  %18 = load i8**, i8*** %9, align 8
  %19 = icmp ne i8** %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i8**, i8*** %9, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %21, align 8
  br label %22

22:                                               ; preds = %20, %16
  store i64 0, i64* %5, align 8
  br label %69

23:                                               ; preds = %4
  store i64 0, i64* @errno, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = call i64 @strtoumax(i8* %24, i8** %10, i32 10)
  store i64 %25, i64* %11, align 8
  %26 = load i8*, i8** %10, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = icmp eq i8* %26, %27
  br i1 %28, label %34, label %29

29:                                               ; preds = %23
  %30 = load i8*, i8** %10, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %29, %23
  %35 = load i64, i64* @EINVAL, align 8
  store i64 %35, i64* @errno, align 8
  %36 = load i8**, i8*** %9, align 8
  %37 = icmp ne i8** %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i8**, i8*** %9, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %39, align 8
  br label %40

40:                                               ; preds = %38, %34
  store i64 0, i64* %5, align 8
  br label %69

41:                                               ; preds = %29
  %42 = load i64, i64* %11, align 8
  %43 = load i64, i64* %7, align 8
  %44 = icmp slt i64 %42, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %41
  %46 = load i64, i64* @ERANGE, align 8
  store i64 %46, i64* @errno, align 8
  %47 = load i8**, i8*** %9, align 8
  %48 = icmp ne i8** %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = load i8**, i8*** %9, align 8
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8** %50, align 8
  br label %51

51:                                               ; preds = %49, %45
  store i64 0, i64* %5, align 8
  br label %69

52:                                               ; preds = %41
  %53 = load i64, i64* @errno, align 8
  %54 = load i64, i64* @ERANGE, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %60, label %56

56:                                               ; preds = %52
  %57 = load i64, i64* %11, align 8
  %58 = load i64, i64* %8, align 8
  %59 = icmp sgt i64 %57, %58
  br i1 %59, label %60, label %67

60:                                               ; preds = %56, %52
  %61 = load i64, i64* @ERANGE, align 8
  store i64 %61, i64* @errno, align 8
  %62 = load i8**, i8*** %9, align 8
  %63 = icmp ne i8** %62, null
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = load i8**, i8*** %9, align 8
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8** %65, align 8
  br label %66

66:                                               ; preds = %64, %60
  store i64 0, i64* %5, align 8
  br label %69

67:                                               ; preds = %56
  %68 = load i64, i64* %11, align 8
  store i64 %68, i64* %5, align 8
  br label %69

69:                                               ; preds = %67, %66, %51, %40, %22
  %70 = load i64, i64* %5, align 8
  ret i64 %70
}

declare dso_local i64 @strtoumax(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
