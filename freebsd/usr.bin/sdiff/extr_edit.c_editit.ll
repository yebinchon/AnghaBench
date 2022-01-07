; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/sdiff/extr_edit.c_editit.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/sdiff/extr_edit.c_editit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"VISUAL\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"EDITOR\00", align 1
@_PATH_VI = common dso_local global i8* null, align 8
@SIGHUP = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@SIGQUIT = common dso_local global i32 0, align 4
@SIGCHLD = common dso_local global i32 0, align 4
@SIG_DFL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @editit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @editit(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  store i32 -1, i32* %10, align 4
  %12 = call i8* @getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i8* %12, i8** %11, align 8
  %13 = load i8*, i8** %11, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = call i8* @getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i8* %16, i8** %11, align 8
  br label %17

17:                                               ; preds = %15, %1
  %18 = load i8*, i8** %11, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = load i8*, i8** @_PATH_VI, align 8
  store i8* %21, i8** %11, align 8
  br label %22

22:                                               ; preds = %20, %17
  %23 = load i32, i32* @SIGHUP, align 4
  %24 = load i32, i32* @SIG_IGN, align 4
  %25 = call i32 @signal(i32 %23, i32 %24)
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* @SIGINT, align 4
  %27 = load i32, i32* @SIG_IGN, align 4
  %28 = call i32 @signal(i32 %26, i32 %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* @SIGQUIT, align 4
  %30 = load i32, i32* @SIG_IGN, align 4
  %31 = call i32 @signal(i32 %29, i32 %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* @SIGCHLD, align 4
  %33 = load i32, i32* @SIG_DFL, align 4
  %34 = call i32 @signal(i32 %32, i32 %33)
  store i32 %34, i32* %6, align 4
  %35 = call i32 (...) @fork()
  store i32 %35, i32* %7, align 4
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %37, label %38

37:                                               ; preds = %22
  br label %68

38:                                               ; preds = %22
  %39 = load i32, i32* %7, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %38
  %42 = load i8*, i8** %11, align 8
  %43 = load i8*, i8** %11, align 8
  %44 = load i8*, i8** %2, align 8
  %45 = call i32 @execlp(i8* %42, i8* %43, i8* %44, i8* null)
  %46 = call i32 @_exit(i32 127) #3
  unreachable

47:                                               ; preds = %38
  br label %48

48:                                               ; preds = %57, %47
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @waitpid(i32 %49, i32* %9, i32 0)
  %51 = icmp eq i32 %50, -1
  br i1 %51, label %52, label %58

52:                                               ; preds = %48
  %53 = load i32, i32* @errno, align 4
  %54 = load i32, i32* @EINTR, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  br label %68

57:                                               ; preds = %52
  br label %48

58:                                               ; preds = %48
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @WIFEXITED(i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %58
  %63 = load i32, i32* @EINTR, align 4
  store i32 %63, i32* @errno, align 4
  br label %67

64:                                               ; preds = %58
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @WEXITSTATUS(i32 %65)
  store i32 %66, i32* %10, align 4
  br label %67

67:                                               ; preds = %64, %62
  br label %68

68:                                               ; preds = %67, %56, %37
  %69 = load i32, i32* @errno, align 4
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* @SIGHUP, align 4
  %71 = load i32, i32* %3, align 4
  %72 = call i32 @signal(i32 %70, i32 %71)
  %73 = load i32, i32* @SIGINT, align 4
  %74 = load i32, i32* %4, align 4
  %75 = call i32 @signal(i32 %73, i32 %74)
  %76 = load i32, i32* @SIGQUIT, align 4
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @signal(i32 %76, i32 %77)
  %79 = load i32, i32* @SIGCHLD, align 4
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @signal(i32 %79, i32 %80)
  %82 = load i32, i32* %8, align 4
  store i32 %82, i32* @errno, align 4
  %83 = load i32, i32* %10, align 4
  ret i32 %83
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @fork(...) #1

declare dso_local i32 @execlp(i8*, i8*, i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @_exit(i32) #2

declare dso_local i32 @waitpid(i32, i32*, i32) #1

declare dso_local i32 @WIFEXITED(i32) #1

declare dso_local i32 @WEXITSTATUS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
