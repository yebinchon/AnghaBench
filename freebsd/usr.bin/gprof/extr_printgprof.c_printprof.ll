; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/gprof/extr_printgprof.c_printprof.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/gprof/extr_printgprof.c_printprof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@actime = common dso_local global double 0.000000e+00, align 8
@.str = private unnamed_addr constant [3 x i8] c"\0C\0A\00", align 1
@nname = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"[printprof] ran out of memory for time sorting\00", align 1
@nl = common dso_local global i32* null, align 8
@timecmp = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printprof() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32**, align 8
  %3 = alloca i32, align 4
  store double 0.000000e+00, double* @actime, align 8
  %4 = call i32 @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %5 = call i32 (...) @flatprofheader()
  %6 = load i32, i32* @nname, align 4
  %7 = call i64 @calloc(i32 %6, i32 8)
  %8 = inttoptr i64 %7 to i32**
  store i32** %8, i32*** %2, align 8
  %9 = load i32**, i32*** %2, align 8
  %10 = icmp eq i32** %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %0
  %12 = call i32 @errx(i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %0
  store i32 0, i32* %3, align 4
  br label %14

14:                                               ; preds = %27, %13
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @nname, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %30

18:                                               ; preds = %14
  %19 = load i32*, i32** @nl, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32**, i32*** %2, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32*, i32** %23, i64 %25
  store i32* %22, i32** %26, align 8
  br label %27

27:                                               ; preds = %18
  %28 = load i32, i32* %3, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %3, align 4
  br label %14

30:                                               ; preds = %14
  %31 = load i32**, i32*** %2, align 8
  %32 = load i32, i32* @nname, align 4
  %33 = load i32, i32* @timecmp, align 4
  %34 = call i32 @qsort(i32** %31, i32 %32, i32 8, i32 %33)
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %47, %30
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @nname, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %50

39:                                               ; preds = %35
  %40 = load i32**, i32*** %2, align 8
  %41 = load i32, i32* %3, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32*, i32** %40, i64 %42
  %44 = load i32*, i32** %43, align 8
  store i32* %44, i32** %1, align 8
  %45 = load i32*, i32** %1, align 8
  %46 = call i32 @flatprofline(i32* %45)
  br label %47

47:                                               ; preds = %39
  %48 = load i32, i32* %3, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %3, align 4
  br label %35

50:                                               ; preds = %35
  store double 0.000000e+00, double* @actime, align 8
  %51 = load i32**, i32*** %2, align 8
  %52 = call i32 @free(i32** %51)
  ret void
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @flatprofheader(...) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @qsort(i32**, i32, i32, i32) #1

declare dso_local i32 @flatprofline(i32*) #1

declare dso_local i32 @free(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
