; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/storage/extr_cfumass.c_cfumass_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/storage/extr_cfumass.c_cfumass_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfumass_softc = type { i64, i32, i32*, i8*, i8*, i32, i32, i32 }
%struct.usb_attach_arg = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"go\00", align 1
@USB_POWER_MODE_SAVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"cfumass\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@cfumass_refcount = common dso_local global i32 0, align 4
@cfumass_config = common dso_local global i32 0, align 4
@CFUMASS_T_MAX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"usbd_transfer_setup() failed: %s\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@CFUMASS_T_COMMAND = common dso_local global i64 0, align 8
@CFUMASS_T_STATUS = common dso_local global i64 0, align 8
@cfumass_port = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"ctl_add_initiator() failed with error %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @cfumass_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfumass_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.cfumass_softc*, align 8
  %5 = alloca %struct.usb_attach_arg*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.cfumass_softc* @device_get_softc(i32 %7)
  store %struct.cfumass_softc* %8, %struct.cfumass_softc** %4, align 8
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.usb_attach_arg* @device_get_ivars(i32 %9)
  store %struct.usb_attach_arg* %10, %struct.usb_attach_arg** %5, align 8
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.cfumass_softc*, %struct.cfumass_softc** %4, align 8
  %13 = getelementptr inbounds %struct.cfumass_softc, %struct.cfumass_softc* %12, i32 0, i32 7
  store i32 %11, i32* %13, align 8
  %14 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %5, align 8
  %15 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.cfumass_softc*, %struct.cfumass_softc** %4, align 8
  %18 = getelementptr inbounds %struct.cfumass_softc, %struct.cfumass_softc* %17, i32 0, i32 6
  store i32 %16, i32* %18, align 4
  %19 = load %struct.cfumass_softc*, %struct.cfumass_softc** %4, align 8
  %20 = call i32 @CFUMASS_DEBUG(%struct.cfumass_softc* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %5, align 8
  %22 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @USB_POWER_MODE_SAVE, align 4
  %25 = call i32 @usbd_set_power_mode(i32 %23, i32 %24)
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @device_set_usb_desc(i32 %26)
  %28 = load %struct.cfumass_softc*, %struct.cfumass_softc** %4, align 8
  %29 = getelementptr inbounds %struct.cfumass_softc, %struct.cfumass_softc* %28, i32 0, i32 5
  %30 = load i32, i32* @MTX_DEF, align 4
  %31 = call i32 @mtx_init(i32* %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 %30)
  %32 = call i32 @refcount_acquire(i32* @cfumass_refcount)
  %33 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %5, align 8
  %34 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %5, align 8
  %37 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load %struct.cfumass_softc*, %struct.cfumass_softc** %4, align 8
  %40 = getelementptr inbounds %struct.cfumass_softc, %struct.cfumass_softc* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* @cfumass_config, align 4
  %43 = load i32, i32* @CFUMASS_T_MAX, align 4
  %44 = load %struct.cfumass_softc*, %struct.cfumass_softc** %4, align 8
  %45 = load %struct.cfumass_softc*, %struct.cfumass_softc** %4, align 8
  %46 = getelementptr inbounds %struct.cfumass_softc, %struct.cfumass_softc* %45, i32 0, i32 5
  %47 = call i32 @usbd_transfer_setup(i32 %35, i32* %38, i32* %41, i32 %42, i32 %43, %struct.cfumass_softc* %44, i32* %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %1
  %51 = load %struct.cfumass_softc*, %struct.cfumass_softc** %4, align 8
  %52 = load i32, i32* %6, align 4
  %53 = call i64 @usbd_errstr(i32 %52)
  %54 = call i32 @CFUMASS_WARN(%struct.cfumass_softc* %51, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i64 %53)
  %55 = call i32 @refcount_release(i32* @cfumass_refcount)
  %56 = load i32, i32* @ENXIO, align 4
  store i32 %56, i32* %2, align 4
  br label %107

57:                                               ; preds = %1
  %58 = load %struct.cfumass_softc*, %struct.cfumass_softc** %4, align 8
  %59 = getelementptr inbounds %struct.cfumass_softc, %struct.cfumass_softc* %58, i32 0, i32 2
  %60 = load i32*, i32** %59, align 8
  %61 = load i64, i64* @CFUMASS_T_COMMAND, align 8
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = call i8* @usbd_xfer_get_frame_buffer(i32 %63, i32 0)
  %65 = load %struct.cfumass_softc*, %struct.cfumass_softc** %4, align 8
  %66 = getelementptr inbounds %struct.cfumass_softc, %struct.cfumass_softc* %65, i32 0, i32 4
  store i8* %64, i8** %66, align 8
  %67 = load %struct.cfumass_softc*, %struct.cfumass_softc** %4, align 8
  %68 = getelementptr inbounds %struct.cfumass_softc, %struct.cfumass_softc* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = load i64, i64* @CFUMASS_T_STATUS, align 8
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = call i8* @usbd_xfer_get_frame_buffer(i32 %72, i32 0)
  %74 = load %struct.cfumass_softc*, %struct.cfumass_softc** %4, align 8
  %75 = getelementptr inbounds %struct.cfumass_softc, %struct.cfumass_softc* %74, i32 0, i32 3
  store i8* %73, i8** %75, align 8
  %76 = call i64 @ctl_add_initiator(i32* @cfumass_port, i32 -1, i32 0, i32* null)
  %77 = load %struct.cfumass_softc*, %struct.cfumass_softc** %4, align 8
  %78 = getelementptr inbounds %struct.cfumass_softc, %struct.cfumass_softc* %77, i32 0, i32 0
  store i64 %76, i64* %78, align 8
  %79 = load %struct.cfumass_softc*, %struct.cfumass_softc** %4, align 8
  %80 = getelementptr inbounds %struct.cfumass_softc, %struct.cfumass_softc* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp slt i64 %81, 0
  br i1 %82, label %83, label %96

83:                                               ; preds = %57
  %84 = load %struct.cfumass_softc*, %struct.cfumass_softc** %4, align 8
  %85 = load %struct.cfumass_softc*, %struct.cfumass_softc** %4, align 8
  %86 = getelementptr inbounds %struct.cfumass_softc, %struct.cfumass_softc* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = call i32 @CFUMASS_WARN(%struct.cfumass_softc* %84, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i64 %87)
  %89 = load %struct.cfumass_softc*, %struct.cfumass_softc** %4, align 8
  %90 = getelementptr inbounds %struct.cfumass_softc, %struct.cfumass_softc* %89, i32 0, i32 2
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* @CFUMASS_T_MAX, align 4
  %93 = call i32 @usbd_transfer_unsetup(i32* %91, i32 %92)
  %94 = call i32 @refcount_release(i32* @cfumass_refcount)
  %95 = load i32, i32* @ENXIO, align 4
  store i32 %95, i32* %2, align 4
  br label %107

96:                                               ; preds = %57
  %97 = load %struct.cfumass_softc*, %struct.cfumass_softc** %4, align 8
  %98 = getelementptr inbounds %struct.cfumass_softc, %struct.cfumass_softc* %97, i32 0, i32 1
  %99 = call i32 @refcount_init(i32* %98, i32 0)
  %100 = load %struct.cfumass_softc*, %struct.cfumass_softc** %4, align 8
  %101 = call i32 @CFUMASS_LOCK(%struct.cfumass_softc* %100)
  %102 = load %struct.cfumass_softc*, %struct.cfumass_softc** %4, align 8
  %103 = load i64, i64* @CFUMASS_T_COMMAND, align 8
  %104 = call i32 @cfumass_transfer_start(%struct.cfumass_softc* %102, i64 %103)
  %105 = load %struct.cfumass_softc*, %struct.cfumass_softc** %4, align 8
  %106 = call i32 @CFUMASS_UNLOCK(%struct.cfumass_softc* %105)
  store i32 0, i32* %2, align 4
  br label %107

107:                                              ; preds = %96, %83, %50
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local %struct.cfumass_softc* @device_get_softc(i32) #1

declare dso_local %struct.usb_attach_arg* @device_get_ivars(i32) #1

declare dso_local i32 @CFUMASS_DEBUG(%struct.cfumass_softc*, i8*) #1

declare dso_local i32 @usbd_set_power_mode(i32, i32) #1

declare dso_local i32 @device_set_usb_desc(i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @refcount_acquire(i32*) #1

declare dso_local i32 @usbd_transfer_setup(i32, i32*, i32*, i32, i32, %struct.cfumass_softc*, i32*) #1

declare dso_local i32 @CFUMASS_WARN(%struct.cfumass_softc*, i8*, i64) #1

declare dso_local i64 @usbd_errstr(i32) #1

declare dso_local i32 @refcount_release(i32*) #1

declare dso_local i8* @usbd_xfer_get_frame_buffer(i32, i32) #1

declare dso_local i64 @ctl_add_initiator(i32*, i32, i32, i32*) #1

declare dso_local i32 @usbd_transfer_unsetup(i32*, i32) #1

declare dso_local i32 @refcount_init(i32*, i32) #1

declare dso_local i32 @CFUMASS_LOCK(%struct.cfumass_softc*) #1

declare dso_local i32 @cfumass_transfer_start(%struct.cfumass_softc*, i64) #1

declare dso_local i32 @CFUMASS_UNLOCK(%struct.cfumass_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
