; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/fold/extr_fold.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/fold/extr_fold.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LC_CTYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"0123456789bsw:\00", align 1
@bflag = common dso_local global i32 0, align 4
@sflag = common dso_local global i32 0, align 4
@optarg = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"illegal width value\00", align 1
@optind = common dso_local global i64 0, align 8
@DEFLINEWIDTH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stdin = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %10 = load i32, i32* @LC_CTYPE, align 4
  %11 = call i32 @setlocale(i32 %10, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %46, %2
  %13 = load i32, i32* %4, align 4
  %14 = load i8**, i8*** %5, align 8
  %15 = call i32 @getopt(i32 %13, i8** %14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  store i32 %15, i32* %6, align 4
  %16 = icmp ne i32 %15, -1
  br i1 %16, label %17, label %48

17:                                               ; preds = %12
  %18 = load i32, i32* %6, align 4
  switch i32 %18, label %44 [
    i32 98, label %19
    i32 115, label %20
    i32 119, label %21
    i32 48, label %28
    i32 49, label %28
    i32 50, label %28
    i32 51, label %28
    i32 52, label %28
    i32 53, label %28
    i32 54, label %28
    i32 55, label %28
    i32 56, label %28
    i32 57, label %28
  ]

19:                                               ; preds = %17
  store i32 1, i32* @bflag, align 4
  br label %46

20:                                               ; preds = %17
  store i32 1, i32* @sflag, align 4
  br label %46

21:                                               ; preds = %17
  %22 = load i32, i32* @optarg, align 4
  %23 = call i32 @atoi(i32 %22)
  store i32 %23, i32* %9, align 4
  %24 = icmp sle i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = call i32 @errx(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %21
  br label %46

28:                                               ; preds = %17, %17, %17, %17, %17, %17, %17, %17, %17, %17
  %29 = load i32, i32* %7, align 4
  switch i32 %29, label %36 [
    i32 48, label %30
    i32 49, label %30
    i32 50, label %30
    i32 51, label %30
    i32 52, label %30
    i32 53, label %30
    i32 54, label %30
    i32 55, label %30
    i32 56, label %30
    i32 57, label %30
  ]

30:                                               ; preds = %28, %28, %28, %28, %28, %28, %28, %28, %28, %28
  %31 = load i32, i32* %9, align 4
  %32 = mul nsw i32 %31, 10
  %33 = load i32, i32* %6, align 4
  %34 = sub nsw i32 %33, 48
  %35 = add nsw i32 %32, %34
  store i32 %35, i32* %9, align 4
  br label %43

36:                                               ; preds = %28
  %37 = load i32, i32* %9, align 4
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i32, i32* %6, align 4
  %41 = sub nsw i32 %40, 48
  store i32 %41, i32* %9, align 4
  br label %42

42:                                               ; preds = %39, %36
  br label %43

43:                                               ; preds = %42, %30
  br label %46

44:                                               ; preds = %17
  %45 = call i32 (...) @usage()
  br label %46

46:                                               ; preds = %44, %43, %27, %20, %19
  %47 = load i32, i32* %6, align 4
  store i32 %47, i32* %7, align 4
  br label %12

48:                                               ; preds = %12
  %49 = load i64, i64* @optind, align 8
  %50 = load i8**, i8*** %5, align 8
  %51 = getelementptr inbounds i8*, i8** %50, i64 %49
  store i8** %51, i8*** %5, align 8
  %52 = load i64, i64* @optind, align 8
  %53 = load i32, i32* %4, align 4
  %54 = sext i32 %53 to i64
  %55 = sub nsw i64 %54, %52
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp eq i32 %57, -1
  br i1 %58, label %59, label %61

59:                                               ; preds = %48
  %60 = load i32, i32* @DEFLINEWIDTH, align 4
  store i32 %60, i32* %9, align 4
  br label %61

61:                                               ; preds = %59, %48
  store i32 0, i32* %8, align 4
  %62 = load i8**, i8*** %5, align 8
  %63 = load i8*, i8** %62, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %61
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @fold(i32 %66)
  br label %91

68:                                               ; preds = %61
  br label %69

69:                                               ; preds = %87, %68
  %70 = load i8**, i8*** %5, align 8
  %71 = load i8*, i8** %70, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %73, label %90

73:                                               ; preds = %69
  %74 = load i8**, i8*** %5, align 8
  %75 = load i8*, i8** %74, align 8
  %76 = load i32, i32* @stdin, align 4
  %77 = call i32 @freopen(i8* %75, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %83, label %79

79:                                               ; preds = %73
  %80 = load i8**, i8*** %5, align 8
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %81)
  store i32 1, i32* %8, align 4
  br label %86

83:                                               ; preds = %73
  %84 = load i32, i32* %9, align 4
  %85 = call i32 @fold(i32 %84)
  br label %86

86:                                               ; preds = %83, %79
  br label %87

87:                                               ; preds = %86
  %88 = load i8**, i8*** %5, align 8
  %89 = getelementptr inbounds i8*, i8** %88, i32 1
  store i8** %89, i8*** %5, align 8
  br label %69

90:                                               ; preds = %69
  br label %91

91:                                               ; preds = %90, %65
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @exit(i32 %92) #3
  unreachable
}

declare dso_local i32 @setlocale(i32, i8*) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @atoi(i32) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @fold(i32) #1

declare dso_local i32 @freopen(i8*, i8*, i32) #1

declare dso_local i32 @warn(i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
