; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/gadget/extr_g_mouse.c_g_mouse_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/gadget/extr_g_mouse.c_g_mouse_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_mouse_softc = type { i32, i32, i32, i32, i32 }
%struct.usb_attach_arg = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"g_mouse\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@G_MOUSE_MODE_SILENT = common dso_local global i32 0, align 4
@g_mouse_config = common dso_local global i32 0, align 4
@G_MOUSE_N_TRANSFER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"error=%s\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @g_mouse_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_mouse_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.g_mouse_softc*, align 8
  %5 = alloca %struct.usb_attach_arg*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.g_mouse_softc* @device_get_softc(i32 %7)
  store %struct.g_mouse_softc* %8, %struct.g_mouse_softc** %4, align 8
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.usb_attach_arg* @device_get_ivars(i32 %9)
  store %struct.usb_attach_arg* %10, %struct.usb_attach_arg** %5, align 8
  %11 = call i32 @DPRINTFN(i32 11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @device_set_usb_desc(i32 %12)
  %14 = load %struct.g_mouse_softc*, %struct.g_mouse_softc** %4, align 8
  %15 = getelementptr inbounds %struct.g_mouse_softc, %struct.g_mouse_softc* %14, i32 0, i32 0
  %16 = load i32, i32* @MTX_DEF, align 4
  %17 = call i32 @mtx_init(i32* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 %16)
  %18 = load %struct.g_mouse_softc*, %struct.g_mouse_softc** %4, align 8
  %19 = getelementptr inbounds %struct.g_mouse_softc, %struct.g_mouse_softc* %18, i32 0, i32 4
  %20 = load %struct.g_mouse_softc*, %struct.g_mouse_softc** %4, align 8
  %21 = getelementptr inbounds %struct.g_mouse_softc, %struct.g_mouse_softc* %20, i32 0, i32 0
  %22 = call i32 @usb_callout_init_mtx(i32* %19, i32* %21, i32 0)
  %23 = load %struct.g_mouse_softc*, %struct.g_mouse_softc** %4, align 8
  %24 = getelementptr inbounds %struct.g_mouse_softc, %struct.g_mouse_softc* %23, i32 0, i32 3
  %25 = load %struct.g_mouse_softc*, %struct.g_mouse_softc** %4, align 8
  %26 = getelementptr inbounds %struct.g_mouse_softc, %struct.g_mouse_softc* %25, i32 0, i32 0
  %27 = call i32 @usb_callout_init_mtx(i32* %24, i32* %26, i32 0)
  %28 = load i32, i32* @G_MOUSE_MODE_SILENT, align 4
  %29 = load %struct.g_mouse_softc*, %struct.g_mouse_softc** %4, align 8
  %30 = getelementptr inbounds %struct.g_mouse_softc, %struct.g_mouse_softc* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 4
  %31 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %5, align 8
  %32 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %5, align 8
  %35 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load %struct.g_mouse_softc*, %struct.g_mouse_softc** %4, align 8
  %38 = getelementptr inbounds %struct.g_mouse_softc, %struct.g_mouse_softc* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @g_mouse_config, align 4
  %41 = load i32, i32* @G_MOUSE_N_TRANSFER, align 4
  %42 = load %struct.g_mouse_softc*, %struct.g_mouse_softc** %4, align 8
  %43 = load %struct.g_mouse_softc*, %struct.g_mouse_softc** %4, align 8
  %44 = getelementptr inbounds %struct.g_mouse_softc, %struct.g_mouse_softc* %43, i32 0, i32 0
  %45 = call i32 @usbd_transfer_setup(i32 %33, i32* %36, i32 %39, i32 %40, i32 %41, %struct.g_mouse_softc* %42, i32* %44)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %1
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @usbd_errstr(i32 %49)
  %51 = call i32 @DPRINTF(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %50)
  br label %63

52:                                               ; preds = %1
  %53 = load %struct.g_mouse_softc*, %struct.g_mouse_softc** %4, align 8
  %54 = getelementptr inbounds %struct.g_mouse_softc, %struct.g_mouse_softc* %53, i32 0, i32 0
  %55 = call i32 @mtx_lock(i32* %54)
  %56 = load %struct.g_mouse_softc*, %struct.g_mouse_softc** %4, align 8
  %57 = call i32 @g_mouse_button_press_timeout_reset(%struct.g_mouse_softc* %56)
  %58 = load %struct.g_mouse_softc*, %struct.g_mouse_softc** %4, align 8
  %59 = call i32 @g_mouse_cursor_update_timeout_reset(%struct.g_mouse_softc* %58)
  %60 = load %struct.g_mouse_softc*, %struct.g_mouse_softc** %4, align 8
  %61 = getelementptr inbounds %struct.g_mouse_softc, %struct.g_mouse_softc* %60, i32 0, i32 0
  %62 = call i32 @mtx_unlock(i32* %61)
  store i32 0, i32* %2, align 4
  br label %67

63:                                               ; preds = %48
  %64 = load i32, i32* %3, align 4
  %65 = call i32 @g_mouse_detach(i32 %64)
  %66 = load i32, i32* @ENXIO, align 4
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %63, %52
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local %struct.g_mouse_softc* @device_get_softc(i32) #1

declare dso_local %struct.usb_attach_arg* @device_get_ivars(i32) #1

declare dso_local i32 @DPRINTFN(i32, i8*) #1

declare dso_local i32 @device_set_usb_desc(i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @usb_callout_init_mtx(i32*, i32*, i32) #1

declare dso_local i32 @usbd_transfer_setup(i32, i32*, i32, i32, i32, %struct.g_mouse_softc*, i32*) #1

declare dso_local i32 @DPRINTF(i8*, i32) #1

declare dso_local i32 @usbd_errstr(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @g_mouse_button_press_timeout_reset(%struct.g_mouse_softc*) #1

declare dso_local i32 @g_mouse_cursor_update_timeout_reset(%struct.g_mouse_softc*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @g_mouse_detach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
