; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/evdev/extr_uinput.c_uinput_ev_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/evdev/extr_uinput.c_uinput_ev_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evdev_dev = type { i32 }
%struct.uinput_cdev_state = type { i64 }

@EV_LED = common dso_local global i64 0, align 8
@UINPUT_RUNNING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.evdev_dev*, i64, i64, i32)* @uinput_ev_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uinput_ev_event(%struct.evdev_dev* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.evdev_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.uinput_cdev_state*, align 8
  store %struct.evdev_dev* %0, %struct.evdev_dev** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.evdev_dev*, %struct.evdev_dev** %5, align 8
  %11 = call %struct.uinput_cdev_state* @evdev_get_softc(%struct.evdev_dev* %10)
  store %struct.uinput_cdev_state* %11, %struct.uinput_cdev_state** %9, align 8
  %12 = load i64, i64* %6, align 8
  %13 = load i64, i64* @EV_LED, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %4
  %16 = load %struct.evdev_dev*, %struct.evdev_dev** %5, align 8
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* %7, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @evdev_push_event(%struct.evdev_dev* %16, i64 %17, i64 %18, i32 %19)
  br label %21

21:                                               ; preds = %15, %4
  %22 = load %struct.uinput_cdev_state*, %struct.uinput_cdev_state** %9, align 8
  %23 = call i32 @UINPUT_LOCK(%struct.uinput_cdev_state* %22)
  %24 = load %struct.uinput_cdev_state*, %struct.uinput_cdev_state** %9, align 8
  %25 = getelementptr inbounds %struct.uinput_cdev_state, %struct.uinput_cdev_state* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @UINPUT_RUNNING, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %21
  %30 = load %struct.uinput_cdev_state*, %struct.uinput_cdev_state** %9, align 8
  %31 = load i64, i64* %6, align 8
  %32 = load i64, i64* %7, align 8
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @uinput_enqueue_event(%struct.uinput_cdev_state* %30, i64 %31, i64 %32, i32 %33)
  %35 = load %struct.uinput_cdev_state*, %struct.uinput_cdev_state** %9, align 8
  %36 = call i32 @uinput_notify(%struct.uinput_cdev_state* %35)
  br label %37

37:                                               ; preds = %29, %21
  %38 = load %struct.uinput_cdev_state*, %struct.uinput_cdev_state** %9, align 8
  %39 = call i32 @UINPUT_UNLOCK(%struct.uinput_cdev_state* %38)
  ret void
}

declare dso_local %struct.uinput_cdev_state* @evdev_get_softc(%struct.evdev_dev*) #1

declare dso_local i32 @evdev_push_event(%struct.evdev_dev*, i64, i64, i32) #1

declare dso_local i32 @UINPUT_LOCK(%struct.uinput_cdev_state*) #1

declare dso_local i32 @uinput_enqueue_event(%struct.uinput_cdev_state*, i64, i64, i32) #1

declare dso_local i32 @uinput_notify(%struct.uinput_cdev_state*) #1

declare dso_local i32 @UINPUT_UNLOCK(%struct.uinput_cdev_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
