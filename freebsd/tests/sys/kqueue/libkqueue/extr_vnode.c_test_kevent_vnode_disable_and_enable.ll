; ModuleID = '/home/carl/AnghaBench/freebsd/tests/sys/kqueue/libkqueue/extr_vnode.c_test_kevent_vnode_disable_and_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/tests/sys/kqueue/libkqueue/extr_vnode.c_test_kevent_vnode_disable_and_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kevent = type { i64, i64, i64, i32 }

@.str = private unnamed_addr constant [47 x i8] c"kevent(EVFILT_VNODE, EV_DISABLE and EV_ENABLE)\00", align 1
@vnode_fd = common dso_local global i64 0, align 8
@EVFILT_VNODE = common dso_local global i64 0, align 8
@EV_ADD = common dso_local global i32 0, align 4
@EV_ONESHOT = common dso_local global i32 0, align 4
@NOTE_ATTRIB = common dso_local global i64 0, align 8
@kqfd = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@EV_DISABLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"touch ./kqueue-test.tmp\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"system\00", align 1
@EV_ENABLE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [49 x i8] c"%s - incorrect event (sig=%u; filt=%d; flags=%d)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_kevent_vnode_disable_and_enable() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca %struct.kevent, align 8
  %3 = alloca i32, align 4
  store i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  %4 = load i8*, i8** %1, align 8
  %5 = call i32 @test_begin(i8* %4)
  %6 = call i32 (...) @test_no_kevents()
  %7 = load i64, i64* @vnode_fd, align 8
  %8 = load i64, i64* @EVFILT_VNODE, align 8
  %9 = load i32, i32* @EV_ADD, align 4
  %10 = load i32, i32* @EV_ONESHOT, align 4
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
  %21 = load i32, i32* @EV_DISABLE, align 4
  %22 = getelementptr inbounds %struct.kevent, %struct.kevent* %2, i32 0, i32 3
  store i32 %21, i32* %22, align 8
  %23 = load i32, i32* @kqfd, align 4
  %24 = call i32 @kevent(i32 %23, %struct.kevent* %2, i32 1, %struct.kevent* null, i32 0, i32* null)
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load i8*, i8** %1, align 8
  %28 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %27)
  br label %29

29:                                               ; preds = %26, %20
  %30 = call i64 @system(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %29
  %35 = call i32 (...) @test_no_kevents()
  %36 = load i32, i32* @EV_ENABLE, align 4
  %37 = getelementptr inbounds %struct.kevent, %struct.kevent* %2, i32 0, i32 3
  store i32 %36, i32* %37, align 8
  %38 = load i32, i32* @kqfd, align 4
  %39 = call i32 @kevent(i32 %38, %struct.kevent* %2, i32 1, %struct.kevent* null, i32 0, i32* null)
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %34
  %42 = load i8*, i8** %1, align 8
  %43 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %42)
  br label %44

44:                                               ; preds = %41, %34
  %45 = call i64 @system(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  br label %49

49:                                               ; preds = %47, %44
  %50 = load i32, i32* @kqfd, align 4
  %51 = call i32 @kevent(i32 %50, %struct.kevent* null, i32 0, %struct.kevent* %2, i32 1, i32* null)
  store i32 %51, i32* %3, align 4
  %52 = load i32, i32* %3, align 4
  %53 = icmp slt i32 %52, 1
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load i8*, i8** %1, align 8
  %56 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %55)
  br label %57

57:                                               ; preds = %54, %49
  %58 = getelementptr inbounds %struct.kevent, %struct.kevent* %2, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @vnode_fd, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %72, label %62

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.kevent, %struct.kevent* %2, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @EVFILT_VNODE, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %72, label %67

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.kevent, %struct.kevent* %2, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @NOTE_ATTRIB, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %82

72:                                               ; preds = %67, %62, %57
  %73 = load i8*, i8** %1, align 8
  %74 = getelementptr inbounds %struct.kevent, %struct.kevent* %2, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = trunc i64 %75 to i32
  %77 = getelementptr inbounds %struct.kevent, %struct.kevent* %2, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds %struct.kevent, %struct.kevent* %2, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), i8* %73, i32 %76, i64 %78, i32 %80)
  br label %82

82:                                               ; preds = %72, %67
  %83 = call i32 (...) @success()
  ret void
}

declare dso_local i32 @test_begin(i8*) #1

declare dso_local i32 @test_no_kevents(...) #1

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
