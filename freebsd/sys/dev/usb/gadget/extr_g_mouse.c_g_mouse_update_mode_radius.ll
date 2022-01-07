; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/gadget/extr_g_mouse.c_g_mouse_update_mode_radius.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/gadget/extr_g_mouse.c_g_mouse_update_mode_radius.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_mouse_softc = type { i32, i32 }

@g_mouse_mode = common dso_local global i32 0, align 4
@g_mouse_cursor_radius = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g_mouse_softc*)* @g_mouse_update_mode_radius to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_mouse_update_mode_radius(%struct.g_mouse_softc* %0) #0 {
  %2 = alloca %struct.g_mouse_softc*, align 8
  store %struct.g_mouse_softc* %0, %struct.g_mouse_softc** %2, align 8
  %3 = load i32, i32* @g_mouse_mode, align 4
  %4 = load %struct.g_mouse_softc*, %struct.g_mouse_softc** %2, align 8
  %5 = getelementptr inbounds %struct.g_mouse_softc, %struct.g_mouse_softc* %4, i32 0, i32 1
  store i32 %3, i32* %5, align 4
  %6 = load i32, i32* @g_mouse_cursor_radius, align 4
  %7 = load %struct.g_mouse_softc*, %struct.g_mouse_softc** %2, align 8
  %8 = getelementptr inbounds %struct.g_mouse_softc, %struct.g_mouse_softc* %7, i32 0, i32 0
  store i32 %6, i32* %8, align 4
  %9 = load %struct.g_mouse_softc*, %struct.g_mouse_softc** %2, align 8
  %10 = getelementptr inbounds %struct.g_mouse_softc, %struct.g_mouse_softc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.g_mouse_softc*, %struct.g_mouse_softc** %2, align 8
  %15 = getelementptr inbounds %struct.g_mouse_softc, %struct.g_mouse_softc* %14, i32 0, i32 0
  store i32 0, i32* %15, align 4
  br label %25

16:                                               ; preds = %1
  %17 = load %struct.g_mouse_softc*, %struct.g_mouse_softc** %2, align 8
  %18 = getelementptr inbounds %struct.g_mouse_softc, %struct.g_mouse_softc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp sgt i32 %19, 1023
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load %struct.g_mouse_softc*, %struct.g_mouse_softc** %2, align 8
  %23 = getelementptr inbounds %struct.g_mouse_softc, %struct.g_mouse_softc* %22, i32 0, i32 0
  store i32 1023, i32* %23, align 4
  br label %24

24:                                               ; preds = %21, %16
  br label %25

25:                                               ; preds = %24, %13
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
