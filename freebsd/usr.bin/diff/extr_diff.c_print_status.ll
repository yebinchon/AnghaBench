; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/diff/extr_diff.c_print_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/diff/extr_diff.c_print_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [35 x i8] c"Binary files %s%s and %s%s differ\0A\00", align 1
@diff_format = common dso_local global i32 0, align 4
@D_BRIEF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Files %s%s and %s%s differ\0A\00", align 1
@sflag = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Files %s%s and %s%s are identical\0A\00", align 1
@.str.3 = private unnamed_addr constant [60 x i8] c"File %s%s is a directory while file %s%s is a regular file\0A\00", align 1
@.str.4 = private unnamed_addr constant [60 x i8] c"File %s%s is a regular file while file %s%s is a directory\0A\00", align 1
@.str.5 = private unnamed_addr constant [62 x i8] c"File %s%s is not a regular file or directory and was skipped\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_status(i32 %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %57 [
    i32 134, label %10
    i32 133, label %16
    i32 130, label %27
    i32 132, label %37
    i32 131, label %43
    i32 129, label %49
    i32 128, label %53
  ]

10:                                               ; preds = %4
  %11 = load i8*, i8** %6, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = call i32 (i8*, i8*, i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %11, i8* %12, i8* %13, i8* %14)
  br label %57

16:                                               ; preds = %4
  %17 = load i32, i32* @diff_format, align 4
  %18 = load i32, i32* @D_BRIEF, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %16
  %21 = load i8*, i8** %6, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = call i32 (i8*, i8*, i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %21, i8* %22, i8* %23, i8* %24)
  br label %26

26:                                               ; preds = %20, %16
  br label %57

27:                                               ; preds = %4
  %28 = load i32, i32* @sflag, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %27
  %31 = load i8*, i8** %6, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = call i32 (i8*, i8*, i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i8* %31, i8* %32, i8* %33, i8* %34)
  br label %36

36:                                               ; preds = %30, %27
  br label %57

37:                                               ; preds = %4
  %38 = load i8*, i8** %6, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = call i32 (i8*, i8*, i8*, ...) @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0), i8* %38, i8* %39, i8* %40, i8* %41)
  br label %57

43:                                               ; preds = %4
  %44 = load i8*, i8** %6, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = load i8*, i8** %8, align 8
  %48 = call i32 (i8*, i8*, i8*, ...) @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.4, i64 0, i64 0), i8* %44, i8* %45, i8* %46, i8* %47)
  br label %57

49:                                               ; preds = %4
  %50 = load i8*, i8** %6, align 8
  %51 = load i8*, i8** %8, align 8
  %52 = call i32 (i8*, i8*, i8*, ...) @printf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.5, i64 0, i64 0), i8* %50, i8* %51)
  br label %57

53:                                               ; preds = %4
  %54 = load i8*, i8** %7, align 8
  %55 = load i8*, i8** %8, align 8
  %56 = call i32 (i8*, i8*, i8*, ...) @printf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.5, i64 0, i64 0), i8* %54, i8* %55)
  br label %57

57:                                               ; preds = %4, %53, %49, %43, %37, %36, %26, %10
  ret void
}

declare dso_local i32 @printf(i8*, i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
