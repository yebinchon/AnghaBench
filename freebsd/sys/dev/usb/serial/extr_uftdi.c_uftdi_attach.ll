; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_uftdi.c_uftdi_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_uftdi.c_uftdi_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_attach_arg = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.uftdi_softc = type { i32, i32, i32, i32, i32*, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@UFTDI_BITMODE_NONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"uftdi\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@uftdi_config = common dso_local global i32 0, align 4
@UFTDI_N_TRANSFER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"allocating USB transfers failed\0A\00", align 1
@UFTDI_BULK_DT_WR = common dso_local global i64 0, align 8
@UFTDI_BULK_DT_RD = common dso_local global i64 0, align 8
@FTDI_SIO_SET_DATA_STOP_BITS_2 = common dso_local global i32 0, align 4
@FTDI_SIO_SET_DATA_PARITY_NONE = common dso_local global i32 0, align 4
@uftdi_callback = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @uftdi_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uftdi_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_attach_arg*, align 8
  %5 = alloca %struct.uftdi_softc*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.usb_attach_arg* @device_get_ivars(i32 %7)
  store %struct.usb_attach_arg* %8, %struct.usb_attach_arg** %4, align 8
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.uftdi_softc* @device_get_softc(i32 %9)
  store %struct.uftdi_softc* %10, %struct.uftdi_softc** %5, align 8
  %11 = call i32 @DPRINTF(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %13 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.uftdi_softc*, %struct.uftdi_softc** %5, align 8
  %16 = getelementptr inbounds %struct.uftdi_softc, %struct.uftdi_softc* %15, i32 0, i32 8
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* %3, align 4
  %18 = load %struct.uftdi_softc*, %struct.uftdi_softc** %5, align 8
  %19 = getelementptr inbounds %struct.uftdi_softc, %struct.uftdi_softc* %18, i32 0, i32 7
  store i32 %17, i32* %19, align 8
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @device_get_unit(i32 %20)
  %22 = load %struct.uftdi_softc*, %struct.uftdi_softc** %5, align 8
  %23 = getelementptr inbounds %struct.uftdi_softc, %struct.uftdi_softc* %22, i32 0, i32 6
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @UFTDI_BITMODE_NONE, align 4
  %25 = load %struct.uftdi_softc*, %struct.uftdi_softc** %5, align 8
  %26 = getelementptr inbounds %struct.uftdi_softc, %struct.uftdi_softc* %25, i32 0, i32 5
  store i32 %24, i32* %26, align 8
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @device_set_usb_desc(i32 %27)
  %29 = load %struct.uftdi_softc*, %struct.uftdi_softc** %5, align 8
  %30 = getelementptr inbounds %struct.uftdi_softc, %struct.uftdi_softc* %29, i32 0, i32 2
  %31 = load i32, i32* @MTX_DEF, align 4
  %32 = call i32 @mtx_init(i32* %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 %31)
  %33 = load %struct.uftdi_softc*, %struct.uftdi_softc** %5, align 8
  %34 = getelementptr inbounds %struct.uftdi_softc, %struct.uftdi_softc* %33, i32 0, i32 1
  %35 = call i32 @ucom_ref(i32* %34)
  %36 = load %struct.uftdi_softc*, %struct.uftdi_softc** %5, align 8
  %37 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %38 = call i32 @uftdi_devtype_setup(%struct.uftdi_softc* %36, %struct.usb_attach_arg* %37)
  %39 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %40 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %43 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load %struct.uftdi_softc*, %struct.uftdi_softc** %5, align 8
  %46 = getelementptr inbounds %struct.uftdi_softc, %struct.uftdi_softc* %45, i32 0, i32 4
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* @uftdi_config, align 4
  %49 = load i32, i32* @UFTDI_N_TRANSFER, align 4
  %50 = load %struct.uftdi_softc*, %struct.uftdi_softc** %5, align 8
  %51 = load %struct.uftdi_softc*, %struct.uftdi_softc** %5, align 8
  %52 = getelementptr inbounds %struct.uftdi_softc, %struct.uftdi_softc* %51, i32 0, i32 2
  %53 = call i32 @usbd_transfer_setup(i32 %41, i32* %44, i32* %47, i32 %48, i32 %49, %struct.uftdi_softc* %50, i32* %52)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %1
  %57 = load i32, i32* %3, align 4
  %58 = call i32 @device_printf(i32 %57, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %106

59:                                               ; preds = %1
  %60 = load %struct.uftdi_softc*, %struct.uftdi_softc** %5, align 8
  %61 = getelementptr inbounds %struct.uftdi_softc, %struct.uftdi_softc* %60, i32 0, i32 2
  %62 = call i32 @mtx_lock(i32* %61)
  %63 = load %struct.uftdi_softc*, %struct.uftdi_softc** %5, align 8
  %64 = getelementptr inbounds %struct.uftdi_softc, %struct.uftdi_softc* %63, i32 0, i32 4
  %65 = load i32*, i32** %64, align 8
  %66 = load i64, i64* @UFTDI_BULK_DT_WR, align 8
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @usbd_xfer_set_stall(i32 %68)
  %70 = load %struct.uftdi_softc*, %struct.uftdi_softc** %5, align 8
  %71 = getelementptr inbounds %struct.uftdi_softc, %struct.uftdi_softc* %70, i32 0, i32 4
  %72 = load i32*, i32** %71, align 8
  %73 = load i64, i64* @UFTDI_BULK_DT_RD, align 8
  %74 = getelementptr inbounds i32, i32* %72, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @usbd_xfer_set_stall(i32 %75)
  %77 = load %struct.uftdi_softc*, %struct.uftdi_softc** %5, align 8
  %78 = getelementptr inbounds %struct.uftdi_softc, %struct.uftdi_softc* %77, i32 0, i32 2
  %79 = call i32 @mtx_unlock(i32* %78)
  %80 = load i32, i32* @FTDI_SIO_SET_DATA_STOP_BITS_2, align 4
  %81 = load i32, i32* @FTDI_SIO_SET_DATA_PARITY_NONE, align 4
  %82 = or i32 %80, %81
  %83 = call i32 @FTDI_SIO_SET_DATA_BITS(i32 8)
  %84 = or i32 %82, %83
  %85 = load %struct.uftdi_softc*, %struct.uftdi_softc** %5, align 8
  %86 = getelementptr inbounds %struct.uftdi_softc, %struct.uftdi_softc* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 8
  %87 = load %struct.uftdi_softc*, %struct.uftdi_softc** %5, align 8
  %88 = getelementptr inbounds %struct.uftdi_softc, %struct.uftdi_softc* %87, i32 0, i32 3
  %89 = call i32 @ucom_use_lsr_txbits(i32* %88)
  %90 = load %struct.uftdi_softc*, %struct.uftdi_softc** %5, align 8
  %91 = getelementptr inbounds %struct.uftdi_softc, %struct.uftdi_softc* %90, i32 0, i32 1
  %92 = load %struct.uftdi_softc*, %struct.uftdi_softc** %5, align 8
  %93 = getelementptr inbounds %struct.uftdi_softc, %struct.uftdi_softc* %92, i32 0, i32 3
  %94 = load %struct.uftdi_softc*, %struct.uftdi_softc** %5, align 8
  %95 = load %struct.uftdi_softc*, %struct.uftdi_softc** %5, align 8
  %96 = getelementptr inbounds %struct.uftdi_softc, %struct.uftdi_softc* %95, i32 0, i32 2
  %97 = call i32 @ucom_attach(i32* %91, i32* %93, i32 1, %struct.uftdi_softc* %94, i32* @uftdi_callback, i32* %96)
  store i32 %97, i32* %6, align 4
  %98 = load i32, i32* %6, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %59
  br label %106

101:                                              ; preds = %59
  %102 = load %struct.uftdi_softc*, %struct.uftdi_softc** %5, align 8
  %103 = getelementptr inbounds %struct.uftdi_softc, %struct.uftdi_softc* %102, i32 0, i32 1
  %104 = load i32, i32* %3, align 4
  %105 = call i32 @ucom_set_pnpinfo_usb(i32* %103, i32 %104)
  store i32 0, i32* %2, align 4
  br label %110

106:                                              ; preds = %100, %56
  %107 = load i32, i32* %3, align 4
  %108 = call i32 @uftdi_detach(i32 %107)
  %109 = load i32, i32* @ENXIO, align 4
  store i32 %109, i32* %2, align 4
  br label %110

110:                                              ; preds = %106, %101
  %111 = load i32, i32* %2, align 4
  ret i32 %111
}

declare dso_local %struct.usb_attach_arg* @device_get_ivars(i32) #1

declare dso_local %struct.uftdi_softc* @device_get_softc(i32) #1

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @device_set_usb_desc(i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @ucom_ref(i32*) #1

declare dso_local i32 @uftdi_devtype_setup(%struct.uftdi_softc*, %struct.usb_attach_arg*) #1

declare dso_local i32 @usbd_transfer_setup(i32, i32*, i32*, i32, i32, %struct.uftdi_softc*, i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @usbd_xfer_set_stall(i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @FTDI_SIO_SET_DATA_BITS(i32) #1

declare dso_local i32 @ucom_use_lsr_txbits(i32*) #1

declare dso_local i32 @ucom_attach(i32*, i32*, i32, %struct.uftdi_softc*, i32*, i32*) #1

declare dso_local i32 @ucom_set_pnpinfo_usb(i32*, i32) #1

declare dso_local i32 @uftdi_detach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
