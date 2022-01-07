; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/getopt/extr_getopt.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/getopt/extr_getopt.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"capsicum\00", align 1
@optind = common dso_local global i32 0, align 4
@optarg = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c" -%c %s\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c" -%c\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c" --\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %7, align 4
  %8 = call i64 (...) @caph_limit_stdio()
  %9 = icmp slt i64 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = call i64 (...) @caph_enter()
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %10, %2
  %14 = call i32 @err(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %10
  store i32 2, i32* @optind, align 4
  br label %16

16:                                               ; preds = %38, %15
  %17 = load i32, i32* %4, align 4
  %18 = load i8**, i8*** %5, align 8
  %19 = load i8**, i8*** %5, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 1
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 @getopt(i32 %17, i8** %18, i8* %21)
  store i32 %22, i32* %6, align 4
  %23 = icmp ne i32 %22, -1
  br i1 %23, label %24, label %39

24:                                               ; preds = %16
  %25 = load i32, i32* %6, align 4
  switch i32 %25, label %27 [
    i32 63, label %26
  ]

26:                                               ; preds = %24
  store i32 1, i32* %7, align 4
  br label %38

27:                                               ; preds = %24
  %28 = load i8*, i8** @optarg, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load i32, i32* %6, align 4
  %32 = load i8*, i8** @optarg, align 8
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %31, i8* %32)
  br label %37

34:                                               ; preds = %27
  %35 = load i32, i32* %6, align 4
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %34, %30
  br label %38

38:                                               ; preds = %37, %26
  br label %16

39:                                               ; preds = %16
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  br label %41

41:                                               ; preds = %52, %39
  %42 = load i32, i32* @optind, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %55

45:                                               ; preds = %41
  %46 = load i8**, i8*** %5, align 8
  %47 = load i32, i32* @optind, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8*, i8** %46, i64 %48
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %50)
  br label %52

52:                                               ; preds = %45
  %53 = load i32, i32* @optind, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* @optind, align 4
  br label %41

55:                                               ; preds = %41
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %57 = load i32, i32* %7, align 4
  ret i32 %57
}

declare dso_local i64 @caph_limit_stdio(...) #1

declare dso_local i64 @caph_enter(...) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
