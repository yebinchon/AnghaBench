; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/evdev/extr_uinput.c_uinput_dtor.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/evdev/extr_uinput.c_uinput_dtor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uinput_cdev_state = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@M_EVDEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @uinput_dtor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uinput_dtor(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.uinput_cdev_state*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.uinput_cdev_state*
  store %struct.uinput_cdev_state* %5, %struct.uinput_cdev_state** %3, align 8
  %6 = load %struct.uinput_cdev_state*, %struct.uinput_cdev_state** %3, align 8
  %7 = getelementptr inbounds %struct.uinput_cdev_state, %struct.uinput_cdev_state* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @evdev_free(i32 %8)
  %10 = load %struct.uinput_cdev_state*, %struct.uinput_cdev_state** %3, align 8
  %11 = getelementptr inbounds %struct.uinput_cdev_state, %struct.uinput_cdev_state* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = call i32 @knlist_clear(i32* %12, i32 0)
  %14 = load %struct.uinput_cdev_state*, %struct.uinput_cdev_state** %3, align 8
  %15 = getelementptr inbounds %struct.uinput_cdev_state, %struct.uinput_cdev_state* %14, i32 0, i32 1
  %16 = call i32 @seldrain(%struct.TYPE_2__* %15)
  %17 = load %struct.uinput_cdev_state*, %struct.uinput_cdev_state** %3, align 8
  %18 = getelementptr inbounds %struct.uinput_cdev_state, %struct.uinput_cdev_state* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = call i32 @knlist_destroy(i32* %19)
  %21 = load %struct.uinput_cdev_state*, %struct.uinput_cdev_state** %3, align 8
  %22 = getelementptr inbounds %struct.uinput_cdev_state, %struct.uinput_cdev_state* %21, i32 0, i32 0
  %23 = call i32 @sx_destroy(i32* %22)
  %24 = load i8*, i8** %2, align 8
  %25 = load i32, i32* @M_EVDEV, align 4
  %26 = call i32 @free(i8* %24, i32 %25)
  ret void
}

declare dso_local i32 @evdev_free(i32) #1

declare dso_local i32 @knlist_clear(i32*, i32) #1

declare dso_local i32 @seldrain(%struct.TYPE_2__*) #1

declare dso_local i32 @knlist_destroy(i32*) #1

declare dso_local i32 @sx_destroy(i32*) #1

declare dso_local i32 @free(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
