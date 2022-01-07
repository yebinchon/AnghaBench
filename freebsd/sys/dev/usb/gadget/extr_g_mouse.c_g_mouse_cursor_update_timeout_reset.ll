; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/gadget/extr_g_mouse.c_g_mouse_cursor_update_timeout_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/gadget/extr_g_mouse.c_g_mouse_cursor_update_timeout_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_mouse_softc = type { i32, i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@g_mouse_cursor_update_interval = common dso_local global i32 0, align 4
@g_mouse_cursor_update_timeout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g_mouse_softc*)* @g_mouse_cursor_update_timeout_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_mouse_cursor_update_timeout_reset(%struct.g_mouse_softc* %0) #0 {
  %2 = alloca %struct.g_mouse_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.g_mouse_softc* %0, %struct.g_mouse_softc** %2, align 8
  %4 = load i32, i32* @g_mouse_cursor_update_interval, align 4
  store i32 %4, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = icmp sle i32 %5, 0
  br i1 %6, label %7, label %18

7:                                                ; preds = %1
  %8 = load %struct.g_mouse_softc*, %struct.g_mouse_softc** %2, align 8
  %9 = getelementptr inbounds %struct.g_mouse_softc, %struct.g_mouse_softc* %8, i32 0, i32 3
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  store i64 0, i64* %10, align 8
  %11 = load %struct.g_mouse_softc*, %struct.g_mouse_softc** %2, align 8
  %12 = getelementptr inbounds %struct.g_mouse_softc, %struct.g_mouse_softc* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store i64 0, i64* %13, align 8
  %14 = load %struct.g_mouse_softc*, %struct.g_mouse_softc** %2, align 8
  %15 = getelementptr inbounds %struct.g_mouse_softc, %struct.g_mouse_softc* %14, i32 0, i32 0
  store i32 0, i32* %15, align 8
  %16 = load %struct.g_mouse_softc*, %struct.g_mouse_softc** %2, align 8
  %17 = getelementptr inbounds %struct.g_mouse_softc, %struct.g_mouse_softc* %16, i32 0, i32 2
  store i64 0, i64* %17, align 8
  br label %21

18:                                               ; preds = %1
  %19 = load %struct.g_mouse_softc*, %struct.g_mouse_softc** %2, align 8
  %20 = getelementptr inbounds %struct.g_mouse_softc, %struct.g_mouse_softc* %19, i32 0, i32 0
  store i32 1, i32* %20, align 8
  br label %21

21:                                               ; preds = %18, %7
  %22 = load i32, i32* %3, align 4
  %23 = icmp sle i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* %3, align 4
  %26 = icmp sgt i32 %25, 1023
  br i1 %26, label %27, label %28

27:                                               ; preds = %24, %21
  store i32 1023, i32* %3, align 4
  br label %28

28:                                               ; preds = %27, %24
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @USB_MS_TO_TICKS(i32 %29)
  store i32 %30, i32* %3, align 4
  %31 = load %struct.g_mouse_softc*, %struct.g_mouse_softc** %2, align 8
  %32 = getelementptr inbounds %struct.g_mouse_softc, %struct.g_mouse_softc* %31, i32 0, i32 1
  %33 = load i32, i32* %3, align 4
  %34 = load %struct.g_mouse_softc*, %struct.g_mouse_softc** %2, align 8
  %35 = call i32 @usb_callout_reset(i32* %32, i32 %33, i32* @g_mouse_cursor_update_timeout, %struct.g_mouse_softc* %34)
  ret void
}

declare dso_local i32 @USB_MS_TO_TICKS(i32) #1

declare dso_local i32 @usb_callout_reset(i32*, i32, i32*, %struct.g_mouse_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
