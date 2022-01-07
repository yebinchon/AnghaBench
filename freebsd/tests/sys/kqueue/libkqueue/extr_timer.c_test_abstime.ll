; ModuleID = '/home/carl/AnghaBench/freebsd/tests/sys/kqueue/libkqueue/extr_timer.c_test_abstime.c'
source_filename = "/home/carl/AnghaBench/freebsd/tests/sys/kqueue/libkqueue/extr_timer.c_test_abstime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kevent = type { i32, i32, i64 }

@.str = private unnamed_addr constant [47 x i8] c"kevent(EVFILT_TIMER, EV_ONESHOT, NOTE_ABSTIME)\00", align 1
@vnode_fd = common dso_local global i32 0, align 4
@EVFILT_TIMER = common dso_local global i32 0, align 4
@EV_ADD = common dso_local global i32 0, align 4
@EV_ONESHOT = common dso_local global i32 0, align 4
@NOTE_ABSTIME = common dso_local global i32 0, align 4
@NOTE_SECONDS = common dso_local global i32 0, align 4
@kqfd = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"too early %jd %jd\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_abstime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_abstime() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca %struct.kevent, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  store i32 3, i32* %5, align 4
  %6 = load i8*, i8** %1, align 8
  %7 = call i32 @test_begin(i8* %6)
  %8 = call i32 (...) @test_no_kevents()
  %9 = call i64 @time(i32* null)
  store i64 %9, i64* %3, align 8
  %10 = load i32, i32* @vnode_fd, align 4
  %11 = load i32, i32* @EVFILT_TIMER, align 4
  %12 = load i32, i32* @EV_ADD, align 4
  %13 = load i32, i32* @EV_ONESHOT, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @NOTE_ABSTIME, align 4
  %16 = load i32, i32* @NOTE_SECONDS, align 4
  %17 = or i32 %15, %16
  %18 = load i64, i64* %3, align 8
  %19 = add nsw i64 %18, 3
  %20 = call i32 @EV_SET(%struct.kevent* %2, i32 %10, i32 %11, i32 %14, i32 %17, i64 %19, i32* null)
  %21 = load i32, i32* @kqfd, align 4
  %22 = call i64 @kevent(i32 %21, %struct.kevent* %2, i32 1, i32* null, i32 0, i32* null)
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %0
  %25 = load i8*, i8** %1, align 8
  %26 = call i32 (i32, i8*, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %25)
  br label %27

27:                                               ; preds = %24, %0
  %28 = load i32, i32* @EV_ADD, align 4
  %29 = load i32, i32* @EV_ONESHOT, align 4
  %30 = or i32 %28, %29
  %31 = getelementptr inbounds %struct.kevent, %struct.kevent* %2, i32 0, i32 0
  store i32 %30, i32* %31, align 8
  %32 = getelementptr inbounds %struct.kevent, %struct.kevent* %2, i32 0, i32 1
  store i32 1, i32* %32, align 4
  %33 = getelementptr inbounds %struct.kevent, %struct.kevent* %2, i32 0, i32 2
  store i64 0, i64* %33, align 8
  %34 = load i32, i32* @kqfd, align 4
  %35 = call i32 @kevent_get(i32 %34)
  %36 = call i32 @kevent_cmp(%struct.kevent* %2, i32 %35)
  %37 = call i64 @time(i32* null)
  store i64 %37, i64* %4, align 8
  %38 = load i64, i64* %4, align 8
  %39 = load i64, i64* %3, align 8
  %40 = add nsw i64 %39, 3
  %41 = icmp slt i64 %38, %40
  br i1 %41, label %42, label %51

42:                                               ; preds = %27
  %43 = load i64, i64* %4, align 8
  %44 = trunc i64 %43 to i32
  %45 = sext i32 %44 to i64
  %46 = inttoptr i64 %45 to i8*
  %47 = load i64, i64* %3, align 8
  %48 = add nsw i64 %47, 3
  %49 = trunc i64 %48 to i32
  %50 = call i32 (i32, i8*, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* %46, i32 %49)
  br label %51

51:                                               ; preds = %42, %27
  %52 = call i32 @sleep(i32 3)
  %53 = call i32 (...) @test_no_kevents()
  %54 = call i32 (...) @success()
  ret void
}

declare dso_local i32 @test_begin(i8*) #1

declare dso_local i32 @test_no_kevents(...) #1

declare dso_local i64 @time(i32*) #1

declare dso_local i32 @EV_SET(%struct.kevent*, i32, i32, i32, i32, i64, i32*) #1

declare dso_local i64 @kevent(i32, %struct.kevent*, i32, i32*, i32, i32*) #1

declare dso_local i32 @err(i32, i8*, i8*, ...) #1

declare dso_local i32 @kevent_cmp(%struct.kevent*, i32) #1

declare dso_local i32 @kevent_get(i32) #1

declare dso_local i32 @sleep(i32) #1

declare dso_local i32 @success(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
