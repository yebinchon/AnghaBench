; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/poll/extr_pipeselect.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/poll/extr_pipeselect.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"1..20\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@SIGUSR1 = common dso_local global i32 0, align 4
@catch = common dso_local global i32 0, align 4
@ppid = common dso_local global i32 0, align 4
@filetype = common dso_local global i32 0, align 4
@FT_END = common dso_local global i32 0, align 4
@FIFONAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"mkfifo\00", align 1
@AF_UNIX = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@AF_UNSPEC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"socketpair\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"pipe\00", align 1
@state = common dso_local global i64 0, align 8
@cpid = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"fork\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [2 x i32], align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 1, i32* %3, align 4
  %4 = call i32 @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %5 = load i32, i32* @stdout, align 4
  %6 = call i32 @fflush(i32 %5)
  %7 = load i32, i32* @SIGUSR1, align 4
  %8 = load i32, i32* @catch, align 4
  %9 = call i32 @signal(i32 %7, i32 %8)
  %10 = call i32 (...) @getpid()
  store i32 %10, i32* @ppid, align 4
  store i32 0, i32* @filetype, align 4
  br label %11

11:                                               ; preds = %69, %0
  %12 = load i32, i32* @filetype, align 4
  %13 = load i32, i32* @FT_END, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %72

15:                                               ; preds = %11
  %16 = load i32, i32* @filetype, align 4
  switch i32 %16, label %43 [
    i32 130, label %17
    i32 128, label %26
    i32 129, label %36
  ]

17:                                               ; preds = %15
  %18 = load i32, i32* @FIFONAME, align 4
  %19 = call i32 @mkfifo(i32 %18, i32 438)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %17
  %24 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 0
  store i32 -1, i32* %24, align 4
  %25 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 1
  store i32 -1, i32* %25, align 4
  br label %43

26:                                               ; preds = %15
  %27 = load i32, i32* @AF_UNIX, align 4
  %28 = load i32, i32* @SOCK_STREAM, align 4
  %29 = load i32, i32* @AF_UNSPEC, align 4
  %30 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 0
  %31 = call i32 @socketpair(i32 %27, i32 %28, i32 %29, i32* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = call i32 @err(i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  br label %35

35:                                               ; preds = %33, %26
  br label %43

36:                                               ; preds = %15
  %37 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 0
  %38 = call i32 @pipe(i32* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = call i32 @err(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %36
  br label %43

43:                                               ; preds = %15, %42, %35, %23
  store i64 0, i64* @state, align 8
  %44 = call i32 (...) @fork()
  store i32 %44, i32* @cpid, align 4
  switch i32 %44, label %55 [
    i32 -1, label %45
    i32 0, label %47
  ]

45:                                               ; preds = %43
  %46 = call i32 @err(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  br label %47

47:                                               ; preds = %43, %45
  %48 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @close(i32 %49)
  %51 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %3, align 4
  %54 = call i32 @child(i32 %52, i32 %53)
  br label %62

55:                                               ; preds = %43
  %56 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @close(i32 %57)
  %59 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @parent(i32 %60)
  br label %62

62:                                               ; preds = %55, %47
  %63 = load i32, i32* @filetype, align 4
  %64 = icmp eq i32 %63, 130
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i32 12, i32 4
  %67 = load i32, i32* %3, align 4
  %68 = add nsw i32 %67, %66
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %62
  %70 = load i32, i32* @filetype, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* @filetype, align 4
  br label %11

72:                                               ; preds = %11
  %73 = load i32, i32* @FIFONAME, align 4
  %74 = call i32 @unlink(i32 %73)
  ret i32 0
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @mkfifo(i32, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @socketpair(i32, i32, i32, i32*) #1

declare dso_local i32 @pipe(i32*) #1

declare dso_local i32 @fork(...) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @child(i32, i32) #1

declare dso_local i32 @parent(i32) #1

declare dso_local i32 @unlink(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
