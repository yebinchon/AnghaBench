; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_uipaq.c_uipaq_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_uipaq.c_uipaq_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device_request = type { i32, i32, i32, i32, i32 }
%struct.usb_attach_arg = type { i32 }
%struct.uipaq_softc = type { i32, i32, i32, i32*, i32 }

@.str = private unnamed_addr constant [6 x i8] c"uipaq\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@UT_WRITE_CLASS_INTERFACE = common dso_local global i32 0, align 4
@UCDC_SET_CONTROL_LINE_STATE = common dso_local global i32 0, align 4
@UCDC_LINE_DTR = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@UIPAQ_IFACE_INDEX = common dso_local global i32 0, align 4
@uipaq_config_data = common dso_local global i32 0, align 4
@UIPAQ_N_TRANSFER = common dso_local global i32 0, align 4
@UIPAQ_BULK_DT_WR = common dso_local global i64 0, align 8
@UIPAQ_BULK_DT_RD = common dso_local global i64 0, align 8
@uipaq_callback = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @uipaq_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uipaq_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_device_request, align 4
  %5 = alloca %struct.usb_attach_arg*, align 8
  %6 = alloca %struct.uipaq_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call %struct.usb_attach_arg* @device_get_ivars(i32 %10)
  store %struct.usb_attach_arg* %11, %struct.usb_attach_arg** %5, align 8
  %12 = load i32, i32* %3, align 4
  %13 = call %struct.uipaq_softc* @device_get_softc(i32 %12)
  store %struct.uipaq_softc* %13, %struct.uipaq_softc** %6, align 8
  %14 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %5, align 8
  %15 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.uipaq_softc*, %struct.uipaq_softc** %6, align 8
  %18 = getelementptr inbounds %struct.uipaq_softc, %struct.uipaq_softc* %17, i32 0, i32 4
  store i32 %16, i32* %18, align 8
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @device_set_usb_desc(i32 %19)
  %21 = load %struct.uipaq_softc*, %struct.uipaq_softc** %6, align 8
  %22 = getelementptr inbounds %struct.uipaq_softc, %struct.uipaq_softc* %21, i32 0, i32 1
  %23 = load i32, i32* @MTX_DEF, align 4
  %24 = call i32 @mtx_init(i32* %22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* null, i32 %23)
  %25 = load %struct.uipaq_softc*, %struct.uipaq_softc** %6, align 8
  %26 = getelementptr inbounds %struct.uipaq_softc, %struct.uipaq_softc* %25, i32 0, i32 0
  %27 = call i32 @ucom_ref(i32* %26)
  %28 = load i32, i32* @UT_WRITE_CLASS_INTERFACE, align 4
  %29 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %4, i32 0, i32 4
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* @UCDC_SET_CONTROL_LINE_STATE, align 4
  %31 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %4, i32 0, i32 3
  store i32 %30, i32* %31, align 4
  %32 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %4, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @UCDC_LINE_DTR, align 4
  %35 = call i32 @USETW(i32 %33, i32 %34)
  %36 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %4, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @USETW(i32 %37, i32 0)
  %39 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %4, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @USETW(i32 %40, i32 0)
  store i32 0, i32* %9, align 4
  br label %42

42:                                               ; preds = %57, %1
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, 64
  br i1 %44, label %45, label %60

45:                                               ; preds = %42
  %46 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %5, align 8
  %47 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @usbd_do_request_flags(i32 %48, i32* null, %struct.usb_device_request* %4, i32* null, i32 0, i32* null, i32 100)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  br label %60

53:                                               ; preds = %45
  %54 = load i32, i32* @hz, align 4
  %55 = sdiv i32 %54, 10
  %56 = call i32 @usb_pause_mtx(i32* null, i32 %55)
  br label %57

57:                                               ; preds = %53
  %58 = load i32, i32* %9, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %9, align 4
  br label %42

60:                                               ; preds = %52, %42
  %61 = load i32, i32* @UIPAQ_IFACE_INDEX, align 4
  store i32 %61, i32* %8, align 4
  %62 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %5, align 8
  %63 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.uipaq_softc*, %struct.uipaq_softc** %6, align 8
  %66 = getelementptr inbounds %struct.uipaq_softc, %struct.uipaq_softc* %65, i32 0, i32 3
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* @uipaq_config_data, align 4
  %69 = load i32, i32* @UIPAQ_N_TRANSFER, align 4
  %70 = load %struct.uipaq_softc*, %struct.uipaq_softc** %6, align 8
  %71 = load %struct.uipaq_softc*, %struct.uipaq_softc** %6, align 8
  %72 = getelementptr inbounds %struct.uipaq_softc, %struct.uipaq_softc* %71, i32 0, i32 1
  %73 = call i32 @usbd_transfer_setup(i32 %64, i32* %8, i32* %67, i32 %68, i32 %69, %struct.uipaq_softc* %70, i32* %72)
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* %7, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %60
  br label %114

