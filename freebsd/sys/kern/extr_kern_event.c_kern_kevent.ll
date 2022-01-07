; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_event.c_kern_kevent.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_event.c_kern_kevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.kevent_copyops = type { i32 }
%struct.timespec = type { i32 }
%struct.file = type { i32 }

@CAP_KQUEUE_CHANGE = common dso_local global i32 0, align 4
@CAP_KQUEUE_EVENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kern_kevent(%struct.thread* %0, i32 %1, i32 %2, i32 %3, %struct.kevent_copyops* %4, %struct.timespec* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.thread*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.kevent_copyops*, align 8
  %13 = alloca %struct.timespec*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.file*, align 8
  %16 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store %struct.kevent_copyops* %4, %struct.kevent_copyops** %12, align 8
  store %struct.timespec* %5, %struct.timespec** %13, align 8
  %17 = call i32 @cap_rights_init(i32* %14)
  %18 = load i32, i32* %10, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %6
  %21 = load i32, i32* @CAP_KQUEUE_CHANGE, align 4
  %22 = call i32 @cap_rights_set(i32* %14, i32 %21)
  br label %23

23:                                               ; preds = %20, %6
  %24 = load i32, i32* %11, align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i32, i32* @CAP_KQUEUE_EVENT, align 4
  %28 = call i32 @cap_rights_set(i32* %14, i32 %27)
  br label %29

29:                                               ; preds = %26, %23
  %30 = load %struct.thread*, %struct.thread** %8, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @fget(%struct.thread* %30, i32 %31, i32* %14, %struct.file** %15)
  store i32 %32, i32* %16, align 4
  %33 = load i32, i32* %16, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i32, i32* %16, align 4
  store i32 %36, i32* %7, align 4
  br label %49

37:                                               ; preds = %29
  %38 = load %struct.thread*, %struct.thread** %8, align 8
  %39 = load %struct.file*, %struct.file** %15, align 8
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %11, align 4
  %42 = load %struct.kevent_copyops*, %struct.kevent_copyops** %12, align 8
  %43 = load %struct.timespec*, %struct.timespec** %13, align 8
  %44 = call i32 @kern_kevent_fp(%struct.thread* %38, %struct.file* %39, i32 %40, i32 %41, %struct.kevent_copyops* %42, %struct.timespec* %43)
  store i32 %44, i32* %16, align 4
  %45 = load %struct.file*, %struct.file** %15, align 8
  %46 = load %struct.thread*, %struct.thread** %8, align 8
  %47 = call i32 @fdrop(%struct.file* %45, %struct.thread* %46)
  %48 = load i32, i32* %16, align 4
  store i32 %48, i32* %7, align 4
  br label %49

49:                                               ; preds = %37, %35
  %50 = load i32, i32* %7, align 4
  ret i32 %50
}

declare dso_local i32 @cap_rights_init(i32*) #1

declare dso_local i32 @cap_rights_set(i32*, i32) #1

declare dso_local i32 @fget(%struct.thread*, i32, i32*, %struct.file**) #1

declare dso_local i32 @kern_kevent_fp(%struct.thread*, %struct.file*, i32, i32, %struct.kevent_copyops*, %struct.timespec*) #1

declare dso_local i32 @fdrop(%struct.file*, %struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
