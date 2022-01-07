; ModuleID = '/home/carl/AnghaBench/freebsd/tests/sys/kqueue/libkqueue/extr_vnode.c_test_kevent_vnode_dispatch.c'
source_filename = "/home/carl/AnghaBench/freebsd/tests/sys/kqueue/libkqueue/extr_vnode.c_test_kevent_vnode_dispatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kevent = type { i64, i64, i64, i32 }

@.str = private unnamed_addr constant [34 x i8] c"kevent(EVFILT_VNODE, EV_DISPATCH)\00", align 1
@vnode_fd = common dso_local global i64 0, align 8
@EVFILT_VNODE = common dso_local global i64 0, align 8
@EV_ADD = common dso_local global i32 0, align 4
@EV_DISPATCH = common dso_local global i32 0, align 4
@NOTE_ATTRIB = common dso_local global i64 0, align 8
@kqfd = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"touch ./kqueue-test.tmp\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"system\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"%s - incorrect event (sig=%u; filt=%d; flags=%d)\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"-- checking that watch is disabled\00", align 1
@EV_DELETE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [24 x i8] c"remove watch failed: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_kevent_vnode_dispatch() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca %struct.kevent, align 8
  %3 = alloca i32, align 4
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  %4 = load i8*, i8** %1, align 8
  %5 = call i32 @test_begin(i8* %4)
  %6 = call i32 (...) @test_no_kevents()
  %7 = load i64, i64* @vnode_fd, align 8
  %8 = load i64, i64* @EVFILT_VNODE, align 8
  %9 = load i32, i32* @EV_ADD, align 4
  %10 = load i32, i32* @EV_DISPATCH, align 4
  %11 = or i32 %9, %10
  %12 = load i64, i64* @NOTE_ATTRIB, align 8
  %13 = call i32 @EV_SET(%struct.kevent* %2, i64 %7, i64 %8, i32 %11, i64 %12, i32 0, i32* null)
  %14 = load i32, i32* @kqfd, align 4
  %15 = call i32 @kevent(i32 %14, %struct.kevent* %2, i32 1, %struct.kevent* null, i32 0, i32* null)
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %0
  %18 = load i8*, i8** %1, align 8
  %19 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %18)
  br label %20

20:                                               ; preds = %17, %0
  %21 = call i64 @system(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %20
  %26 = load i32, i32* @kqfd, align 4
  %27 = call i32 @kevent(i32 %26, %struct.kevent* null, i32 0, %struct.kevent* %2, i32 1, i32* null)
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* %3, align 4
  %29 = icmp slt i32 %28, 1
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i8*, i8** %1, align 8
  %32 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %31)
  br label %33

33:                                               ; preds = %30, %25
  %34 = getelementptr inbounds %struct.kevent, %struct.kevent* %2, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @vnode_fd, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %48, label %38

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.kevent, %struct.kevent* %2, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @EVFILT_VNODE, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %48, label %43

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.kevent, %struct.kevent* %2, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @NOTE_ATTRIB, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %58

48:                                               ; preds = %43, %38, %33
  %49 = load i8*, i8** %1, align 8
  %50 = getelementptr inbounds %struct.kevent, %struct.kevent* %2, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = trunc i64 %51 to i32
  %53 = getelementptr inbounds %struct.kevent, %struct.kevent* %2, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds %struct.kevent, %struct.kevent* %2, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), i8* %49, i32 %52, i64 %54, i32 %56)
  br label %58

58:                                               ; preds = %48, %43
  %59 = call i32 @puts(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  %60 = call i64 @system(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %61 = icmp slt i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  br label %64

64:                                               ; preds = %62, %58
  %65 = call i32 (...) @test_no_kevents()
  %66 = load i64, i64* @vnode_fd, align 8
  %67 = load i64, i64* @EVFILT_VNODE, align 8
  %68 = load i32, i32* @EV_DELETE, align 4
  %69 = load i64, i64* @NOTE_ATTRIB, align 8
  %70 = call i32 @EV_SET(%struct.kevent* %2, i64 %66, i64 %67, i32 %68, i64 %69, i32 0, i32* null)
  %71 = load i32, i32* @kqfd, align 4
  %72 = call i32 @kevent(i32 %71, %struct.kevent* %2, i32 1, %struct.kevent* null, i32 0, i32* null)
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %64
  %75 = load i8*, i8** %1, align 8
  %76 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i8* %75)
  br label %77

77:                                               ; preds = %74, %64
  %78 = call i32 (...) @success()
  ret void
}

declare dso_local i32 @test_begin(i8*) #1

declare dso_local i32 @test_no_kevents(...) #1

declare dso_local i32 @EV_SET(%struct.kevent*, i64, i64, i32, i64, i32, i32*) #1

declare dso_local i32 @kevent(i32, %struct.kevent*, i32, %struct.kevent*, i32, i32*) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i64 @system(i8*) #1

declare dso_local i32 @puts(i8*) #1

declare dso_local i32 @success(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
