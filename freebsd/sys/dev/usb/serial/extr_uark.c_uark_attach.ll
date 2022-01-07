; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_uark.c_uark_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_uark.c_uark_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_attach_arg = type { i32 }
%struct.uark_softc = type { i32, i32, i32, i32*, i32 }

@.str = private unnamed_addr constant [5 x i8] c"uark\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@UARK_IFACE_INDEX = common dso_local global i32 0, align 4
@uark_xfer_config = common dso_local global i32 0, align 4
@UARK_N_TRANSFER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"allocating control USB transfers failed\0A\00", align 1
@UARK_BULK_DT_WR = common dso_local global i64 0, align 8
@UARK_BULK_DT_RD = common dso_local global i64 0, align 8
@uark_callback = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"ucom_attach failed\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @uark_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uark_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_attach_arg*, align 8
  %5 = alloca %struct.uark_softc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.usb_attach_arg* @device_get_ivars(i32 %8)
  store %struct.usb_attach_arg* %9, %struct.usb_attach_arg** %4, align 8
  %10 = load i32, i32* %3, align 4
  %11 = call %struct.uark_softc* @device_get_softc(i32 %10)
  store %struct.uark_softc* %11, %struct.uark_softc** %5, align 8
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @device_set_usb_desc(i32 %12)
  %14 = load %struct.uark_softc*, %struct.uark_softc** %5, align 8
  %15 = getelementptr inbounds %struct.uark_softc, %struct.uark_softc* %14, i32 0, i32 1
  %16 = load i32, i32* @MTX_DEF, align 4
  %17 = call i32 @mtx_init(i32* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* null, i32 %16)
  %18 = load %struct.uark_softc*, %struct.uark_softc** %5, align 8
  %19 = getelementptr inbounds %struct.uark_softc, %struct.uark_softc* %18, i32 0, i32 0
  %20 = call i32 @ucom_ref(i32* %19)
  %21 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %22 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.uark_softc*, %struct.uark_softc** %5, align 8
  %25 = getelementptr inbounds %struct.uark_softc, %struct.uark_softc* %24, i32 0, i32 4
  store i32 %23, i32* %25, align 8
  %26 = load i32, i32* @UARK_IFACE_INDEX, align 4
  store i32 %26, i32* %7, align 4
  %27 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %28 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.uark_softc*, %struct.uark_softc** %5, align 8
  %31 = getelementptr inbounds %struct.uark_softc, %struct.uark_softc* %30, i32 0, i32 3
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* @uark_xfer_config, align 4
  %34 = load i32, i32* @UARK_N_TRANSFER, align 4
  %35 = load %struct.uark_softc*, %struct.uark_softc** %5, align 8
  %36 = load %struct.uark_softc*, %struct.uark_softc** %5, align 8
  %37 = getelementptr inbounds %struct.uark_softc, %struct.uark_softc* %36, i32 0, i32 1
  %38 = call i64 @usbd_transfer_setup(i32 %29, i32* %7, i32* %32, i32 %33, i32 %34, %struct.uark_softc* %35, i32* %37)
  store i64 %38, i64* %6, align 8
  %39 = load i64, i64* %6, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %1
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @device_printf(i32 %42, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %82

44:                                               ; preds = %1
  %45 = load %struct.uark_softc*, %struct.uark_softc** %5, align 8
  %46 = getelementptr inbounds %struct.uark_softc, %struct.uark_softc* %45, i32 0, i32 1
  %47 = call i32 @mtx_lock(i32* %46)
  %48 = load %struct.uark_softc*, %struct.uark_softc** %5, align 8
  %49 = getelementptr inbounds %struct.uark_softc, %struct.uark_softc* %48, i32 0, i32 3
  %50 = load i32*, i32** %49, align 8
  %51 = load i64, i64* @UARK_BULK_DT_WR, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @usbd_xfer_set_stall(i32 %53)
  %55 = load %struct.uark_softc*, %struct.uark_softc** %5, align 8
  %56 = getelementptr inbounds %struct.uark_softc, %struct.uark_softc* %55, i32 0, i32 3
  %57 = load i32*, i32** %56, align 8
  %58 = load i64, i64* @UARK_BULK_DT_RD, align 8
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @usbd_xfer_set_stall(i32 %60)
  %62 = load %struct.uark_softc*, %struct.uark_softc** %5, align 8
  %63 = getelementptr inbounds %struct.uark_softc, %struct.uark_softc* %62, i32 0, i32 1
  %64 = call i32 @mtx_unlock(i32* %63)
  %65 = load %struct.uark_softc*, %struct.uark_softc** %5, align 8
  %66 = getelementptr inbounds %struct.uark_softc, %struct.uark_softc* %65, i32 0, i32 0
  %67 = load %struct.uark_softc*, %struct.uark_softc** %5, align 8
  %68 = getelementptr inbounds %struct.uark_softc, %struct.uark_softc* %67, i32 0, i32 2
  %69 = load %struct.uark_softc*, %struct.uark_softc** %5, align 8
  %70 = load %struct.uark_softc*, %struct.uark_softc** %5, align 8
  %71 = getelementptr inbounds %struct.uark_softc, %struct.uark_softc* %70, i32 0, i32 1
  %72 = call i64 @ucom_attach(i32* %66, i32* %68, i32 1, %struct.uark_softc* %69, i32* @uark_callback, i32* %71)
  store i64 %72, i64* %6, align 8
  %73 = load i64, i64* %6, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %44
  %76 = call i32 @DPRINTF(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %82

77:                                               ; preds = %44
  %78 = load %struct.uark_softc*, %struct.uark_softc** %5, align 8
  %79 = getelementptr inbounds %struct.uark_softc, %struct.uark_softc* %78, i32 0, i32 0
  %80 = load i32, i32* %3, align 4
  %81 = call i32 @ucom_set_pnpinfo_usb(i32* %79, i32 %80)
  store i32 0, i32* %2, align 4
  br label %86

82:                                               ; preds = %75, %41
  %83 = load i32, i32* %3, align 4
  %84 = call i32 @uark_detach(i32 %83)
  %85 = load i32, i32* @ENXIO, align 4
  store i32 %85, i32* %2, align 4
  br label %86

86:                                               ; preds = %82, %77
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local %struct.usb_attach_arg* @device_get_ivars(i32) #1

declare dso_local %struct.uark_softc* @device_get_softc(i32) #1

declare dso_local i32 @device_set_usb_desc(i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @ucom_ref(i32*) #1

declare dso_local i64 @usbd_transfer_setup(i32, i32*, i32*, i32, i32, %struct.uark_softc*, i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @usbd_xfer_set_stall(i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i64 @ucom_attach(i32*, i32*, i32, %struct.uark_softc*, i32*, i32*) #1

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i32 @ucom_set_pnpinfo_usb(i32*, i32) #1

declare dso_local i32 @uark_detach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
