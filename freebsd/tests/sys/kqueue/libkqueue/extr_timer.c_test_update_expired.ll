; ModuleID = '/home/carl/AnghaBench/freebsd/tests/sys/kqueue/libkqueue/extr_timer.c_test_update_expired.c'
source_filename = "/home/carl/AnghaBench/freebsd/tests/sys/kqueue/libkqueue/extr_timer.c_test_update_expired.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kevent = type { i32, i32, i32 }

@.str = private unnamed_addr constant [55 x i8] c"kevent(EVFILT_TIMER (UPDATE EXP), EV_ADD | EV_ONESHOT)\00", align 1
@vnode_fd = common dso_local global i32 0, align 4
@EVFILT_TIMER = common dso_local global i32 0, align 4
@EV_ADD = common dso_local global i32 0, align 4
@EV_ONESHOT = common dso_local global i32 0, align 4
@NOTE_USECONDS = common dso_local global i32 0, align 4
@kqfd = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@EV_CLEAR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"timer expired after %ld us\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"early timer expiration: %ld us\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_update_expired to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_update_expired() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca %struct.kevent, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  %5 = load i8*, i8** %1, align 8
  %6 = call i32 @test_begin(i8* %5)
  %7 = call i32 (...) @test_no_kevents()
  %8 = load i32, i32* @vnode_fd, align 4
  %9 = load i32, i32* @EVFILT_TIMER, align 4
  %10 = load i32, i32* @EV_ADD, align 4
  %11 = load i32, i32* @EV_ONESHOT, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @NOTE_USECONDS, align 4
  %14 = call i64 @MS_TO_US(i32 1)
  %15 = call i32 @EV_SET(%struct.kevent* %2, i32 %8, i32 %9, i32 %12, i32 %13, i64 %14, i32* null)
  %16 = load i32, i32* @kqfd, align 4
  %17 = call i64 @kevent(i32 %16, %struct.kevent* %2, i32 1, i32* null, i32 0, i32* null)
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %0
  %20 = load i8*, i8** %1, align 8
  %21 = call i32 @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %20)
  br label %22

22:                                               ; preds = %19, %0
  %23 = call i32 @mssleep(i32 2)
  %24 = call i64 (...) @now()
  store i64 %24, i64* %4, align 8
  %25 = load i32, i32* @kqfd, align 4
  %26 = call i64 @kevent(i32 %25, %struct.kevent* %2, i32 1, i32* null, i32 0, i32* null)
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load i8*, i8** %1, align 8
  %30 = call i32 @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %29)
  br label %31

31:                                               ; preds = %28, %22
  %32 = load i32, i32* @EV_CLEAR, align 4
  %33 = getelementptr inbounds %struct.kevent, %struct.kevent* %2, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %32
  store i32 %35, i32* %33, align 4
  %36 = load i32, i32* @NOTE_USECONDS, align 4
  %37 = xor i32 %36, -1
  %38 = getelementptr inbounds %struct.kevent, %struct.kevent* %2, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, %37
  store i32 %40, i32* %38, align 4
  %41 = getelementptr inbounds %struct.kevent, %struct.kevent* %2, i32 0, i32 0
  store i32 1, i32* %41, align 4
  %42 = load i32, i32* @kqfd, align 4
  %43 = call i32 @kevent_get(i32 %42)
  %44 = call i32 @kevent_cmp(%struct.kevent* %2, i32 %43)
  %45 = call i64 (...) @now()
  %46 = load i64, i64* %4, align 8
  %47 = sub nsw i64 %45, %46
  store i64 %47, i64* %3, align 8
  %48 = load i64, i64* %3, align 8
  %49 = call i32 @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i64 %48)
  %50 = load i64, i64* %3, align 8
  %51 = call i64 @MS_TO_US(i32 1)
  %52 = icmp slt i64 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %31
  %54 = load i64, i64* %3, align 8
  %55 = call i32 @errx(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i64 %54)
  br label %56

56:                                               ; preds = %53, %31
  %57 = call i32 @mssleep(i32 2)
  %58 = call i32 (...) @test_no_kevents()
  %59 = call i32 (...) @success()
  ret void
}

declare dso_local i32 @test_begin(i8*) #1

declare dso_local i32 @test_no_kevents(...) #1

declare dso_local i32 @EV_SET(%struct.kevent*, i32, i32, i32, i32, i64, i32*) #1

declare dso_local i64 @MS_TO_US(i32) #1

declare dso_local i64 @kevent(i32, %struct.kevent*, i32, i32*, i32, i32*) #1

declare dso_local i32 @err(i32, i8*, i8*) #1

declare dso_local i32 @mssleep(i32) #1

declare dso_local i64 @now(...) #1

declare dso_local i32 @kevent_cmp(%struct.kevent*, i32) #1

declare dso_local i32 @kevent_get(i32) #1

declare dso_local i32 @printf(i8*, i64) #1

declare dso_local i32 @errx(i32, i8*, i64) #1

declare dso_local i32 @success(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
