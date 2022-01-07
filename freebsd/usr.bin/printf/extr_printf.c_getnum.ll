; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/printf/extr_printf.c_getnum.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/printf/extr_printf.c_getnum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@gargv = common dso_local global i8** null, align 8
@errno = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"%s: expected numeric value\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"%s: not completely converted\00", align 1
@ERANGE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i8**, i32)* @getnum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getnum(i8** %0, i8** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i8** %0, i8*** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i8**, i8*** @gargv, align 8
  %11 = load i8*, i8** %10, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i8**, i8*** %6, align 8
  store i8* null, i8** %14, align 8
  %15 = load i8**, i8*** %5, align 8
  store i8* null, i8** %15, align 8
  store i32 0, i32* %4, align 4
  br label %84

16:                                               ; preds = %3
  %17 = load i8**, i8*** @gargv, align 8
  %18 = load i8*, i8** %17, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 34
  br i1 %21, label %28, label %22

22:                                               ; preds = %16
  %23 = load i8**, i8*** @gargv, align 8
  %24 = load i8*, i8** %23, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 39
  br i1 %27, label %28, label %38

28:                                               ; preds = %22, %16
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = call i8* (...) @asciicode()
  %33 = load i8**, i8*** %5, align 8
  store i8* %32, i8** %33, align 8
  br label %37

34:                                               ; preds = %28
  %35 = call i8* (...) @asciicode()
  %36 = load i8**, i8*** %6, align 8
  store i8* %35, i8** %36, align 8
  br label %37

37:                                               ; preds = %34, %31
  store i32 0, i32* %4, align 4
  br label %84

38:                                               ; preds = %22
  store i32 0, i32* %9, align 4
  store i64 0, i64* @errno, align 8
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = load i8**, i8*** @gargv, align 8
  %43 = load i8*, i8** %42, align 8
  %44 = call i8* @strtoimax(i8* %43, i8** %8, i32 0)
  %45 = load i8**, i8*** %5, align 8
  store i8* %44, i8** %45, align 8
  br label %51

46:                                               ; preds = %38
  %47 = load i8**, i8*** @gargv, align 8
  %48 = load i8*, i8** %47, align 8
  %49 = call i8* @strtoumax(i8* %48, i8** %8, i32 0)
  %50 = load i8**, i8*** %6, align 8
  store i8* %49, i8** %50, align 8
  br label %51

51:                                               ; preds = %46, %41
  %52 = load i8*, i8** %8, align 8
  %53 = load i8**, i8*** @gargv, align 8
  %54 = load i8*, i8** %53, align 8
  %55 = icmp eq i8* %52, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = load i8**, i8*** @gargv, align 8
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 (i8*, i8*, ...) @warnx(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %58)
  store i32 1, i32* %9, align 4
  br label %70

60:                                               ; preds = %51
  %61 = load i8*, i8** %8, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = load i8**, i8*** @gargv, align 8
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 (i8*, i8*, ...) @warnx(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %67)
  store i32 1, i32* %9, align 4
  br label %69

69:                                               ; preds = %65, %60
  br label %70

70:                                               ; preds = %69, %56
  %71 = load i64, i64* @errno, align 8
  %72 = load i64, i64* @ERANGE, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %80

74:                                               ; preds = %70
  %75 = load i8**, i8*** @gargv, align 8
  %76 = load i8*, i8** %75, align 8
  %77 = load i64, i64* @ERANGE, align 8
  %78 = call i32 @strerror(i64 %77)
  %79 = call i32 (i8*, i8*, ...) @warnx(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %76, i32 %78)
  store i32 1, i32* %9, align 4
  br label %80

80:                                               ; preds = %74, %70
  %81 = load i8**, i8*** @gargv, align 8
  %82 = getelementptr inbounds i8*, i8** %81, i32 1
  store i8** %82, i8*** @gargv, align 8
  %83 = load i32, i32* %9, align 4
  store i32 %83, i32* %4, align 4
  br label %84

84:                                               ; preds = %80, %37, %13
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i8* @asciicode(...) #1

declare dso_local i8* @strtoimax(i8*, i8**, i32) #1

declare dso_local i8* @strtoumax(i8*, i8**, i32) #1

declare dso_local i32 @warnx(i8*, i8*, ...) #1

declare dso_local i32 @strerror(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
