; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/localedef/extr_localedef.c_open_category.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/localedef/extr_localedef.c_open_category.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@verbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"Writing category %s: \00", align 1
@stdout = common dso_local global i32 0, align 4
@bsd = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @open_category() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = load i64, i64* @verbose, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %10

5:                                                ; preds = %0
  %6 = call i8* (...) @category_name()
  %7 = call i32 @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %6)
  %8 = load i32, i32* @stdout, align 4
  %9 = call i32 @fflush(i32 %8)
  br label %10

10:                                               ; preds = %5, %0
  %11 = load i32, i32* @bsd, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %10
  %14 = call i32 (...) @category_file()
  %15 = call i32 @dirname(i32 %14)
  %16 = call i32 @mkdir(i32 %15, i32 493)
  br label %17

17:                                               ; preds = %13, %10
  %18 = call i32 (...) @category_file()
  %19 = call i32* @fopen(i32 %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %19, i32** %2, align 8
  %20 = load i32*, i32** %2, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load i32, i32* @errno, align 4
  %24 = call i32 @strerror(i32 %23)
  %25 = call i32 @errf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %24)
  store i32* null, i32** %1, align 8
  br label %28

26:                                               ; preds = %17
  %27 = load i32*, i32** %2, align 8
  store i32* %27, i32** %1, align 8
  br label %28

28:                                               ; preds = %26, %22
  %29 = load i32*, i32** %1, align 8
  ret i32* %29
}

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @category_name(...) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @mkdir(i32, i32) #1

declare dso_local i32 @dirname(i32) #1

declare dso_local i32 @category_file(...) #1

declare dso_local i32* @fopen(i32, i8*) #1

declare dso_local i32 @errf(i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
