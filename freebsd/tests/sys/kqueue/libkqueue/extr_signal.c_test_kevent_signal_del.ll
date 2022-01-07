; ModuleID = '/home/carl/AnghaBench/freebsd/tests/sys/kqueue/libkqueue/extr_signal.c_test_kevent_signal_del.c'
source_filename = "/home/carl/AnghaBench/freebsd/tests/sys/kqueue/libkqueue/extr_signal.c_test_kevent_signal_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kevent = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"kevent(EVFILT_SIGNAL, EV_DELETE)\00", align 1
@SIGUSR1 = common dso_local global i32 0, align 4
@EVFILT_SIGNAL = common dso_local global i32 0, align 4
@EV_DELETE = common dso_local global i32 0, align 4
@kqfd = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@SIG_BLOCK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"sigprocmask\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"kill\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_kevent_signal_del() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca %struct.kevent, align 4
  %3 = alloca i32, align 4
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  %4 = load i8*, i8** %1, align 8
  %5 = call i32 @test_begin(i8* %4)
  %6 = load i32, i32* @SIGUSR1, align 4
  %7 = load i32, i32* @EVFILT_SIGNAL, align 4
  %8 = load i32, i32* @EV_DELETE, align 4
  %9 = call i32 @EV_SET(%struct.kevent* %2, i32 %6, i32 %7, i32 %8, i32 0, i32 0, i32* null)
  %10 = load i32, i32* @kqfd, align 4
  %11 = call i64 @kevent(i32 %10, %struct.kevent* %2, i32 1, i32* null, i32 0, i32* null)
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %0
  %14 = load i8*, i8** %1, align 8
  %15 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %14)
  br label %16

16:                                               ; preds = %13, %0
  %17 = call i32 @sigemptyset(i32* %3)
  %18 = load i32, i32* @SIGUSR1, align 4
  %19 = call i32 @sigaddset(i32* %3, i32 %18)
  %20 = load i32, i32* @SIG_BLOCK, align 4
  %21 = call i32 @sigprocmask(i32 %20, i32* %3, i32* null)
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %16
  %26 = call i32 (...) @getpid()
  %27 = load i32, i32* @SIGUSR1, align 4
  %28 = call i64 @kill(i32 %26, i32 %27)
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %25
  %33 = call i32 (...) @test_no_kevents()
  %34 = call i32 (...) @success()
  ret void
}

declare dso_local i32 @test_begin(i8*) #1

declare dso_local i32 @EV_SET(%struct.kevent*, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i64 @kevent(i32, %struct.kevent*, i32, i32*, i32, i32*) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i32 @sigaddset(i32*, i32) #1

declare dso_local i32 @sigprocmask(i32, i32*, i32*) #1

declare dso_local i64 @kill(i32, i32) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @test_no_kevents(...) #1

declare dso_local i32 @success(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
