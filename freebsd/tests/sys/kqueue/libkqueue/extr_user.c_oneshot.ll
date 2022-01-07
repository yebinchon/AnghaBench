; ModuleID = '/home/carl/AnghaBench/freebsd/tests/sys/kqueue/libkqueue/extr_user.c_oneshot.c'
source_filename = "/home/carl/AnghaBench/freebsd/tests/sys/kqueue/libkqueue/extr_user.c_oneshot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kevent = type { i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"kevent(EVFILT_USER, EV_ONESHOT)\00", align 1
@kqfd = common dso_local global i32 0, align 4
@EVFILT_USER = common dso_local global i32 0, align 4
@EV_ADD = common dso_local global i32 0, align 4
@EV_ONESHOT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"  -- event 1\00", align 1
@NOTE_TRIGGER = common dso_local global i32 0, align 4
@NOTE_FFCTRLMASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @oneshot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @oneshot() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca %struct.kevent, align 4
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  %3 = load i8*, i8** %1, align 8
  %4 = call i32 @test_begin(i8* %3)
  %5 = call i32 (...) @test_no_kevents()
  %6 = load i32, i32* @kqfd, align 4
  %7 = load i32, i32* @EVFILT_USER, align 4
  %8 = load i32, i32* @EV_ADD, align 4
  %9 = load i32, i32* @EV_ONESHOT, align 4
  %10 = or i32 %8, %9
  %11 = call i32 @kevent_add(i32 %6, %struct.kevent* %2, i32 2, i32 %7, i32 %10, i32 0, i32 0, i32* null)
  %12 = call i32 @puts(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %13 = load i32, i32* @kqfd, align 4
  %14 = load i32, i32* @EVFILT_USER, align 4
  %15 = load i32, i32* @NOTE_TRIGGER, align 4
  %16 = call i32 @kevent_add(i32 %13, %struct.kevent* %2, i32 2, i32 %14, i32 0, i32 %15, i32 0, i32* null)
  %17 = load i32, i32* @EV_ONESHOT, align 4
  %18 = getelementptr inbounds %struct.kevent, %struct.kevent* %2, i32 0, i32 0
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* @NOTE_FFCTRLMASK, align 4
  %20 = xor i32 %19, -1
  %21 = getelementptr inbounds %struct.kevent, %struct.kevent* %2, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, %20
  store i32 %23, i32* %21, align 4
  %24 = load i32, i32* @NOTE_TRIGGER, align 4
  %25 = xor i32 %24, -1
  %26 = getelementptr inbounds %struct.kevent, %struct.kevent* %2, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, %25
  store i32 %28, i32* %26, align 4
  %29 = load i32, i32* @kqfd, align 4
  %30 = call i32 @kevent_get(i32 %29)
  %31 = call i32 @kevent_cmp(%struct.kevent* %2, i32 %30)
  %32 = call i32 (...) @test_no_kevents()
  %33 = call i32 (...) @success()
  ret void
}

declare dso_local i32 @test_begin(i8*) #1

declare dso_local i32 @test_no_kevents(...) #1

declare dso_local i32 @kevent_add(i32, %struct.kevent*, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @puts(i8*) #1

declare dso_local i32 @kevent_cmp(%struct.kevent*, i32) #1

declare dso_local i32 @kevent_get(i32) #1

declare dso_local i32 @success(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
