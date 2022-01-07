; ModuleID = '/home/carl/AnghaBench/freebsd/tests/sys/kqueue/libkqueue/extr_read.c_test_kevent_socket_disable_and_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/tests/sys/kqueue/libkqueue/extr_read.c_test_kevent_socket_disable_and_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kevent = type { i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"kevent(EVFILT_READ, EV_DISABLE)\00", align 1
@sockfd = common dso_local global i32* null, align 8
@EVFILT_READ = common dso_local global i32 0, align 4
@EV_ADD = common dso_local global i32 0, align 4
@EV_DISABLE = common dso_local global i32 0, align 4
@kqfd = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@EV_ENABLE = common dso_local global i32 0, align 4
@EV_DELETE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_kevent_socket_disable_and_enable() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca %struct.kevent, align 4
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  %3 = load i8*, i8** %1, align 8
  %4 = call i32 @test_begin(i8* %3)
  %5 = call i32 (...) @kevent_socket_fill()
  %6 = load i32*, i32** @sockfd, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @EVFILT_READ, align 4
  %10 = load i32, i32* @EV_ADD, align 4
  %11 = load i32, i32* @EV_DISABLE, align 4
  %12 = or i32 %10, %11
  %13 = load i32*, i32** @sockfd, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = call i32 @EV_SET(%struct.kevent* %2, i32 %8, i32 %9, i32 %12, i32 0, i32 0, i32* %14)
  %16 = load i32, i32* @kqfd, align 4
  %17 = call i64 @kevent(i32 %16, %struct.kevent* %2, i32 1, i32* null, i32 0, i32* null)
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %0
  %20 = load i8*, i8** %1, align 8
  %21 = call i32 @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %20)
  br label %22

22:                                               ; preds = %19, %0
  %23 = call i32 (...) @test_no_kevents()
  %24 = load i32, i32* @EV_ENABLE, align 4
  %25 = getelementptr inbounds %struct.kevent, %struct.kevent* %2, i32 0, i32 0
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* @kqfd, align 4
  %27 = call i64 @kevent(i32 %26, %struct.kevent* %2, i32 1, i32* null, i32 0, i32* null)
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = load i8*, i8** %1, align 8
  %31 = call i32 @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %30)
  br label %32

32:                                               ; preds = %29, %22
  %33 = load i32, i32* @EV_ADD, align 4
  %34 = getelementptr inbounds %struct.kevent, %struct.kevent* %2, i32 0, i32 0
  store i32 %33, i32* %34, align 4
  %35 = getelementptr inbounds %struct.kevent, %struct.kevent* %2, i32 0, i32 1
  store i32 1, i32* %35, align 4
  %36 = load i32, i32* @kqfd, align 4
  %37 = call i32 @kevent_get(i32 %36)
  %38 = call i32 @kevent_cmp(%struct.kevent* %2, i32 %37)
  %39 = call i32 (...) @kevent_socket_drain()
  %40 = load i32, i32* @EV_DELETE, align 4
  %41 = getelementptr inbounds %struct.kevent, %struct.kevent* %2, i32 0, i32 0
  store i32 %40, i32* %41, align 4
  %42 = load i32, i32* @kqfd, align 4
  %43 = call i64 @kevent(i32 %42, %struct.kevent* %2, i32 1, i32* null, i32 0, i32* null)
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %32
  %46 = load i8*, i8** %1, align 8
  %47 = call i32 @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %46)
  br label %48

48:                                               ; preds = %45, %32
  %49 = call i32 (...) @success()
  ret void
}

declare dso_local i32 @test_begin(i8*) #1

declare dso_local i32 @kevent_socket_fill(...) #1

declare dso_local i32 @EV_SET(%struct.kevent*, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i64 @kevent(i32, %struct.kevent*, i32, i32*, i32, i32*) #1

declare dso_local i32 @err(i32, i8*, i8*) #1

declare dso_local i32 @test_no_kevents(...) #1

declare dso_local i32 @kevent_cmp(%struct.kevent*, i32) #1

declare dso_local i32 @kevent_get(i32) #1

declare dso_local i32 @kevent_socket_drain(...) #1

declare dso_local i32 @success(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
