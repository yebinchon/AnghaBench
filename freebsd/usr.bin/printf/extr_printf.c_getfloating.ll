; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/printf/extr_printf.c_getfloating.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/printf/extr_printf.c_getfloating.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@gargv = common dso_local global i8** null, align 8
@errno = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"%s: expected numeric value\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"%s: not completely converted\00", align 1
@ERANGE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (x86_fp80*, i32)* @getfloating to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getfloating(x86_fp80* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca x86_fp80*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store x86_fp80* %0, x86_fp80** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i8**, i8*** @gargv, align 8
  %9 = load i8*, i8** %8, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = load x86_fp80*, x86_fp80** %4, align 8
  store x86_fp80 0xK00000000000000000000, x86_fp80* %12, align 16
  store i32 0, i32* %3, align 4
  br label %74

13:                                               ; preds = %2
  %14 = load i8**, i8*** @gargv, align 8
  %15 = load i8*, i8** %14, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 34
  br i1 %18, label %25, label %19

19:                                               ; preds = %13
  %20 = load i8**, i8*** @gargv, align 8
  %21 = load i8*, i8** %20, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 39
  br i1 %24, label %25, label %28

25:                                               ; preds = %19, %13
  %26 = call x86_fp80 (...) @asciicode()
  %27 = load x86_fp80*, x86_fp80** %4, align 8
  store x86_fp80 %26, x86_fp80* %27, align 16
  store i32 0, i32* %3, align 4
  br label %74

28:                                               ; preds = %19
  store i32 0, i32* %7, align 4
  store i64 0, i64* @errno, align 8
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %28
  %32 = load i8**, i8*** @gargv, align 8
  %33 = load i8*, i8** %32, align 8
  %34 = call x86_fp80 @strtold(i8* %33, i8** %6)
  %35 = load x86_fp80*, x86_fp80** %4, align 8
  store x86_fp80 %34, x86_fp80* %35, align 16
  br label %41

36:                                               ; preds = %28
  %37 = load i8**, i8*** @gargv, align 8
  %38 = load i8*, i8** %37, align 8
  %39 = call x86_fp80 @strtod(i8* %38, i8** %6)
  %40 = load x86_fp80*, x86_fp80** %4, align 8
  store x86_fp80 %39, x86_fp80* %40, align 16
  br label %41

41:                                               ; preds = %36, %31
  %42 = load i8*, i8** %6, align 8
  %43 = load i8**, i8*** @gargv, align 8
  %44 = load i8*, i8** %43, align 8
  %45 = icmp eq i8* %42, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load i8**, i8*** @gargv, align 8
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 (i8*, i8*, ...) @warnx(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %48)
  store i32 1, i32* %7, align 4
  br label %60

50:                                               ; preds = %41
  %51 = load i8*, i8** %6, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %50
  %56 = load i8**, i8*** @gargv, align 8
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 (i8*, i8*, ...) @warnx(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %57)
  store i32 1, i32* %7, align 4
  br label %59

59:                                               ; preds = %55, %50
  br label %60

60:                                               ; preds = %59, %46
  %61 = load i64, i64* @errno, align 8
  %62 = load i64, i64* @ERANGE, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %60
  %65 = load i8**, i8*** @gargv, align 8
  %66 = load i8*, i8** %65, align 8
  %67 = load i64, i64* @ERANGE, align 8
  %68 = call i32 @strerror(i64 %67)
  %69 = call i32 (i8*, i8*, ...) @warnx(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %66, i32 %68)
  store i32 1, i32* %7, align 4
  br label %70

70:                                               ; preds = %64, %60
  %71 = load i8**, i8*** @gargv, align 8
  %72 = getelementptr inbounds i8*, i8** %71, i32 1
  store i8** %72, i8*** @gargv, align 8
  %73 = load i32, i32* %7, align 4
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %70, %25, %11
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local x86_fp80 @asciicode(...) #1

declare dso_local x86_fp80 @strtold(i8*, i8**) #1

declare dso_local x86_fp80 @strtod(i8*, i8**) #1

declare dso_local i32 @warnx(i8*, i8*, ...) #1

declare dso_local i32 @strerror(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
