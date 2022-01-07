; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/syslogd/extr_syslogd.c_p_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/syslogd/extr_syslogd.c_p_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_PATH_DEVNULL = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"sh\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"-c\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"strdup\00", align 1
@SIGINT = common dso_local global i32 0, align 4
@SIG_DFL = common dso_local global i32 0, align 4
@SIGQUIT = common dso_local global i32 0, align 4
@SIGPIPE = common dso_local global i32 0, align 4
@STDIN_FILENO = common dso_local global i32 0, align 4
@STDOUT_FILENO = common dso_local global i32 0, align 4
@STDERR_FILENO = common dso_local global i32 0, align 4
@_PATH_BSHELL = common dso_local global i32 0, align 4
@F_SETFL = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [65 x i8] c"Warning: cannot change pipe to PID %d to non-blocking behaviour.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64*)* @p_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p_open(i8* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca [2 x i32], align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca [4 x i8*], align 16
  %10 = alloca [200 x i8], align 16
  store i8* %0, i8** %4, align 8
  store i64* %1, i64** %5, align 8
  %11 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %12 = call i32 @pipe(i32* %11)
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %102

15:                                               ; preds = %2
  %16 = load i32, i32* @_PATH_DEVNULL, align 4
  %17 = load i32, i32* @O_RDWR, align 4
  %18 = call i32 @open(i32 %16, i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store i32 -1, i32* %3, align 4
  br label %102

21:                                               ; preds = %15
  %22 = call i64 (...) @fork()
  store i64 %22, i64* %8, align 8
  switch i64 %22, label %78 [
    i64 -1, label %23
    i64 0, label %26
  ]

23:                                               ; preds = %21
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @close(i32 %24)
  store i32 -1, i32* %3, align 4
  br label %102

26:                                               ; preds = %21
  %27 = call i32 (...) @setsid()
  %28 = call i8* @strdup(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %29 = getelementptr inbounds [4 x i8*], [4 x i8*]* %9, i64 0, i64 0
  store i8* %28, i8** %29, align 16
  %30 = call i8* @strdup(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %31 = getelementptr inbounds [4 x i8*], [4 x i8*]* %9, i64 0, i64 1
  store i8* %30, i8** %31, align 8
  %32 = load i8*, i8** %4, align 8
  %33 = call i8* @strdup(i8* %32)
  %34 = getelementptr inbounds [4 x i8*], [4 x i8*]* %9, i64 0, i64 2
  store i8* %33, i8** %34, align 16
  %35 = getelementptr inbounds [4 x i8*], [4 x i8*]* %9, i64 0, i64 3
  store i8* null, i8** %35, align 8
  %36 = getelementptr inbounds [4 x i8*], [4 x i8*]* %9, i64 0, i64 0
  %37 = load i8*, i8** %36, align 16
  %38 = icmp eq i8* %37, null
  br i1 %38, label %47, label %39

39:                                               ; preds = %26
  %40 = getelementptr inbounds [4 x i8*], [4 x i8*]* %9, i64 0, i64 1
  %41 = load i8*, i8** %40, align 8
  %42 = icmp eq i8* %41, null
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds [4 x i8*], [4 x i8*]* %9, i64 0, i64 2
  %45 = load i8*, i8** %44, align 16
  %46 = icmp eq i8* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %43, %39, %26
  %48 = call i32 @logerror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %49 = call i32 @exit(i32 1) #3
  unreachable

50:                                               ; preds = %43
  %51 = call i32 @alarm(i32 0)
  %52 = load i32, i32* @SIGINT, align 4
  %53 = load i32, i32* @SIG_DFL, align 4
  %54 = call i32 @signal(i32 %52, i32 %53)
  %55 = load i32, i32* @SIGQUIT, align 4
  %56 = load i32, i32* @SIG_DFL, align 4
  %57 = call i32 @signal(i32 %55, i32 %56)
  %58 = load i32, i32* @SIGPIPE, align 4
  %59 = load i32, i32* @SIG_DFL, align 4
  %60 = call i32 @signal(i32 %58, i32 %59)
  %61 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @STDIN_FILENO, align 4
  %64 = call i32 @dup2(i32 %62, i32 %63)
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* @STDOUT_FILENO, align 4
  %67 = call i32 @dup2(i32 %65, i32 %66)
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* @STDERR_FILENO, align 4
  %70 = call i32 @dup2(i32 %68, i32 %69)
  %71 = load i32, i32* @STDERR_FILENO, align 4
  %72 = add nsw i32 %71, 1
  %73 = call i32 @closefrom(i32 %72)
  %74 = load i32, i32* @_PATH_BSHELL, align 4
  %75 = getelementptr inbounds [4 x i8*], [4 x i8*]* %9, i64 0, i64 0
  %76 = call i32 @execvp(i32 %74, i8** %75)
  %77 = call i32 @_exit(i32 255) #3
  unreachable

78:                                               ; preds = %21
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @close(i32 %79)
  %81 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @close(i32 %82)
  %84 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @F_SETFL, align 4
  %87 = load i32, i32* @O_NONBLOCK, align 4
  %88 = call i32 @fcntl(i32 %85, i32 %86, i32 %87)
  %89 = icmp eq i32 %88, -1
  br i1 %89, label %90, label %97

90:                                               ; preds = %78
  %91 = getelementptr inbounds [200 x i8], [200 x i8]* %10, i64 0, i64 0
  %92 = load i64, i64* %8, align 8
  %93 = trunc i64 %92 to i32
  %94 = call i32 @snprintf(i8* %91, i32 200, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.3, i64 0, i64 0), i32 %93)
  %95 = getelementptr inbounds [200 x i8], [200 x i8]* %10, i64 0, i64 0
  %96 = call i32 @logerror(i8* %95)
  br label %97

97:                                               ; preds = %90, %78
  %98 = load i64, i64* %8, align 8
  %99 = load i64*, i64** %5, align 8
  store i64 %98, i64* %99, align 8
  %100 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %101 = load i32, i32* %100, align 4
  store i32 %101, i32* %3, align 4
  br label %102

102:                                              ; preds = %97, %23, %20, %14
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local i32 @pipe(i32*) #1

declare dso_local i32 @open(i32, i32) #1

declare dso_local i64 @fork(...) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @setsid(...) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @logerror(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @alarm(i32) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @dup2(i32, i32) #1

declare dso_local i32 @closefrom(i32) #1

declare dso_local i32 @execvp(i32, i8**) #1

; Function Attrs: noreturn
declare dso_local i32 @_exit(i32) #2

declare dso_local i32 @fcntl(i32, i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
