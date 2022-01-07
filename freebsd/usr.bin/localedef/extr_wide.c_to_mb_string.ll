; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/localedef/extr_wide.c_to_mb_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/localedef/extr_wide.c_to_mb_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mb_cur_max = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@INTERR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @to_mb_string(i32* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = call i32 @wcslen(i32* %7)
  %9 = load i32, i32* @mb_cur_max, align 4
  %10 = mul nsw i32 %8, %9
  %11 = add nsw i32 %10, 1
  %12 = call i8* @malloc(i32 %11)
  store i8* %12, i8** %4, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = call i32 @warn(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i8* null, i8** %2, align 8
  br label %43

17:                                               ; preds = %1
  %18 = load i8*, i8** %4, align 8
  store i8* %18, i8** %5, align 8
  br label %19

19:                                               ; preds = %33, %17
  %20 = load i32*, i32** %3, align 8
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %40

23:                                               ; preds = %19
  %24 = load i8*, i8** %5, align 8
  %25 = load i32*, i32** %3, align 8
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @to_mb(i8* %24, i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = load i32, i32* @INTERR, align 4
  %31 = load i8*, i8** %4, align 8
  %32 = call i32 @free(i8* %31)
  store i8* null, i8** %2, align 8
  br label %43

33:                                               ; preds = %23
  %34 = load i32*, i32** %3, align 8
  %35 = getelementptr inbounds i32, i32* %34, i32 1
  store i32* %35, i32** %3, align 8
  %36 = load i32, i32* %6, align 4
  %37 = load i8*, i8** %5, align 8
  %38 = sext i32 %36 to i64
  %39 = getelementptr inbounds i8, i8* %37, i64 %38
  store i8* %39, i8** %5, align 8
  br label %19

40:                                               ; preds = %19
  %41 = load i8*, i8** %5, align 8
  store i8 0, i8* %41, align 1
  %42 = load i8*, i8** %4, align 8
  store i8* %42, i8** %2, align 8
  br label %43

43:                                               ; preds = %40, %29, %15
  %44 = load i8*, i8** %2, align 8
  ret i8* %44
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @wcslen(i32*) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @to_mb(i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
