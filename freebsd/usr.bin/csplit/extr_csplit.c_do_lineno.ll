; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/csplit/extr_csplit.c_do_lineno.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/csplit/extr_csplit.c_do_lineno.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"%s: bad line number\00", align 1
@lineno = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"%s: can't go backwards\00", align 1
@nfiles = common dso_local global i32 0, align 4
@maxfiles = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"%ld: out of range\00", align 1
@EOF = common dso_local global i64 0, align 8
@sflag = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"%jd\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@currfile = common dso_local global i32 0, align 4
@reps = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @do_lineno to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_lineno(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  store i64 0, i64* @errno, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = call i64 @strtol(i8* %8, i8** %5, i32 10)
  store i64 %9, i64* %4, align 8
  %10 = load i64, i64* %4, align 8
  %11 = icmp sle i64 %10, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %1
  %13 = load i64, i64* @errno, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %12
  %16 = load i8*, i8** %5, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15, %12, %1
  %21 = load i8*, i8** %2, align 8
  %22 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %21)
  br label %23

23:                                               ; preds = %20, %15
  %24 = load i64, i64* %4, align 8
  store i64 %24, i64* %3, align 8
  %25 = load i64, i64* %3, align 8
  %26 = load i64, i64* @lineno, align 8
  %27 = icmp sle i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load i8*, i8** %2, align 8
  %30 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %29)
  br label %31

31:                                               ; preds = %28, %23
  br label %32

32:                                               ; preds = %78, %31
  %33 = load i32, i32* @nfiles, align 4
  %34 = load i32, i32* @maxfiles, align 4
  %35 = sub nsw i32 %34, 1
  %36 = icmp slt i32 %33, %35
  br i1 %36, label %37, label %82

37:                                               ; preds = %32
  %38 = call i32* (...) @newfile()
  store i32* %38, i32** %7, align 8
  br label %39

39:                                               ; preds = %57, %37
  %40 = load i64, i64* @lineno, align 8
  %41 = add nsw i64 %40, 1
  %42 = load i64, i64* %3, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %58

44:                                               ; preds = %39
  %45 = call i8* (...) @get_line()
  store i8* %45, i8** %6, align 8
  %46 = icmp eq i8* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load i64, i64* %3, align 8
  %49 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i64 %48)
  br label %50

50:                                               ; preds = %47, %44
  %51 = load i8*, i8** %6, align 8
  %52 = load i32*, i32** %7, align 8
  %53 = call i64 @fputs(i8* %51, i32* %52)
  %54 = load i64, i64* @EOF, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  br label %58

57:                                               ; preds = %50
  br label %39

58:                                               ; preds = %56, %39
  %59 = load i32, i32* @sflag, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %58
  %62 = load i32*, i32** %7, align 8
  %63 = call i64 @ftello(i32* %62)
  %64 = trunc i64 %63 to i32
  %65 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %64)
  br label %66

66:                                               ; preds = %61, %58
  %67 = load i32*, i32** %7, align 8
  %68 = call i64 @fclose(i32* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %66
  %71 = load i32, i32* @currfile, align 4
  %72 = call i32 @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %71)
  br label %73

73:                                               ; preds = %70, %66
  %74 = load i32, i32* @reps, align 4
  %75 = add nsw i32 %74, -1
  store i32 %75, i32* @reps, align 4
  %76 = icmp eq i32 %74, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %73
  br label %82

78:                                               ; preds = %73
  %79 = load i64, i64* %4, align 8
  %80 = load i64, i64* %3, align 8
  %81 = add nsw i64 %80, %79
  store i64 %81, i64* %3, align 8
  br label %32

82:                                               ; preds = %77, %32
  ret void
}

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i32* @newfile(...) #1

declare dso_local i8* @get_line(...) #1

declare dso_local i64 @fputs(i8*, i32*) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i64 @ftello(i32*) #1

declare dso_local i64 @fclose(i32*) #1

declare dso_local i32 @err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
