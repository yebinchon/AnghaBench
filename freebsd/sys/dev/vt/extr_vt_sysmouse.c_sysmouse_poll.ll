; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vt/extr_vt_sysmouse.c_sysmouse_poll.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vt/extr_vt_sysmouse.c_sysmouse_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32 }
%struct.thread = type { i32 }

@sysmouse_lock = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i32 0, align 4
@POLLRDNORM = common dso_local global i32 0, align 4
@sysmouse_length = common dso_local global i64 0, align 8
@sysmouse_bufpoll = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, %struct.thread*)* @sysmouse_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sysmouse_poll(%struct.cdev* %0, i32 %1, %struct.thread* %2) #0 {
  %4 = alloca %struct.cdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.thread*, align 8
  %7 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.thread* %2, %struct.thread** %6, align 8
  store i32 0, i32* %7, align 4
  %8 = call i32 @mtx_lock(i32* @sysmouse_lock)
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @POLLIN, align 4
  %11 = load i32, i32* @POLLRDNORM, align 4
  %12 = or i32 %10, %11
  %13 = and i32 %9, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %3
  %16 = load i64, i64* @sysmouse_length, align 8
  %17 = icmp sgt i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %15
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @POLLIN, align 4
  %21 = load i32, i32* @POLLRDNORM, align 4
  %22 = or i32 %20, %21
  %23 = and i32 %19, %22
  store i32 %23, i32* %7, align 4
  br label %27

24:                                               ; preds = %15
  %25 = load %struct.thread*, %struct.thread** %6, align 8
  %26 = call i32 @selrecord(%struct.thread* %25, i32* @sysmouse_bufpoll)
  br label %27

27:                                               ; preds = %24, %18
  br label %28

28:                                               ; preds = %27, %3
  %29 = call i32 @mtx_unlock(i32* @sysmouse_lock)
  %30 = load i32, i32* %7, align 4
  ret i32 %30
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @selrecord(%struct.thread*, i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
