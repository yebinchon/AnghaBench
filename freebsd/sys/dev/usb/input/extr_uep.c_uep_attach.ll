; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/input/extr_uep.c_uep_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/input/extr_uep.c_uep_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_attach_arg = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.uep_softc = type { i64, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"uep lock\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@uep_config = common dso_local global i32 0, align 4
@UEP_N_TRANSFER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"usbd_transfer_setup error=%s\0A\00", align 1
@uep_fifo_methods = common dso_local global i32 0, align 4
@UID_ROOT = common dso_local global i32 0, align 4
@GID_OPERATOR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"usb_fifo_attach error=%s\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@BUS_USB = common dso_local global i32 0, align 4
@EV_ABS = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@EV_SYN = common dso_local global i32 0, align 4
@INPUT_PROP_DIRECT = common dso_local global i32 0, align 4
@UEP_MAX_X = common dso_local global i32 0, align 4
@UEP_MAX_Y = common dso_local global i32 0, align 4
@uep_evdev_methods = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @uep_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uep_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_attach_arg*, align 8
  %5 = alloca %struct.uep_softc*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.usb_attach_arg* @device_get_ivars(i32 %7)
  store %struct.usb_attach_arg* %8, %struct.usb_attach_arg** %4, align 8
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.uep_softc* @device_get_softc(i32 %9)
  store %struct.uep_softc* %10, %struct.uep_softc** %5, align 8
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @device_set_usb_desc(i32 %11)
  %13 = load %struct.uep_softc*, %struct.uep_softc** %5, align 8
  %14 = getelementptr inbounds %struct.uep_softc, %struct.uep_softc* %13, i32 0, i32 2
  %15 = load i32, i32* @MTX_DEF, align 4
  %16 = call i32 @mtx_init(i32* %14, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* null, i32 %15)
  %17 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %18 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %21 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load %struct.uep_softc*, %struct.uep_softc** %5, align 8
  %24 = getelementptr inbounds %struct.uep_softc, %struct.uep_softc* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @uep_config, align 4
  %27 = load i32, i32* @UEP_N_TRANSFER, align 4
  %28 = load %struct.uep_softc*, %struct.uep_softc** %5, align 8
  %29 = load %struct.uep_softc*, %struct.uep_softc** %5, align 8
  %30 = getelementptr inbounds %struct.uep_softc, %struct.uep_softc* %29, i32 0, i32 2
  %31 = call i32 @usbd_transfer_setup(i32 %19, i32* %22, i32 %25, i32 %26, i32 %27, %struct.uep_softc* %28, i32* %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %1
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @usbd_errstr(i32 %35)
  %37 = call i32 @DPRINTF(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  br label %65

38:                                               ; preds = %1
  %39 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %40 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.uep_softc*, %struct.uep_softc** %5, align 8
  %43 = load %struct.uep_softc*, %struct.uep_softc** %5, align 8
  %44 = getelementptr inbounds %struct.uep_softc, %struct.uep_softc* %43, i32 0, i32 2
  %45 = load %struct.uep_softc*, %struct.uep_softc** %5, align 8
  %46 = getelementptr inbounds %struct.uep_softc, %struct.uep_softc* %45, i32 0, i32 1
  %47 = load i32, i32* %3, align 4
  %48 = call i32 @device_get_unit(i32 %47)
  %49 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %50 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @UID_ROOT, align 4
  %54 = load i32, i32* @GID_OPERATOR, align 4
  %55 = call i32 @usb_fifo_attach(i32 %41, %struct.uep_softc* %42, i32* %44, i32* @uep_fifo_methods, i32* %46, i32 %48, i32 -1, i32 %52, i32 %53, i32 %54, i32 420)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %38
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @usbd_errstr(i32 %59)
  %61 = call i32 @DPRINTF(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  br label %65

62:                                               ; preds = %38
  %63 = load %struct.uep_softc*, %struct.uep_softc** %5, align 8
  %64 = getelementptr inbounds %struct.uep_softc, %struct.uep_softc* %63, i32 0, i32 0
  store i64 0, i64* %64, align 8
  store i32 0, i32* %2, align 4
  br label %69

65:                                               ; preds = %58, %34
  %66 = load i32, i32* %3, align 4
  %67 = call i32 @uep_detach(i32 %66)
  %68 = load i32, i32* @ENOMEM, align 4
  store i32 %68, i32* %2, align 4
  br label %69

69:                                               ; preds = %65, %62
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local %struct.usb_attach_arg* @device_get_ivars(i32) #1

declare dso_local %struct.uep_softc* @device_get_softc(i32) #1

declare dso_local i32 @device_set_usb_desc(i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @usbd_transfer_setup(i32, i32*, i32, i32, i32, %struct.uep_softc*, i32*) #1

declare dso_local i32 @DPRINTF(i8*, i32) #1

declare dso_local i32 @usbd_errstr(i32) #1

declare dso_local i32 @usb_fifo_attach(i32, %struct.uep_softc*, i32*, i32*, i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @uep_detach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
