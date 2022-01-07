; ModuleID = '/home/carl/AnghaBench/freebsd/tests/sys/kqueue/libkqueue/extr_vnode.c_test_kevent_vnode_note_rename.c'
source_filename = "/home/carl/AnghaBench/freebsd/tests/sys/kqueue/libkqueue/extr_vnode.c_test_kevent_vnode_note_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kevent = type { i64, i64, i64, i32 }

@.str = private unnamed_addr constant [34 x i8] c"kevent(EVFILT_VNODE, NOTE_RENAME)\00", align 1
@vnode_fd = common dso_local global i64 0, align 8
@EVFILT_VNODE = common dso_local global i64 0, align 8
@EV_ADD = common dso_local global i32 0, align 4
@EV_ONESHOT = common dso_local global i32 0, align 4
@NOTE_RENAME = common dso_local global i64 0, align 8
@kqfd = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"mv ./kqueue-test.tmp ./kqueue-test2.tmp\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"system\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"%s - incorrect event (sig=%u; filt=%d; flags=%d)\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"mv ./kqueue-test2.tmp ./kqueue-test.tmp\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_kevent_vnode_note_rename() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca %struct.kevent, align 8
  %3 = alloca i32, align 4
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  %4 = load i8*, i8** %1, align 8
  %5 = call i32 @test_begin(i8* %4)
  %6 = load i64, i64* @vnode_fd, align 8
  %7 = load i64, i64* @EVFILT_VNODE, align 8
  %8 = load i32, i32* @EV_ADD, align 4
  %9 = load i32, i32* @EV_ONESHOT, align 4
  %10 = or i32 %8, %9
  %11 = load i64, i64* @NOTE_RENAME, align 8
  %12 = call i32 @EV_SET(%struct.kevent* %2, i64 %6, i64 %7, i32 %10, i64 %11, i32 0, i32* null)
  %13 = load i32, i32* @kqfd, align 4
  %14 = call i32 @kevent(i32 %13, %struct.kevent* %2, i32 1, %struct.kevent* null, i32 0, i32* null)
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %0
  %17 = load i8*, i8** %1, align 8
  %18 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %17)
  br label %19

19:                                               ; preds = %16, %0
  %20 = call i64 @system(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %19
  %25 = load i32, i32* @kqfd, align 4
  %26 = call i32 @kevent(i32 %25, %struct.kevent* null, i32 0, %struct.kevent* %2, i32 1, i32* null)
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* %3, align 4
  %28 = icmp slt i32 %27, 1
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i8*, i8** %1, align 8
  %31 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %30)
  br label %32

32:                                               ; preds = %29, %24
  %33 = getelementptr inbounds %struct.kevent, %struct.kevent* %2, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @vnode_fd, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %47, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.kevent, %struct.kevent* %2, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @EVFILT_VNODE, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %47, label %42

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.kevent, %struct.kevent* %2, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @NOTE_RENAME, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %57

47:                                               ; preds = %42, %37, %32
  %48 = load i8*, i8** %1, align 8
  %49 = getelementptr inbounds %struct.kevent, %struct.kevent* %2, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = trunc i64 %50 to i32
  %52 = getelementptr inbounds %struct.kevent, %struct.kevent* %2, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds %struct.kevent, %struct.kevent* %2, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), i8* %48, i32 %51, i64 %53, i32 %55)
  br label %57

57:                                               ; preds = %47, %42
  %58 = call i64 @system(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0))
  %59 = icmp slt i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  br label %62

62:                                               ; preds = %60, %57
  %63 = call i32 (...) @success()
  ret void
}

declare dso_local i32 @test_begin(i8*) #1

declare dso_local i32 @EV_SET(%struct.kevent*, i64, i64, i32, i64, i32, i32*) #1

declare dso_local i32 @kevent(i32, %struct.kevent*, i32, %struct.kevent*, i32, i32*) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i64 @system(i8*) #1

declare dso_local i32 @success(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
