; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/patch/extr_inp.c_ifetch.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/patch/extr_inp.c_ifetch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@input_lines = common dso_local global i32 0, align 4
@warn_on_invalid_line = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"No such line %ld in input file, ignoring\0A\00", align 1
@using_plan_a = common dso_local global i64 0, align 8
@i_ptr = common dso_local global i8** null, align 8
@lines_per_buf = common dso_local global i32 0, align 4
@tiline = common dso_local global i32* null, align 8
@tifd = common dso_local global i32 0, align 4
@tibuflen = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"cannot seek in the temporary input file\00", align 1
@tibuf = common dso_local global i8** null, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"error reading tmp file %s\00", align 1
@TMPINNAME = common dso_local global i32 0, align 4
@tireclen = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ifetch(i32 %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %8, 1
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @input_lines, align 4
  %13 = icmp sgt i32 %11, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %10, %2
  %15 = load i32, i32* @warn_on_invalid_line, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @say(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %18)
  store i32 0, i32* @warn_on_invalid_line, align 4
  br label %20

20:                                               ; preds = %17, %14
  store i8* null, i8** %3, align 8
  br label %95

21:                                               ; preds = %10
  %22 = load i64, i64* @using_plan_a, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %21
  %25 = load i8**, i8*** @i_ptr, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8*, i8** %25, i64 %27
  %29 = load i8*, i8** %28, align 8
  store i8* %29, i8** %3, align 8
  br label %95

30:                                               ; preds = %21
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @lines_per_buf, align 4
  %33 = srem i32 %31, %32
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* %6, align 4
  %36 = sub nsw i32 %34, %35
  store i32 %36, i32* %7, align 4
  %37 = load i32*, i32** @tiline, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %30
  store i32 0, i32* %5, align 4
  br label %84

43:                                               ; preds = %30
  %44 = load i32*, i32** @tiline, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  store i32 1, i32* %5, align 4
  br label %83

50:                                               ; preds = %43
  %51 = load i32, i32* %7, align 4
  %52 = load i32*, i32** @tiline, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  store i32 %51, i32* %55, align 4
  %56 = load i32, i32* @tifd, align 4
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @lines_per_buf, align 4
  %59 = sdiv i32 %57, %58
  %60 = load i32, i32* @tibuflen, align 4
  %61 = mul nsw i32 %59, %60
  %62 = load i32, i32* @SEEK_SET, align 4
  %63 = call i64 @lseek(i32 %56, i32 %61, i32 %62)
  %64 = icmp slt i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %50
  %66 = call i32 (i8*, ...) @pfatal(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %67

67:                                               ; preds = %65, %50
  %68 = load i32, i32* @tifd, align 4
  %69 = load i8**, i8*** @tibuf, align 8
  %70 = load i32, i32* %5, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8*, i8** %69, i64 %71
  %73 = load i8*, i8** %72, align 8
  %74 = load i32, i32* @tibuflen, align 4
  %75 = call i64 @read(i32 %68, i8* %73, i32 %74)
  %76 = load i32, i32* @tibuflen, align 4
  %77 = sext i32 %76 to i64
  %78 = icmp ne i64 %75, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %67
  %80 = load i32, i32* @TMPINNAME, align 4
  %81 = call i32 (i8*, ...) @pfatal(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %80)
  br label %82

82:                                               ; preds = %79, %67
  br label %83

83:                                               ; preds = %82, %49
  br label %84

84:                                               ; preds = %83, %42
  %85 = load i8**, i8*** @tibuf, align 8
  %86 = load i32, i32* %5, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8*, i8** %85, i64 %87
  %89 = load i8*, i8** %88, align 8
  %90 = load i32, i32* @tireclen, align 4
  %91 = load i32, i32* %6, align 4
  %92 = mul nsw i32 %90, %91
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8, i8* %89, i64 %93
  store i8* %94, i8** %3, align 8
  br label %95

95:                                               ; preds = %84, %24, %20
  %96 = load i8*, i8** %3, align 8
  ret i8* %96
}

declare dso_local i32 @say(i8*, i32) #1

declare dso_local i64 @lseek(i32, i32, i32) #1

declare dso_local i32 @pfatal(i8*, ...) #1

declare dso_local i64 @read(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
