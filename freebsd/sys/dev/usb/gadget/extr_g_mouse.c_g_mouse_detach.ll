; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/gadget/extr_g_mouse.c_g_mouse_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/gadget/extr_g_mouse.c_g_mouse_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_mouse_softc = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@G_MOUSE_N_TRANSFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @g_mouse_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_mouse_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.g_mouse_softc*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.g_mouse_softc* @device_get_softc(i32 %4)
  store %struct.g_mouse_softc* %5, %struct.g_mouse_softc** %3, align 8
  %6 = call i32 @DPRINTF(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.g_mouse_softc*, %struct.g_mouse_softc** %3, align 8
  %8 = getelementptr inbounds %struct.g_mouse_softc, %struct.g_mouse_softc* %7, i32 0, i32 0
  %9 = call i32 @mtx_lock(i32* %8)
  %10 = load %struct.g_mouse_softc*, %struct.g_mouse_softc** %3, align 8
  %11 = getelementptr inbounds %struct.g_mouse_softc, %struct.g_mouse_softc* %10, i32 0, i32 2
  %12 = call i32 @usb_callout_stop(i32* %11)
  %13 = load %struct.g_mouse_softc*, %struct.g_mouse_softc** %3, align 8
  %14 = getelementptr inbounds %struct.g_mouse_softc, %struct.g_mouse_softc* %13, i32 0, i32 1
  %15 = call i32 @usb_callout_stop(i32* %14)
  %16 = load %struct.g_mouse_softc*, %struct.g_mouse_softc** %3, align 8
  %17 = getelementptr inbounds %struct.g_mouse_softc, %struct.g_mouse_softc* %16, i32 0, i32 0
  %18 = call i32 @mtx_unlock(i32* %17)
  %19 = load %struct.g_mouse_softc*, %struct.g_mouse_softc** %3, align 8
  %20 = getelementptr inbounds %struct.g_mouse_softc, %struct.g_mouse_softc* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @G_MOUSE_N_TRANSFER, align 4
  %23 = call i32 @usbd_transfer_unsetup(i32 %21, i32 %22)
  %24 = load %struct.g_mouse_softc*, %struct.g_mouse_softc** %3, align 8
  %25 = getelementptr inbounds %struct.g_mouse_softc, %struct.g_mouse_softc* %24, i32 0, i32 2
  %26 = call i32 @usb_callout_drain(i32* %25)
  %27 = load %struct.g_mouse_softc*, %struct.g_mouse_softc** %3, align 8
  %28 = getelementptr inbounds %struct.g_mouse_softc, %struct.g_mouse_softc* %27, i32 0, i32 1
  %29 = call i32 @usb_callout_drain(i32* %28)
  %30 = load %struct.g_mouse_softc*, %struct.g_mouse_softc** %3, align 8
  %31 = getelementptr inbounds %struct.g_mouse_softc, %struct.g_mouse_softc* %30, i32 0, i32 0
  %32 = call i32 @mtx_destroy(i32* %31)
  ret i32 0
}

declare dso_local %struct.g_mouse_softc* @device_get_softc(i32) #1

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @usb_callout_stop(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @usbd_transfer_unsetup(i32, i32) #1

declare dso_local i32 @usb_callout_drain(i32*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
