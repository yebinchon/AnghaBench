; ModuleID = '/home/carl/AnghaBench/freebsd/tests/sys/kqueue/libkqueue/extr_vnode.c_test_kevent_vnode_del.c'
source_filename = "/home/carl/AnghaBench/freebsd/tests/sys/kqueue/libkqueue/extr_vnode.c_test_kevent_vnode_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kevent = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"kevent(EVFILT_VNODE, EV_DELETE)\00", align 1
@vnode_fd = common dso_local global i32 0, align 4
@EVFILT_VNODE = common dso_local global i32 0, align 4
@EV_DELETE = common dso_local global i32 0, align 4
@kqfd = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_kevent_vnode_del() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca %struct.kevent, align 4
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  %3 = load i8*, i8** %1, align 8
  %4 = call i32 @test_begin(i8* %3)
  %5 = load i32, i32* @vnode_fd, align 4
  %6 = load i32, i32* @EVFILT_VNODE, align 4
  %7 = load i32, i32* @EV_DELETE, align 4
  %8 = call i32 @EV_SET(%struct.kevent* %2, i32 %5, i32 %6, i32 %7, i32 0, i32 0, i32* null)
  %9 = load i32, i32* @kqfd, align 4
  %10 = call i64 @kevent(i32 %9, %struct.kevent* %2, i32 1, i32* null, i32 0, i32* null)
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %0
  %13 = load i8*, i8** %1, align 8
  %14 = call i32 @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %13)
  br label %15

15:                                               ; preds = %12, %0
  %16 = call i32 (...) @success()
  ret void
}

declare dso_local i32 @test_begin(i8*) #1

declare dso_local i32 @EV_SET(%struct.kevent*, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i64 @kevent(i32, %struct.kevent*, i32, i32*, i32, i32*) #1

declare dso_local i32 @err(i32, i8*, i8*) #1

declare dso_local i32 @success(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