77:                                               ; preds = %60
  %78 = load %struct.uipaq_softc*, %struct.uipaq_softc** %6, align 8
  %79 = getelementptr inbounds %struct.uipaq_softc, %struct.uipaq_softc* %78, i32 0, i32 1
  %80 = call i32 @mtx_lock(i32* %79)
  %81 = load %struct.uipaq_softc*, %struct.uipaq_softc** %6, align 8
  %82 = getelementptr inbounds %struct.uipaq_softc, %struct.uipaq_softc* %81, i32 0, i32 3
  %83 = load i32*, i32** %82, align 8
  %84 = load i64, i64* @UIPAQ_BULK_DT_WR, align 8
  %85 = getelementptr inbounds i32, i32* %83, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @usbd_xfer_set_stall(i32 %86)
  %88 = load %struct.uipaq_softc*, %struct.uipaq_softc** %6, align 8
  %89 = getelementptr inbounds %struct.uipaq_softc, %struct.uipaq_softc* %88, i32 0, i32 3
  %90 = load i32*, i32** %89, align 8
  %91 = load i64, i64* @UIPAQ_BULK_DT_RD, align 8
  %92 = getelementptr inbounds i32, i32* %90, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @usbd_xfer_set_stall(i32 %93)
  %95 = load %struct.uipaq_softc*, %struct.uipaq_softc** %6, align 8
  %96 = getelementptr inbounds %struct.uipaq_softc, %struct.uipaq_softc* %95, i32 0, i32 1
  %97 = call i32 @mtx_unlock(i32* %96)
  %98 = load %struct.uipaq_softc*, %struct.uipaq_softc** %6, align 8
  %99 = getelementptr inbounds %struct.uipaq_softc, %struct.uipaq_softc* %98, i32 0, i32 0
  %100 = load %struct.uipaq_softc*, %struct.uipaq_softc** %6, align 8
  %101 = getelementptr inbounds %struct.uipaq_softc, %struct.uipaq_softc* %100, i32 0, i32 2
  %102 = load %struct.uipaq_softc*, %struct.uipaq_softc** %6, align 8
  %103 = load %struct.uipaq_softc*, %struct.uipaq_softc** %6, align 8
  %104 = getelementptr inbounds %struct.uipaq_softc, %struct.uipaq_softc* %103, i32 0, i32 1
  %105 = call i32 @ucom_attach(i32* %99, i32* %101, i32 1, %struct.uipaq_softc* %102, i32* @uipaq_callback, i32* %104)
  store i32 %105, i32* %7, align 4
  %106 = load i32, i32* %7, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %77
  br label %114

109:                                              ; preds = %77
  %110 = load %struct.uipaq_softc*, %struct.uipaq_softc** %6, align 8
  %111 = getelementptr inbounds %struct.uipaq_softc, %struct.uipaq_softc* %110, i32 0, i32 0
  %112 = load i32, i32* %3, align 4
  %113 = call i32 @ucom_set_pnpinfo_usb(i32* %111, i32 %112)
  store i32 0, i32* %2, align 4
  br label %118

114:                                              ; preds = %108, %76
  %115 = load i32, i32* %3, align 4
  %116 = call i32 @uipaq_detach(i32 %115)
  %117 = load i32, i32* @ENXIO, align 4
  store i32 %117, i32* %2, align 4
  br label %118

118:                                              ; preds = %114, %109
  %119 = load i32, i32* %2, align 4
  ret i32 %119
}

declare dso_local %struct.usb_attach_arg* @device_get_ivars(i32) #1

declare dso_local %struct.uipaq_softc* @device_get_softc(i32) #1

declare dso_local i32 @device_set_usb_desc(i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @ucom_ref(i32*) #1

declare dso_local i32 @USETW(i32, i32) #1

declare dso_local i32 @usbd_do_request_flags(i32, i32*, %struct.usb_device_request*, i32*, i32, i32*, i32) #1

declare dso_local i32 @usb_pause_mtx(i32*, i32) #1

declare dso_local i32 @usbd_transfer_setup(i32, i32*, i32*, i32, i32, %struct.uipaq_softc*, i32*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @usbd_xfer_set_stall(i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @ucom_attach(i32*, i32*, i32, %struct.uipaq_softc*, i32*, i32*) #1

declare dso_local i32 @ucom_set_pnpinfo_usb(i32*, i32) #1

declare dso_local i32 @uipaq_detach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
