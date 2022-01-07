; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_bisect--helper.c_write_terms.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_bisect--helper.c_write_terms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [31 x i8] c"please use two different terms\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"bad\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"good\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"could not open the file BISECT_TERMS\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"%s\0A%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @write_terms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_terms(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* null, i32** %6, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i32 @strcmp(i8* %8, i8* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = call i32 @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %14 = call i32 @error(i32 %13)
  store i32 %14, i32* %3, align 4
  br label %45

15:                                               ; preds = %2
  %16 = load i8*, i8** %4, align 8
  %17 = call i64 @check_term_format(i8* %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = load i8*, i8** %5, align 8
  %21 = call i64 @check_term_format(i8* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19, %15
  store i32 -1, i32* %3, align 4
  br label %45

24:                                               ; preds = %19
  %25 = call i32 (...) @git_path_bisect_terms()
  %26 = call i32* @fopen(i32 %25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32* %26, i32** %6, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = call i32 @_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  %31 = call i32 @error_errno(i32 %30)
  store i32 %31, i32* %3, align 4
  br label %45

32:                                               ; preds = %24
  %33 = load i32*, i32** %6, align 8
  %34 = load i8*, i8** %4, align 8
  %35 = load i8*, i8** %5, align 8
  %36 = call i32 @fprintf(i32* %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* %34, i8* %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32*, i32** %6, align 8
  %38 = call i32 @fclose(i32* %37)
  %39 = load i32, i32* %7, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp slt i32 %41, 0
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i32 -1, i32 0
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %32, %29, %23, %12
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @error(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @check_term_format(i8*, i8*) #1

declare dso_local i32* @fopen(i32, i8*) #1

declare dso_local i32 @git_path_bisect_terms(...) #1

declare dso_local i32 @error_errno(i32) #1

declare dso_local i32 @fprintf(i32*, i8*, i8*, i8*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
