; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/tip/tip/extr_tip.c_prompt.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/tip/tip/extr_tip.c_prompt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stoprompt = common dso_local global i64 0, align 8
@SIGINT = common dso_local global i32 0, align 4
@intprompt = common dso_local global i32 0, align 4
@SIGQUIT = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@promptbuf = common dso_local global i32 0, align 4
@EOF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @prompt(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load i8*, i8** %5, align 8
  store i8* %11, i8** %8, align 8
  store i64 0, i64* @stoprompt, align 8
  %12 = load i32, i32* @SIGINT, align 4
  %13 = load i32, i32* @intprompt, align 4
  %14 = call i32 @signal(i32 %12, i32 %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* @SIGQUIT, align 4
  %16 = load i32, i32* @SIG_IGN, align 4
  %17 = call i32 @signal(i32 %15, i32 %16)
  store i32 %17, i32* %10, align 4
  %18 = call i32 (...) @unraw()
  %19 = load i8*, i8** %4, align 8
  %20 = call i32 @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %19)
  %21 = load i32, i32* @promptbuf, align 4
  %22 = call i64 @setjmp(i32 %21) #3
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %45

24:                                               ; preds = %3
  br label %25

25:                                               ; preds = %41, %24
  %26 = call i32 (...) @getchar()
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* @EOF, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %39

29:                                               ; preds = %25
  %30 = load i32, i32* %7, align 4
  %31 = trunc i32 %30 to i8
  %32 = load i8*, i8** %5, align 8
  store i8 %31, i8* %32, align 1
  %33 = sext i8 %31 to i32
  %34 = icmp ne i32 %33, 10
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load i64, i64* %6, align 8
  %37 = add i64 %36, -1
  store i64 %37, i64* %6, align 8
  %38 = icmp ugt i64 %37, 0
  br label %39

39:                                               ; preds = %35, %29, %25
  %40 = phi i1 [ false, %29 ], [ false, %25 ], [ %38, %35 ]
  br i1 %40, label %41, label %44

41:                                               ; preds = %39
  %42 = load i8*, i8** %5, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %5, align 8
  br label %25

44:                                               ; preds = %39
  br label %45

45:                                               ; preds = %44, %3
  %46 = load i8*, i8** %5, align 8
  store i8 0, i8* %46, align 1
  %47 = call i32 (...) @raw()
  %48 = load i32, i32* @SIGINT, align 4
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @signal(i32 %48, i32 %49)
  %51 = load i32, i32* @SIGQUIT, align 4
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @signal(i32 %51, i32 %52)
  %54 = load i64, i64* @stoprompt, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %45
  %57 = load i8*, i8** %5, align 8
  %58 = load i8*, i8** %8, align 8
  %59 = icmp eq i8* %57, %58
  br label %60

60:                                               ; preds = %56, %45
  %61 = phi i1 [ true, %45 ], [ %59, %56 ]
  %62 = zext i1 %61 to i32
  ret i32 %62
}

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @unraw(...) #1

declare dso_local i32 @printf(i8*, i8*) #1

; Function Attrs: returns_twice
declare dso_local i64 @setjmp(i32) #2

declare dso_local i32 @getchar(...) #1

declare dso_local i32 @raw(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { returns_twice }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
