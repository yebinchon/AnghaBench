; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/dirname/extr_dirname.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/dirname/extr_dirname.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"capsicum\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@optind = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %8 = call i64 (...) @caph_limit_stdio()
  %9 = icmp slt i64 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = call i64 (...) @caph_enter()
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %10, %2
  %14 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %10
  br label %16

16:                                               ; preds = %26, %15
  %17 = load i32, i32* %4, align 4
  %18 = load i8**, i8*** %5, align 8
  %19 = call i32 @getopt(i32 %17, i8** %18, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  store i32 %19, i32* %7, align 4
  %20 = icmp ne i32 %19, -1
  br i1 %20, label %21, label %27

21:                                               ; preds = %16
  %22 = load i32, i32* %7, align 4
  switch i32 %22, label %24 [
    i32 63, label %23
  ]

23:                                               ; preds = %21
  br label %24

24:                                               ; preds = %21, %23
  %25 = call i32 (...) @usage()
  br label %26

26:                                               ; preds = %24
  br label %16

27:                                               ; preds = %16
  %28 = load i64, i64* @optind, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = sub nsw i64 %30, %28
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %4, align 4
  %33 = load i64, i64* @optind, align 8
  %34 = load i8**, i8*** %5, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i64 %33
  store i8** %35, i8*** %5, align 8
  %36 = load i32, i32* %4, align 4
  %37 = icmp slt i32 %36, 1
  br i1 %37, label %38, label %40

38:                                               ; preds = %27
  %39 = call i32 (...) @usage()
  br label %40

40:                                               ; preds = %38, %27
  br label %41

41:                                               ; preds = %54, %40
  %42 = load i32, i32* %4, align 4
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* %4, align 4
  %44 = icmp ne i32 %42, 0
  br i1 %44, label %45, label %59

45:                                               ; preds = %41
  %46 = load i8**, i8*** %5, align 8
  %47 = load i8*, i8** %46, align 8
  %48 = call i8* @dirname(i8* %47)
  store i8* %48, i8** %6, align 8
  %49 = icmp eq i8* %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load i8**, i8*** %5, align 8
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %52)
  br label %54

54:                                               ; preds = %50, %45
  %55 = load i8**, i8*** %5, align 8
  %56 = getelementptr inbounds i8*, i8** %55, i32 1
  store i8** %56, i8*** %5, align 8
  %57 = load i8*, i8** %6, align 8
  %58 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %57)
  br label %41

59:                                               ; preds = %41
  %60 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i64 @caph_limit_stdio(...) #1

declare dso_local i64 @caph_enter(...) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i8* @dirname(i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

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
