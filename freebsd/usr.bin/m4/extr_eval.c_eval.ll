; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/m4/extr_eval.c_eval.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/m4/extr_eval.c_eval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SIZE_MAX = common dso_local global i64 0, align 8
@expansion_id = common dso_local global i32 0, align 4
@RECDEF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"expanding recursive definition for %s.\00", align 1
@infile = common dso_local global i64 0, align 8
@ilevel = common dso_local global i64 0, align 8
@MACRTYPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @eval(i8** %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i8** %0, i8*** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i64, i64* @SIZE_MAX, align 8
  store i64 %10, i64* %9, align 8
  %11 = load i32, i32* @expansion_id, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* @expansion_id, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @RECDEF, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %4
  %18 = load i8**, i8*** %5, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 1
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 @m4errx(i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %20)
  br label %22

22:                                               ; preds = %17, %4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %22
  %26 = load i8**, i8*** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load i64, i64* @infile, align 8
  %29 = load i64, i64* @ilevel, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i64 @trace(i8** %26, i32 %27, i64 %30)
  store i64 %31, i64* %9, align 8
  br label %32

32:                                               ; preds = %25, %22
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @MACRTYPE, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load i8**, i8*** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @expand_macro(i8** %37, i32 %38)
  br label %45

40:                                               ; preds = %32
  %41 = load i8**, i8*** %5, align 8
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @expand_builtin(i8** %41, i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %40, %36
  %46 = load i64, i64* %9, align 8
  %47 = load i64, i64* @SIZE_MAX, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i64, i64* %9, align 8
  %51 = call i32 @finish_trace(i64 %50)
  br label %52

52:                                               ; preds = %49, %45
  ret void
}

declare dso_local i32 @m4errx(i32, i8*, i8*) #1

declare dso_local i64 @trace(i8**, i32, i64) #1

declare dso_local i32 @expand_macro(i8**, i32) #1

declare dso_local i32 @expand_builtin(i8**, i32, i32) #1

declare dso_local i32 @finish_trace(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
