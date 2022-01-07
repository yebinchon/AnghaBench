; ModuleID = '/home/carl/AnghaBench/freebsd/tests/sys/kqueue/libkqueue/extr_timer.c_disable_and_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/tests/sys/kqueue/libkqueue/extr_timer.c_disable_and_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kevent = type { i32, i32 }

@.str = private unnamed_addr constant [47 x i8] c"kevent(EVFILT_TIMER, EV_DISABLE and EV_ENABLE)\00", align 1
@vnode_fd = common dso_local global i32 0, align 4
@EVFILT_TIMER = common dso_local global i32 0, align 4
@EV_ADD = common dso_local global i32 0, align 4
@EV_ONESHOT = common dso_local global i32 0, align 4
@kqfd = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@EV_DISABLE = common dso_local global i32 0, align 4
@EV_ENABLE = common dso_local global i32 0, align 4
@EV_CLEAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @disable_and_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @disable_and_enable() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca %struct.kevent, align 4
  store i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  %3 = load i8*, i8** %1, align 8
  %4 = call i32 @test_begin(i8* %3)
  %5 = call i32 (...) @test_no_kevents()
  %6 = load i32, i32* @vnode_fd, align 4
  %7 = load i32, i32* @EVFILT_TIMER, align 4
  %8 = load i32, i32* @EV_ADD, align 4
  %9 = load i32, i32* @EV_ONESHOT, align 4
  %10 = or i32 %8, %9
  %11 = call i32 @EV_SET(%struct.kevent* %2, i32 %6, i32 %7, i32 %10, i32 0, i32 2000, i32* null)
  %12 = load i32, i32* @kqfd, align 4
  %13 = call i64 @kevent(i32 %12, %struct.kevent* %2, i32 1, i32* null, i32 0, i32* null)
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %0
  %16 = load i8*, i8** %1, align 8
  %17 = call i32 @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %16)
  br label %18

18:                                               ; preds = %15, %0
  %19 = load i32, i32* @EV_DISABLE, align 4
  %20 = getelementptr inbounds %struct.kevent, %struct.kevent* %2, i32 0, i32 0
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* @kqfd, align 4
  %22 = call i64 @kevent(i32 %21, %struct.kevent* %2, i32 1, i32* null, i32 0, i32* null)
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load i8*, i8** %1, align 8
  %26 = call i32 @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %25)
  br label %27

27:                                               ; preds = %24, %18
  %28 = call i32 (...) @test_no_kevents()
  %29 = load i32, i32* @EV_ENABLE, align 4
  %30 = getelementptr inbounds %struct.kevent, %struct.kevent* %2, i32 0, i32 0
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* @kqfd, align 4
  %32 = call i64 @kevent(i32 %31, %struct.kevent* %2, i32 1, i32* null, i32 0, i32* null)
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = load i8*, i8** %1, align 8
  %36 = call i32 @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %35)
  br label %37

37:                                               ; preds = %34, %27
  %38 = load i32, i32* @EV_ADD, align 4
  %39 = load i32, i32* @EV_CLEAR, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @EV_ONESHOT, align 4
  %42 = or i32 %40, %41
  %43 = getelementptr inbounds %struct.kevent, %struct.kevent* %2, i32 0, i32 0
  store i32 %42, i32* %43, align 4
  %44 = getelementptr inbounds %struct.kevent, %struct.kevent* %2, i32 0, i32 1
  store i32 1, i32* %44, align 4
  %45 = load i32, i32* @kqfd, align 4
  %46 = call i32 @kevent_get(i32 %45)
  %47 = call i32 @kevent_cmp(%struct.kevent* %2, i32 %46)
  %48 = call i32 (...) @success()
  ret void
}

declare dso_local i32 @test_begin(i8*) #1

declare dso_local i32 @test_no_kevents(...) #1

declare dso_local i32 @EV_SET(%struct.kevent*, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i64 @kevent(i32, %struct.kevent*, i32, i32*, i32, i32*) #1

declare dso_local i32 @err(i32, i8*, i8*) #1

declare dso_local i32 @kevent_cmp(%struct.kevent*, i32) #1

declare dso_local i32 @kevent_get(i32) #1

declare dso_local i32 @success(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
