; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/ncal/extr_ncal.c_highlight.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/ncal/extr_ncal.c_highlight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@highlight.first = internal global i32 1, align 4
@highlight.term_so = internal global i8* null, align 8
@highlight.term_se = internal global i8* null, align 8
@highlight.cbuf = internal global [512 x i8] zeroinitializer, align 16
@STDOUT_FILENO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"so\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"se\00", align 1
@flag_nohighlight = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"_\08\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32, i32*)* @highlight to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @highlight(i8* %0, i8* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca [1024 x i8], align 16
  %10 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %11 = load i32, i32* @highlight.first, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %25

13:                                               ; preds = %4
  store i8* null, i8** @highlight.term_so, align 8
  store i8* null, i8** @highlight.term_se, align 8
  %14 = load i32, i32* @STDOUT_FILENO, align 4
  %15 = call i64 @isatty(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %13
  %18 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %19 = call i32 @tgetent(i8* %18, i32* null)
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  store i8* getelementptr inbounds ([512 x i8], [512 x i8]* @highlight.cbuf, i64 0, i64 0), i8** %10, align 8
  %22 = call i8* @tgetstr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %10)
  store i8* %22, i8** @highlight.term_so, align 8
  %23 = call i8* @tgetstr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %10)
  store i8* %23, i8** @highlight.term_se, align 8
  br label %24

24:                                               ; preds = %21, %17, %13
  store i32 0, i32* @highlight.first, align 4
  br label %25

25:                                               ; preds = %24, %4
  %26 = load i64, i64* @flag_nohighlight, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  %29 = load i8*, i8** %5, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @memcpy(i8* %29, i8* %30, i32 %31)
  br label %106

33:                                               ; preds = %25
  %34 = load i8*, i8** @highlight.term_so, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %77

36:                                               ; preds = %33
  %37 = load i8*, i8** @highlight.term_se, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %77

39:                                               ; preds = %36
  %40 = load i8*, i8** %5, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 0
  store i8 32, i8* %41, align 1
  %42 = load i8*, i8** %5, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %5, align 8
  %44 = load i8*, i8** %5, align 8
  %45 = load i8*, i8** @highlight.term_so, align 8
  %46 = load i8*, i8** @highlight.term_so, align 8
  %47 = call i32 @strlen(i8* %46)
  %48 = call i32 @memcpy(i8* %44, i8* %45, i32 %47)
  %49 = load i8*, i8** @highlight.term_so, align 8
  %50 = call i32 @strlen(i8* %49)
  %51 = load i8*, i8** %5, align 8
  %52 = sext i32 %50 to i64
  %53 = getelementptr inbounds i8, i8* %51, i64 %52
  store i8* %53, i8** %5, align 8
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %7, align 4
  %56 = load i8*, i8** %6, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %6, align 8
  %58 = load i8*, i8** %5, align 8
  %59 = load i8*, i8** %6, align 8
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @memcpy(i8* %58, i8* %59, i32 %60)
  %62 = load i32, i32* %7, align 4
  %63 = load i8*, i8** %5, align 8
  %64 = sext i32 %62 to i64
  %65 = getelementptr inbounds i8, i8* %63, i64 %64
  store i8* %65, i8** %5, align 8
  %66 = load i8*, i8** %5, align 8
  %67 = load i8*, i8** @highlight.term_se, align 8
  %68 = load i8*, i8** @highlight.term_se, align 8
  %69 = call i32 @strlen(i8* %68)
  %70 = call i32 @memcpy(i8* %66, i8* %67, i32 %69)
  %71 = load i8*, i8** @highlight.term_so, align 8
  %72 = call i32 @strlen(i8* %71)
  %73 = load i8*, i8** @highlight.term_se, align 8
  %74 = call i32 @strlen(i8* %73)
  %75 = add nsw i32 %72, %74
  %76 = load i32*, i32** %8, align 8
  store i32 %75, i32* %76, align 4
  br label %106

77:                                               ; preds = %36, %33
  %78 = load i32*, i32** %8, align 8
  store i32 0, i32* %78, align 4
  %79 = load i8*, i8** %6, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %80, i8** %6, align 8
  %81 = load i32, i32* %7, align 4
  %82 = add nsw i32 %81, -1
  store i32 %82, i32* %7, align 4
  %83 = load i8*, i8** %5, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 0
  store i8 32, i8* %84, align 1
  %85 = load i8*, i8** %5, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %86, i8** %5, align 8
  br label %87

87:                                               ; preds = %90, %77
  %88 = load i32, i32* %7, align 4
  %89 = icmp sgt i32 %88, 0
  br i1 %89, label %90, label %105

90:                                               ; preds = %87
  %91 = load i8*, i8** %5, align 8
  %92 = call i32 @memcpy(i8* %91, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 2)
  %93 = load i8*, i8** %5, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 2
  store i8* %94, i8** %5, align 8
  %95 = load i32*, i32** %8, align 8
  %96 = load i32, i32* %95, align 4
  %97 = add nsw i32 %96, 2
  store i32 %97, i32* %95, align 4
  %98 = load i8*, i8** %6, align 8
  %99 = getelementptr inbounds i8, i8* %98, i32 1
  store i8* %99, i8** %6, align 8
  %100 = load i8, i8* %98, align 1
  %101 = load i8*, i8** %5, align 8
  %102 = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %102, i8** %5, align 8
  store i8 %100, i8* %101, align 1
  %103 = load i32, i32* %7, align 4
  %104 = add nsw i32 %103, -1
  store i32 %104, i32* %7, align 4
  br label %87

105:                                              ; preds = %87
  br label %106

106:                                              ; preds = %105, %39, %28
  ret void
}

declare dso_local i64 @isatty(i32) #1

declare dso_local i32 @tgetent(i8*, i32*) #1

declare dso_local i8* @tgetstr(i8*, i8**) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
