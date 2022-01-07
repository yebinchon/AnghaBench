; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/edquota/extr_edquota.c_editit.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/edquota/extr_edquota.c_editit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SIGINT = common dso_local global i32 0, align 4
@SIGQUIT = common dso_local global i32 0, align 4
@SIGHUP = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EPROCLIM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"you have too many processes\00", align 1
@EAGAIN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"fork\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"setgid failed\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"setuid failed\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"EDITOR\00", align 1
@_PATH_VI = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @editit(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %8 = load i32, i32* @SIGINT, align 4
  %9 = call i32 @sigmask(i32 %8)
  %10 = load i32, i32* @SIGQUIT, align 4
  %11 = call i32 @sigmask(i32 %10)
  %12 = or i32 %9, %11
  %13 = load i32, i32* @SIGHUP, align 4
  %14 = call i32 @sigmask(i32 %13)
  %15 = or i32 %12, %14
  %16 = call i64 @sigblock(i32 %15)
  store i64 %16, i64* %4, align 8
  br label %17

17:                                               ; preds = %30, %1
  %18 = call i32 (...) @fork()
  store i32 %18, i32* %5, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %34

20:                                               ; preds = %17
  %21 = load i64, i64* @errno, align 8
  %22 = load i64, i64* @EPROCLIM, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = call i32 @warnx(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %77

26:                                               ; preds = %20
  %27 = load i64, i64* @errno, align 8
  %28 = load i64, i64* @EAGAIN, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = call i32 @sleep(i32 1)
  br label %17

32:                                               ; preds = %26
  %33 = call i32 @warn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %77

34:                                               ; preds = %17
  %35 = load i32, i32* %5, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %63

37:                                               ; preds = %34
  %38 = load i64, i64* %4, align 8
  %39 = call i32 @sigsetmask(i64 %38)
  %40 = call i32 (...) @getgid()
  %41 = call i64 @setgid(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %45

45:                                               ; preds = %43, %37
  %46 = call i32 (...) @getuid()
  %47 = call i64 @setuid(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  br label %51

51:                                               ; preds = %49, %45
  %52 = call i8* @getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  store i8* %52, i8** %7, align 8
  %53 = icmp eq i8* %52, null
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = load i8*, i8** @_PATH_VI, align 8
  store i8* %55, i8** %7, align 8
  br label %56

56:                                               ; preds = %54, %51
  %57 = load i8*, i8** %7, align 8
  %58 = load i8*, i8** %7, align 8
  %59 = load i8*, i8** %3, align 8
  %60 = call i32 @execlp(i8* %57, i8* %58, i8* %59, i8* null)
  %61 = load i8*, i8** %7, align 8
  %62 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %61)
  br label %63

63:                                               ; preds = %56, %34
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @waitpid(i32 %64, i32* %6, i32 0)
  %66 = load i64, i64* %4, align 8
  %67 = call i32 @sigsetmask(i64 %66)
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @WIFEXITED(i32 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %63
  %72 = load i32, i32* %6, align 4
  %73 = call i64 @WEXITSTATUS(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %71, %63
  store i32 0, i32* %2, align 4
  br label %77

76:                                               ; preds = %71
  store i32 1, i32* %2, align 4
  br label %77

77:                                               ; preds = %76, %75, %32, %24
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i64 @sigblock(i32) #1

declare dso_local i32 @sigmask(i32) #1

declare dso_local i32 @fork(...) #1

declare dso_local i32 @warnx(i8*) #1

declare dso_local i32 @sleep(i32) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @sigsetmask(i64) #1

declare dso_local i64 @setgid(i32) #1

declare dso_local i32 @getgid(...) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i64 @setuid(i32) #1

declare dso_local i32 @getuid(...) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @execlp(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @waitpid(i32, i32*, i32) #1

declare dso_local i32 @WIFEXITED(i32) #1

declare dso_local i64 @WEXITSTATUS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
