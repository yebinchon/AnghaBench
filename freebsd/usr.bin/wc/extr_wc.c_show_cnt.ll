; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/wc/extr_wc.c_show_cnt.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/wc/extr_wc.c_show_cnt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@siginfo = common dso_local global i64 0, align 8
@stderr_handle = common dso_local global i32* null, align 8
@doline = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c" {:lines/%7ju/%ju}\00", align 1
@doword = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c" {:words/%7ju/%ju}\00", align 1
@dochar = common dso_local global i64 0, align 8
@domulti = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c" {:characters/%7ju/%ju}\00", align 1
@dolongline = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [24 x i8] c" {:long-lines/%7ju/%ju}\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c" {:filename/%s}\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32, i32, i32)* @show_cnt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_cnt(i8* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load i64, i64* @siginfo, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %5
  store i32* null, i32** %11, align 8
  br label %17

15:                                               ; preds = %5
  %16 = load i32*, i32** @stderr_handle, align 8
  store i32* %16, i32** %11, align 8
  store i64 0, i64* @siginfo, align 8
  br label %17

17:                                               ; preds = %15, %14
  %18 = load i64, i64* @doline, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = load i32*, i32** %11, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i32 (i32*, i8*, ...) @xo_emit_h(i32* %21, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %24

24:                                               ; preds = %20, %17
  %25 = load i64, i64* @doword, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load i32*, i32** %11, align 8
  %29 = load i32, i32* %8, align 4
  %30 = call i32 (i32*, i8*, ...) @xo_emit_h(i32* %28, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %27, %24
  %32 = load i64, i64* @dochar, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  %35 = load i64, i64* @domulti, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %34, %31
  %38 = load i32*, i32** %11, align 8
  %39 = load i32, i32* %9, align 4
  %40 = call i32 (i32*, i8*, ...) @xo_emit_h(i32* %38, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %39)
  br label %41

41:                                               ; preds = %37, %34
  %42 = load i64, i64* @dolongline, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = load i32*, i32** %11, align 8
  %46 = load i32, i32* %10, align 4
  %47 = call i32 (i32*, i8*, ...) @xo_emit_h(i32* %45, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %46)
  br label %48

48:                                               ; preds = %44, %41
  %49 = load i8*, i8** %6, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load i32*, i32** %11, align 8
  %53 = load i8*, i8** %6, align 8
  %54 = call i32 (i32*, i8*, ...) @xo_emit_h(i32* %52, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* %53)
  br label %58

55:                                               ; preds = %48
  %56 = load i32*, i32** %11, align 8
  %57 = call i32 (i32*, i8*, ...) @xo_emit_h(i32* %56, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %58

58:                                               ; preds = %55, %51
  ret void
}

declare dso_local i32 @xo_emit_h(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
