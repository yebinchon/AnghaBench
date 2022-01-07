; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/xargs/extr_xargs.c_run.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/xargs/extr_xargs.c_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tflag = common dso_local global i64 0, align 8
@pflag = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@childerr = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c"vfork\00", align 1
@oflag = common dso_local global i32 0, align 4
@_PATH_TTY = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"can't open /dev/tty\00", align 1
@_PATH_DEVNULL = common dso_local global i32 0, align 4
@STDIN_FILENO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c"can't dup2 to stdin\00", align 1
@errno = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**)* @run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run(i8** %0) #0 {
  %2 = alloca i8**, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i8** %0, i8*** %2, align 8
  %6 = load i64, i64* @tflag, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load i64, i64* @pflag, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %44

11:                                               ; preds = %8, %1
  %12 = load i32, i32* @stderr, align 4
  %13 = load i8**, i8*** %2, align 8
  %14 = load i8*, i8** %13, align 8
  %15 = call i32 (i32, i8*, ...) @fprintf(i32 %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %14)
  %16 = load i8**, i8*** %2, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 1
  store i8** %17, i8*** %5, align 8
  br label %18

18:                                               ; preds = %27, %11
  %19 = load i8**, i8*** %5, align 8
  %20 = load i8*, i8** %19, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %30

22:                                               ; preds = %18
  %23 = load i32, i32* @stderr, align 4
  %24 = load i8**, i8*** %5, align 8
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 (i32, i8*, ...) @fprintf(i32 %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %25)
  br label %27

27:                                               ; preds = %22
  %28 = load i8**, i8*** %5, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i32 1
  store i8** %29, i8*** %5, align 8
  br label %18

30:                                               ; preds = %18
  %31 = load i64, i64* @pflag, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %30
  %34 = call i32 (...) @prompt()
  switch i32 %34, label %38 [
    i32 0, label %35
    i32 1, label %36
    i32 2, label %37
  ]

35:                                               ; preds = %33
  br label %95

36:                                               ; preds = %33
  br label %45

37:                                               ; preds = %33
  br label %38

38:                                               ; preds = %33, %37
  br label %39

39:                                               ; preds = %38, %30
  %40 = load i32, i32* @stderr, align 4
  %41 = call i32 (i32, i8*, ...) @fprintf(i32 %40, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %42 = load i32, i32* @stderr, align 4
  %43 = call i32 @fflush(i32 %42)
  br label %44

44:                                               ; preds = %39, %8
  br label %45

45:                                               ; preds = %44, %36
  store i64 0, i64* @childerr, align 8
  %46 = call i32 @vfork() #4
  store i32 %46, i32* %3, align 4
  switch i32 %46, label %89 [
    i32 -1, label %47
    i32 0, label %52
  ]

47:                                               ; preds = %45
  %48 = call i32 @warn(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %49 = load i8**, i8*** %2, align 8
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 @xexit(i8* %50, i32 1)
  br label %52

52:                                               ; preds = %45, %47
  %53 = load i32, i32* @oflag, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %52
  %56 = load i32, i32* @_PATH_TTY, align 4
  %57 = load i32, i32* @O_RDONLY, align 4
  %58 = call i32 @open(i32 %56, i32 %57)
  store i32 %58, i32* %4, align 4
  %59 = icmp eq i32 %58, -1
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = call i32 @err(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  br label %62

62:                                               ; preds = %60, %55
  br label %67

63:                                               ; preds = %52
  %64 = load i32, i32* @_PATH_DEVNULL, align 4
  %65 = load i32, i32* @O_RDONLY, align 4
  %66 = call i32 @open(i32 %64, i32 %65)
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %63, %62
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* @STDIN_FILENO, align 4
  %70 = icmp sgt i32 %68, %69
  br i1 %70, label %71, label %81

71:                                               ; preds = %67
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* @STDIN_FILENO, align 4
  %74 = call i32 @dup2(i32 %72, i32 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %71
  %77 = call i32 @err(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  br label %78

78:                                               ; preds = %76, %71
  %79 = load i32, i32* %4, align 4
  %80 = call i32 @close(i32 %79)
  br label %81

81:                                               ; preds = %78, %67
  %82 = load i8**, i8*** %2, align 8
  %83 = getelementptr inbounds i8*, i8** %82, i64 0
  %84 = load i8*, i8** %83, align 8
  %85 = load i8**, i8*** %2, align 8
  %86 = call i32 @execvp(i8* %84, i8** %85)
  %87 = load i64, i64* @errno, align 8
  store i64 %87, i64* @childerr, align 8
  %88 = call i32 @_exit(i32 1) #5
  unreachable

89:                                               ; preds = %45
  %90 = load i32, i32* %3, align 4
  %91 = call i32 @pids_add(i32 %90)
  %92 = load i8**, i8*** %2, align 8
  %93 = load i8*, i8** %92, align 8
  %94 = call i32 @waitchildren(i8* %93, i32 0)
  br label %95

95:                                               ; preds = %89, %35
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @prompt(...) #1

declare dso_local i32 @fflush(i32) #1

; Function Attrs: returns_twice
declare dso_local i32 @vfork() #2

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @xexit(i8*, i32) #1

declare dso_local i32 @open(i32, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @dup2(i32, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @execvp(i8*, i8**) #1

; Function Attrs: noreturn
declare dso_local i32 @_exit(i32) #3

declare dso_local i32 @pids_add(i32) #1

declare dso_local i32 @waitchildren(i8*, i32) #1

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
