; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/pr/extr_pr.c_ttypause.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/pr/extr_pr.c_ttypause.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pauseall = common dso_local global i64 0, align 8
@pausefst = common dso_local global i64 0, align 8
@STDOUT_FILENO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"/dev/tty\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stderr = common dso_local global i32 0, align 4
@EOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @ttypause to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ttypause(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i64, i64* @pauseall, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %1
  %8 = load i64, i64* @pausefst, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %38

10:                                               ; preds = %7
  %11 = load i32, i32* %2, align 4
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %38

13:                                               ; preds = %10, %1
  %14 = load i32, i32* @STDOUT_FILENO, align 4
  %15 = call i64 @isatty(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %38

17:                                               ; preds = %13
  %18 = call i32* @fopen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %18, i32** %4, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %37

20:                                               ; preds = %17
  %21 = load i32, i32* @stderr, align 4
  %22 = call i32 @putc(i8 signext 7, i32 %21)
  br label %23

23:                                               ; preds = %33, %20
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @getc(i32* %24)
  store i32 %25, i32* %3, align 4
  %26 = icmp ne i32 %25, 10
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @EOF, align 4
  %30 = icmp ne i32 %28, %29
  br label %31

31:                                               ; preds = %27, %23
  %32 = phi i1 [ false, %23 ], [ %30, %27 ]
  br i1 %32, label %33, label %34

33:                                               ; preds = %31
  br label %23

34:                                               ; preds = %31
  %35 = load i32*, i32** %4, align 8
  %36 = call i32 @fclose(i32* %35)
  br label %37

37:                                               ; preds = %34, %17
  br label %38

38:                                               ; preds = %37, %13, %10, %7
  ret void
}

declare dso_local i64 @isatty(i32) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @putc(i8 signext, i32) #1

declare dso_local i32 @getc(i32*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
