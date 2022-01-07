; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_event.c_kqfd_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_event.c_kqfd_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kevent = type { i32 }
%struct.thread = type { i32 }
%struct.kqueue = type { i32 }
%struct.file = type { i32 }

@CAP_KQUEUE_CHANGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kqfd_register(i32 %0, %struct.kevent* %1, %struct.thread* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.kevent*, align 8
  %8 = alloca %struct.thread*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.kqueue*, align 8
  %11 = alloca %struct.file*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.kevent* %1, %struct.kevent** %7, align 8
  store %struct.thread* %2, %struct.thread** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.thread*, %struct.thread** %8, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @CAP_KQUEUE_CHANGE, align 4
  %17 = call i32 @cap_rights_init(i32* %12, i32 %16)
  %18 = call i32 @fget(%struct.thread* %14, i32 %15, i32 %17, %struct.file** %11)
  store i32 %18, i32* %13, align 4
  %19 = load i32, i32* %13, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i32, i32* %13, align 4
  store i32 %22, i32* %5, align 4
  br label %41

23:                                               ; preds = %4
  %24 = load %struct.file*, %struct.file** %11, align 8
  %25 = call i32 @kqueue_acquire(%struct.file* %24, %struct.kqueue** %10)
  store i32 %25, i32* %13, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  br label %36

28:                                               ; preds = %23
  %29 = load %struct.kqueue*, %struct.kqueue** %10, align 8
  %30 = load %struct.kevent*, %struct.kevent** %7, align 8
  %31 = load %struct.thread*, %struct.thread** %8, align 8
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @kqueue_register(%struct.kqueue* %29, %struct.kevent* %30, %struct.thread* %31, i32 %32)
  store i32 %33, i32* %13, align 4
  %34 = load %struct.kqueue*, %struct.kqueue** %10, align 8
  %35 = call i32 @kqueue_release(%struct.kqueue* %34, i32 0)
  br label %36

36:                                               ; preds = %28, %27
  %37 = load %struct.file*, %struct.file** %11, align 8
  %38 = load %struct.thread*, %struct.thread** %8, align 8
  %39 = call i32 @fdrop(%struct.file* %37, %struct.thread* %38)
  %40 = load i32, i32* %13, align 4
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %36, %21
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

declare dso_local i32 @fget(%struct.thread*, i32, i32, %struct.file**) #1

declare dso_local i32 @cap_rights_init(i32*, i32) #1

declare dso_local i32 @kqueue_acquire(%struct.file*, %struct.kqueue**) #1

declare dso_local i32 @kqueue_register(%struct.kqueue*, %struct.kevent*, %struct.thread*, i32) #1

declare dso_local i32 @kqueue_release(%struct.kqueue*, i32) #1

declare dso_local i32 @fdrop(%struct.file*, %struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
