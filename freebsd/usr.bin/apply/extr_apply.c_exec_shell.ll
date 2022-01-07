; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/apply/extr_apply.c_exec_shell.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/apply/extr_apply.c_exec_shell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SIGCHLD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"vfork\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"-c\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@SIGINT = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4
@SIGQUIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @exec_shell to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exec_shell(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %57

16:                                               ; preds = %3
  %17 = load i32, i32* @SIGCHLD, align 4
  %18 = call i32 @sigmask(i32 %17)
  %19 = call i32 @sigblock(i32 %18)
  store i32 %19, i32* %9, align 4
  %20 = call i32 @vfork() #4
  store i32 %20, i32* %8, align 4
  switch i32 %20, label %33 [
    i32 -1, label %21
    i32 0, label %23
  ]

21:                                               ; preds = %16
  %22 = call i32 @err(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %16, %21
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @sigsetmask(i32 %24)
  %26 = load i8*, i8** %6, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = call i32 @execl(i8* %26, i8* %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %28, i8* null)
  %30 = load i8*, i8** %6, align 8
  %31 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %30)
  %32 = call i32 @_exit(i32 1) #5
  unreachable

33:                                               ; preds = %16
  %34 = load i32, i32* @SIGINT, align 4
  %35 = load i32, i32* @SIG_IGN, align 4
  %36 = call i32 @signal(i32 %34, i32 %35)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* @SIGQUIT, align 4
  %38 = load i32, i32* @SIG_IGN, align 4
  %39 = call i32 @signal(i32 %37, i32 %38)
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @waitpid(i32 %40, i32* %10, i32 0)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @sigsetmask(i32 %42)
  %44 = load i32, i32* @SIGINT, align 4
  %45 = load i32, i32* %11, align 4
  %46 = call i32 @signal(i32 %44, i32 %45)
  %47 = load i32, i32* @SIGQUIT, align 4
  %48 = load i32, i32* %12, align 4
  %49 = call i32 @signal(i32 %47, i32 %48)
  %50 = load i32, i32* %8, align 4
  %51 = icmp eq i32 %50, -1
  br i1 %51, label %52, label %53

52:                                               ; preds = %33
  br label %55

53:                                               ; preds = %33
  %54 = load i32, i32* %10, align 4
  br label %55

55:                                               ; preds = %53, %52
  %56 = phi i32 [ -1, %52 ], [ %54, %53 ]
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %55, %15
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32 @sigblock(i32) #1

declare dso_local i32 @sigmask(i32) #1

; Function Attrs: returns_twice
declare dso_local i32 @vfork() #2

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @sigsetmask(i32) #1

declare dso_local i32 @execl(i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @warn(i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @_exit(i32) #3

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @waitpid(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { returns_twice }
attributes #5 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
