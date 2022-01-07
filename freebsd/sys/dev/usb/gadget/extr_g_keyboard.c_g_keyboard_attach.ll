; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/gadget/extr_g_keyboard.c_g_keyboard_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/gadget/extr_g_keyboard.c_g_keyboard_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_keyboard_softc = type { i32, i32, i32, i32 }
%struct.usb_attach_arg = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"g_keyboard\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@G_KEYBOARD_MODE_SILENT = common dso_local global i32 0, align 4
@g_keyboard_config = common dso_local global i32 0, align 4
@G_KEYBOARD_N_TRANSFER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"error=%s\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @g_keyboard_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_keyboard_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.g_keyboard_softc*, align 8
  %5 = alloca %struct.usb_attach_arg*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.g_keyboard_softc* @device_get_softc(i32 %7)
  store %struct.g_keyboard_softc* %8, %struct.g_keyboard_softc** %4, align 8
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.usb_attach_arg* @device_get_ivars(i32 %9)
  store %struct.usb_attach_arg* %10, %struct.usb_attach_arg** %5, align 8
  %11 = call i32 @DPRINTFN(i32 11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @device_set_usb_desc(i32 %12)
  %14 = load %struct.g_keyboard_softc*, %struct.g_keyboard_softc** %4, align 8
  %15 = getelementptr inbounds %struct.g_keyboard_softc, %struct.g_keyboard_softc* %14, i32 0, i32 0
  %16 = load i32, i32* @MTX_DEF, align 4
  %17 = call i32 @mtx_init(i32* %15, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 %16)
  %18 = load %struct.g_keyboard_softc*, %struct.g_keyboard_softc** %4, align 8
  %19 = getelementptr inbounds %struct.g_keyboard_softc, %struct.g_keyboard_softc* %18, i32 0, i32 3
  %20 = load %struct.g_keyboard_softc*, %struct.g_keyboard_softc** %4, align 8
  %21 = getelementptr inbounds %struct.g_keyboard_softc, %struct.g_keyboard_softc* %20, i32 0, i32 0
  %22 = call i32 @usb_callout_init_mtx(i32* %19, i32* %21, i32 0)
  %23 = load i32, i32* @G_KEYBOARD_MODE_SILENT, align 4
  %24 = load %struct.g_keyboard_softc*, %struct.g_keyboard_softc** %4, align 8
  %25 = getelementptr inbounds %struct.g_keyboard_softc, %struct.g_keyboard_softc* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 4
  %26 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %5, align 8
  %27 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %5, align 8
  %30 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load %struct.g_keyboard_softc*, %struct.g_keyboard_softc** %4, align 8
  %33 = getelementptr inbounds %struct.g_keyboard_softc, %struct.g_keyboard_softc* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @g_keyboard_config, align 4
  %36 = load i32, i32* @G_KEYBOARD_N_TRANSFER, align 4
  %37 = load %struct.g_keyboard_softc*, %struct.g_keyboard_softc** %4, align 8
  %38 = load %struct.g_keyboard_softc*, %struct.g_keyboard_softc** %4, align 8
  %39 = getelementptr inbounds %struct.g_keyboard_softc, %struct.g_keyboard_softc* %38, i32 0, i32 0
  %40 = call i32 @usbd_transfer_setup(i32 %28, i32* %31, i32 %34, i32 %35, i32 %36, %struct.g_keyboard_softc* %37, i32* %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %1
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @usbd_errstr(i32 %44)
  %46 = call i32 @DPRINTF(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %45)
  br label %56

47:                                               ; preds = %1
  %48 = load %struct.g_keyboard_softc*, %struct.g_keyboard_softc** %4, align 8
  %49 = getelementptr inbounds %struct.g_keyboard_softc, %struct.g_keyboard_softc* %48, i32 0, i32 0
  %50 = call i32 @mtx_lock(i32* %49)
  %51 = load %struct.g_keyboard_softc*, %struct.g_keyboard_softc** %4, align 8
  %52 = call i32 @g_keyboard_timeout_reset(%struct.g_keyboard_softc* %51)
  %53 = load %struct.g_keyboard_softc*, %struct.g_keyboard_softc** %4, align 8
  %54 = getelementptr inbounds %struct.g_keyboard_softc, %struct.g_keyboard_softc* %53, i32 0, i32 0
  %55 = call i32 @mtx_unlock(i32* %54)
  store i32 0, i32* %2, align 4
  br label %60

56:                                               ; preds = %43
  %57 = load i32, i32* %3, align 4
  %58 = call i32 @g_keyboard_detach(i32 %57)
  %59 = load i32, i32* @ENXIO, align 4
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %56, %47
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local %struct.g_keyboard_softc* @device_get_softc(i32) #1

declare dso_local %struct.usb_attach_arg* @device_get_ivars(i32) #1

declare dso_local i32 @DPRINTFN(i32, i8*) #1

declare dso_local i32 @device_set_usb_desc(i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @usb_callout_init_mtx(i32*, i32*, i32) #1

declare dso_local i32 @usbd_transfer_setup(i32, i32*, i32, i32, i32, %struct.g_keyboard_softc*, i32*) #1

declare dso_local i32 @DPRINTF(i8*, i32) #1

declare dso_local i32 @usbd_errstr(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @g_keyboard_timeout_reset(%struct.g_keyboard_softc*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @g_keyboard_detach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
