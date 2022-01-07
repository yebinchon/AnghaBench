; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/xargs/extr_xargs.c_waitchildren.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/xargs/extr_xargs.c_waitchildren.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@childerr = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"%s: terminated with signal %d; aborting\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"%s: exited with status 255; aborting\00", align 1
@rval = common dso_local global i32 0, align 4
@ECHILD = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"waitpid\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @waitchildren to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @waitchildren(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %57, %2
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %8
  %12 = call i64 (...) @pids_full()
  %13 = icmp ne i64 %12, 0
  br label %14

14:                                               ; preds = %11, %8
  %15 = phi i1 [ true, %8 ], [ %13, %11 ]
  %16 = zext i1 %15 to i32
  %17 = call i32 @xwait(i32 %16, i32* %6)
  store i32 %17, i32* %5, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %58

19:                                               ; preds = %14
  %20 = load i64, i64* @childerr, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %19
  %23 = load i32, i32* %7, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %22
  %26 = load i64, i64* @childerr, align 8
  store i64 %26, i64* @errno, align 8
  store i32 1, i32* %4, align 4
  %27 = load i64, i64* @ENOENT, align 8
  %28 = icmp ne i64 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i32 127, i32 126
  store i32 %30, i32* %7, align 4
  %31 = load i8*, i8** %3, align 8
  %32 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %31)
  br label %57

33:                                               ; preds = %22, %19
  %34 = load i32, i32* %6, align 4
  %35 = call i64 @WIFSIGNALED(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %33
  store i32 1, i32* %7, align 4
  store i32 1, i32* %4, align 4
  %38 = load i8*, i8** %3, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @WTERMSIG(i32 %39)
  %41 = call i32 (i8*, i8*, ...) @warnx(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i8* %38, i32 %40)
  br label %56

42:                                               ; preds = %33
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @WEXITSTATUS(i32 %43)
  %45 = icmp eq i32 %44, 255
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  store i32 1, i32* %7, align 4
  store i32 1, i32* %4, align 4
  %47 = load i8*, i8** %3, align 8
  %48 = call i32 (i8*, i8*, ...) @warnx(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i8* %47)
  br label %55

49:                                               ; preds = %42
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @WEXITSTATUS(i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  store i32 1, i32* @rval, align 4
  br label %54

54:                                               ; preds = %53, %49
  br label %55

55:                                               ; preds = %54, %46
  br label %56

56:                                               ; preds = %55, %37
  br label %57

57:                                               ; preds = %56, %25
  br label %8

58:                                               ; preds = %14
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @exit(i32 %62) #3
  unreachable

64:                                               ; preds = %58
  %65 = load i32, i32* %5, align 4
  %66 = icmp eq i32 %65, -1
  br i1 %66, label %67, label %73

67:                                               ; preds = %64
  %68 = load i64, i64* @errno, align 8
  %69 = load i64, i64* @ECHILD, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %67
  %72 = call i32 @err(i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  br label %73

73:                                               ; preds = %71, %67, %64
  ret void
}

declare dso_local i32 @xwait(i32, i32*) #1

declare dso_local i64 @pids_full(...) #1

declare dso_local i32 @warn(i8*, i8*) #1

declare dso_local i64 @WIFSIGNALED(i32) #1

declare dso_local i32 @warnx(i8*, i8*, ...) #1

declare dso_local i32 @WTERMSIG(i32) #1

declare dso_local i32 @WEXITSTATUS(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
