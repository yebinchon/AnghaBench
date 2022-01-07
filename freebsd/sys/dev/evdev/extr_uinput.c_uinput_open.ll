; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/evdev/extr_uinput.c_uinput_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/evdev/extr_uinput.c_uinput_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32 }
%struct.thread = type { i32 }
%struct.uinput_cdev_state = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@M_EVDEV = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"uinput\00", align 1
@uinput_knllock = common dso_local global i32 0, align 4
@uinput_knlunlock = common dso_local global i32 0, align 4
@uinput_knl_assert_locked = common dso_local global i32 0, align 4
@uinput_knl_assert_unlocked = common dso_local global i32 0, align 4
@uinput_dtor = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, i32, %struct.thread*)* @uinput_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uinput_open(%struct.cdev* %0, i32 %1, i32 %2, %struct.thread* %3) #0 {
  %5 = alloca %struct.cdev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.thread*, align 8
  %9 = alloca %struct.uinput_cdev_state*, align 8
  store %struct.cdev* %0, %struct.cdev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.thread* %3, %struct.thread** %8, align 8
  %10 = load i32, i32* @M_EVDEV, align 4
  %11 = load i32, i32* @M_WAITOK, align 4
  %12 = load i32, i32* @M_ZERO, align 4
  %13 = or i32 %11, %12
  %14 = call %struct.uinput_cdev_state* @malloc(i32 12, i32 %10, i32 %13)
  store %struct.uinput_cdev_state* %14, %struct.uinput_cdev_state** %9, align 8
  %15 = call i32 (...) @evdev_alloc()
  %16 = load %struct.uinput_cdev_state*, %struct.uinput_cdev_state** %9, align 8
  %17 = getelementptr inbounds %struct.uinput_cdev_state, %struct.uinput_cdev_state* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 4
  %18 = load %struct.uinput_cdev_state*, %struct.uinput_cdev_state** %9, align 8
  %19 = getelementptr inbounds %struct.uinput_cdev_state, %struct.uinput_cdev_state* %18, i32 0, i32 0
  %20 = call i32 @sx_init(i32* %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.uinput_cdev_state*, %struct.uinput_cdev_state** %9, align 8
  %22 = getelementptr inbounds %struct.uinput_cdev_state, %struct.uinput_cdev_state* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load %struct.uinput_cdev_state*, %struct.uinput_cdev_state** %9, align 8
  %25 = getelementptr inbounds %struct.uinput_cdev_state, %struct.uinput_cdev_state* %24, i32 0, i32 0
  %26 = load i32, i32* @uinput_knllock, align 4
  %27 = load i32, i32* @uinput_knlunlock, align 4
  %28 = load i32, i32* @uinput_knl_assert_locked, align 4
  %29 = load i32, i32* @uinput_knl_assert_unlocked, align 4
  %30 = call i32 @knlist_init(i32* %23, i32* %25, i32 %26, i32 %27, i32 %28, i32 %29)
  %31 = load %struct.uinput_cdev_state*, %struct.uinput_cdev_state** %9, align 8
  %32 = load i32, i32* @uinput_dtor, align 4
  %33 = call i32 @devfs_set_cdevpriv(%struct.uinput_cdev_state* %31, i32 %32)
  ret i32 0
}

declare dso_local %struct.uinput_cdev_state* @malloc(i32, i32, i32) #1

declare dso_local i32 @evdev_alloc(...) #1

declare dso_local i32 @sx_init(i32*, i8*) #1

declare dso_local i32 @knlist_init(i32*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @devfs_set_cdevpriv(%struct.uinput_cdev_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
