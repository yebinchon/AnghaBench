; ModuleID = '/home/carl/AnghaBench/freebsd/tests/sys/kqueue/libkqueue/extr_vnode.c_test_kevent_vnode_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/tests/sys/kqueue/libkqueue/extr_vnode.c_test_kevent_vnode_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kevent = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"kevent(EVFILT_VNODE, EV_ADD)\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"./kqueue-test.tmp\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"touch ./kqueue-test.tmp\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@vnode_fd = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [11 x i8] c"open of %s\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"vnode_fd = %d\0A\00", align 1
@EVFILT_VNODE = common dso_local global i32 0, align 4
@EV_ADD = common dso_local global i32 0, align 4
@NOTE_WRITE = common dso_local global i32 0, align 4
@NOTE_ATTRIB = common dso_local global i32 0, align 4
@NOTE_RENAME = common dso_local global i32 0, align 4
@NOTE_DELETE = common dso_local global i32 0, align 4
@kqfd = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_kevent_vnode_add() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca %struct.kevent, align 4
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  %4 = load i8*, i8** %1, align 8
  %5 = call i32 @test_begin(i8* %4)
  %6 = call i32 @system(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %7 = load i8*, i8** %2, align 8
  %8 = load i32, i32* @O_RDONLY, align 4
  %9 = call i64 @open(i8* %7, i32 %8)
  store i64 %9, i64* @vnode_fd, align 8
  %10 = load i64, i64* @vnode_fd, align 8
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %0
  %13 = load i8*, i8** %2, align 8
  %14 = call i32 @err(i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* %13)
  br label %18

15:                                               ; preds = %0
  %16 = load i64, i64* @vnode_fd, align 8
  %17 = call i32 @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i64 %16)
  br label %18

18:                                               ; preds = %15, %12
  %19 = load i64, i64* @vnode_fd, align 8
  %20 = load i32, i32* @EVFILT_VNODE, align 4
  %21 = load i32, i32* @EV_ADD, align 4
  %22 = load i32, i32* @NOTE_WRITE, align 4
  %23 = load i32, i32* @NOTE_ATTRIB, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @NOTE_RENAME, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @NOTE_DELETE, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @EV_SET(%struct.kevent* %3, i64 %19, i32 %20, i32 %21, i32 %28, i32 0, i32* null)
  %30 = load i32, i32* @kqfd, align 4
  %31 = call i64 @kevent(i32 %30, %struct.kevent* %3, i32 1, i32* null, i32 0, i32* null)
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %18
  %34 = load i8*, i8** %1, align 8
  %35 = call i32 @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %34)
  br label %36

36:                                               ; preds = %33, %18
  %37 = call i32 (...) @success()
  ret void
}

declare dso_local i32 @test_begin(i8*) #1

declare dso_local i32 @system(i8*) #1

declare dso_local i64 @open(i8*, i32) #1

declare dso_local i32 @err(i32, i8*, i8*) #1

declare dso_local i32 @printf(i8*, i64) #1

declare dso_local i32 @EV_SET(%struct.kevent*, i64, i32, i32, i32, i32, i32*) #1

declare dso_local i64 @kevent(i32, %struct.kevent*, i32, i32*, i32, i32*) #1

declare dso_local i32 @success(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
