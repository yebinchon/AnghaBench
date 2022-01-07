; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/syslogd/extr_syslogd.c_waitdaemon.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/syslogd/extr_syslogd.c_waitdaemon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SIGALRM = common dso_local global i32 0, align 4
@timedout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"child pid %d exited with return code %d\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"child pid %d exited on signal %d%s\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c" (core dumped)\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@_PATH_DEVNULL = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@STDIN_FILENO = common dso_local global i32 0, align 4
@STDOUT_FILENO = common dso_local global i32 0, align 4
@STDERR_FILENO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @waitdaemon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @waitdaemon(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = call i32 (...) @fork()
  store i32 %8, i32* %7, align 4
  switch i32 %8, label %11 [
    i32 -1, label %9
    i32 0, label %10
  ]

9:                                                ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %80

10:                                               ; preds = %1
  br label %51

11:                                               ; preds = %1
  %12 = load i32, i32* @SIGALRM, align 4
  %13 = load i32, i32* @timedout, align 4
  %14 = call i32 @signal(i32 %12, i32 %13)
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @alarm(i32 %15)
  br label %17

17:                                               ; preds = %48, %11
  %18 = call i32 @wait3(i32* %5, i32 0, i32* null)
  store i32 %18, i32* %6, align 4
  %19 = icmp ne i32 %18, -1
  br i1 %19, label %20, label %49

20:                                               ; preds = %17
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @WIFEXITED(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @WEXITSTATUS(i32 %26)
  %28 = call i32 (i32, i8*, i32, i32, ...) @errx(i32 1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %27)
  br label %29

29:                                               ; preds = %24, %20
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @WIFSIGNALED(i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %29
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @WTERMSIG(i32 %35)
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @WCOREDUMP(i32 %37)
  %39 = icmp ne i32 %38, 0
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %42 = call i32 (i32, i8*, i32, i32, ...) @errx(i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %34, i32 %36, i8* %41)
  br label %43

43:                                               ; preds = %33, %29
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  br label %49

48:                                               ; preds = %43
  br label %17

49:                                               ; preds = %47, %17
  %50 = call i32 @exit(i32 0) #3
  unreachable

51:                                               ; preds = %10
  %52 = call i32 (...) @setsid()
  %53 = icmp eq i32 %52, -1
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  store i32 -1, i32* %2, align 4
  br label %80

55:                                               ; preds = %51
  %56 = call i32 @chdir(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %57 = load i32, i32* @_PATH_DEVNULL, align 4
  %58 = load i32, i32* @O_RDWR, align 4
  %59 = call i32 @open(i32 %57, i32 %58, i32 0)
  store i32 %59, i32* %4, align 4
  %60 = icmp ne i32 %59, -1
  br i1 %60, label %61, label %78

61:                                               ; preds = %55
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* @STDIN_FILENO, align 4
  %64 = call i32 @dup2(i32 %62, i32 %63)
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* @STDOUT_FILENO, align 4
  %67 = call i32 @dup2(i32 %65, i32 %66)
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* @STDERR_FILENO, align 4
  %70 = call i32 @dup2(i32 %68, i32 %69)
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* @STDERR_FILENO, align 4
  %73 = icmp sgt i32 %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %61
  %75 = load i32, i32* %4, align 4
  %76 = call i32 @close(i32 %75)
  br label %77

77:                                               ; preds = %74, %61
  br label %78

78:                                               ; preds = %77, %55
  %79 = call i32 (...) @getppid()
  store i32 %79, i32* %2, align 4
  br label %80

80:                                               ; preds = %78, %54, %9
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local i32 @fork(...) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @alarm(i32) #1

declare dso_local i32 @wait3(i32*, i32, i32*) #1

declare dso_local i32 @WIFEXITED(i32) #1

declare dso_local i32 @errx(i32, i8*, i32, i32, ...) #1

declare dso_local i32 @WEXITSTATUS(i32) #1

declare dso_local i32 @WIFSIGNALED(i32) #1

declare dso_local i32 @WTERMSIG(i32) #1

declare dso_local i32 @WCOREDUMP(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @setsid(...) #1

declare dso_local i32 @chdir(i8*) #1

declare dso_local i32 @open(i32, i32, i32) #1

declare dso_local i32 @dup2(i32, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @getppid(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
