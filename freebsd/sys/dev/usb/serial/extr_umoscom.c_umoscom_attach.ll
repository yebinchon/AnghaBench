; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_umoscom.c_umoscom_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_umoscom.c_umoscom_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_attach_arg = type { i32 }
%struct.umoscom_softc = type { i32, i32, i32, i32, i32*, i32 }

@.str = private unnamed_addr constant [32 x i8] c"MOSCHIP USB Serial Port Adapter\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"<MOSCHIP USB Serial Port Adapter>\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"umoscom\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@UMOSCOM_IFACE_INDEX = common dso_local global i32 0, align 4
@umoscom_config_data = common dso_local global i32 0, align 4
@UMOSCOM_N_TRANSFER = common dso_local global i32 0, align 4
@UMOSCOM_BULK_DT_WR = common dso_local global i64 0, align 8
@UMOSCOM_BULK_DT_RD = common dso_local global i64 0, align 8
@umoscom_callback = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"attach error: %s\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @umoscom_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @umoscom_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_attach_arg*, align 8
  %5 = alloca %struct.umoscom_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.usb_attach_arg* @device_get_ivars(i32 %8)
  store %struct.usb_attach_arg* %9, %struct.usb_attach_arg** %4, align 8
  %10 = load i32, i32* %3, align 4
  %11 = call %struct.umoscom_softc* @device_get_softc(i32 %10)
  store %struct.umoscom_softc* %11, %struct.umoscom_softc** %5, align 8
  %12 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %13 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.umoscom_softc*, %struct.umoscom_softc** %5, align 8
  %16 = getelementptr inbounds %struct.umoscom_softc, %struct.umoscom_softc* %15, i32 0, i32 5
  store i32 %14, i32* %16, align 8
  %17 = load %struct.umoscom_softc*, %struct.umoscom_softc** %5, align 8
  %18 = getelementptr inbounds %struct.umoscom_softc, %struct.umoscom_softc* %17, i32 0, i32 0
  store i32 8, i32* %18, align 8
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @device_set_desc(i32 %19, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* %3, align 4
  %22 = call i32 (i32, i8*, ...) @device_printf(i32 %21, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %23 = load %struct.umoscom_softc*, %struct.umoscom_softc** %5, align 8
  %24 = getelementptr inbounds %struct.umoscom_softc, %struct.umoscom_softc* %23, i32 0, i32 2
  %25 = load i32, i32* @MTX_DEF, align 4
  %26 = call i32 @mtx_init(i32* %24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32* null, i32 %25)
  %27 = load %struct.umoscom_softc*, %struct.umoscom_softc** %5, align 8
  %28 = getelementptr inbounds %struct.umoscom_softc, %struct.umoscom_softc* %27, i32 0, i32 1
  %29 = call i32 @ucom_ref(i32* %28)
  %30 = load i32, i32* @UMOSCOM_IFACE_INDEX, align 4
  store i32 %30, i32* %7, align 4
  %31 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %32 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.umoscom_softc*, %struct.umoscom_softc** %5, align 8
  %35 = getelementptr inbounds %struct.umoscom_softc, %struct.umoscom_softc* %34, i32 0, i32 4
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* @umoscom_config_data, align 4
  %38 = load i32, i32* @UMOSCOM_N_TRANSFER, align 4
  %39 = load %struct.umoscom_softc*, %struct.umoscom_softc** %5, align 8
  %40 = load %struct.umoscom_softc*, %struct.umoscom_softc** %5, align 8
  %41 = getelementptr inbounds %struct.umoscom_softc, %struct.umoscom_softc* %40, i32 0, i32 2
  %42 = call i32 @usbd_transfer_setup(i32 %33, i32* %7, i32* %36, i32 %37, i32 %38, %struct.umoscom_softc* %39, i32* %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %1
  br label %83

46:                                               ; preds = %1
  %47 = load %struct.umoscom_softc*, %struct.umoscom_softc** %5, align 8
  %48 = getelementptr inbounds %struct.umoscom_softc, %struct.umoscom_softc* %47, i32 0, i32 2
  %49 = call i32 @mtx_lock(i32* %48)
  %50 = load %struct.umoscom_softc*, %struct.umoscom_softc** %5, align 8
  %51 = getelementptr inbounds %struct.umoscom_softc, %struct.umoscom_softc* %50, i32 0, i32 4
  %52 = load i32*, i32** %51, align 8
  %53 = load i64, i64* @UMOSCOM_BULK_DT_WR, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @usbd_xfer_set_stall(i32 %55)
  %57 = load %struct.umoscom_softc*, %struct.umoscom_softc** %5, align 8
  %58 = getelementptr inbounds %struct.umoscom_softc, %struct.umoscom_softc* %57, i32 0, i32 4
  %59 = load i32*, i32** %58, align 8
  %60 = load i64, i64* @UMOSCOM_BULK_DT_RD, align 8
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @usbd_xfer_set_stall(i32 %62)
  %64 = load %struct.umoscom_softc*, %struct.umoscom_softc** %5, align 8
  %65 = getelementptr inbounds %struct.umoscom_softc, %struct.umoscom_softc* %64, i32 0, i32 2
  %66 = call i32 @mtx_unlock(i32* %65)
  %67 = load %struct.umoscom_softc*, %struct.umoscom_softc** %5, align 8
  %68 = getelementptr inbounds %struct.umoscom_softc, %struct.umoscom_softc* %67, i32 0, i32 1
  %69 = load %struct.umoscom_softc*, %struct.umoscom_softc** %5, align 8
  %70 = getelementptr inbounds %struct.umoscom_softc, %struct.umoscom_softc* %69, i32 0, i32 3
  %71 = load %struct.umoscom_softc*, %struct.umoscom_softc** %5, align 8
  %72 = load %struct.umoscom_softc*, %struct.umoscom_softc** %5, align 8
  %73 = getelementptr inbounds %struct.umoscom_softc, %struct.umoscom_softc* %72, i32 0, i32 2
  %74 = call i32 @ucom_attach(i32* %68, i32* %70, i32 1, %struct.umoscom_softc* %71, i32* @umoscom_callback, i32* %73)
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %6, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %46
  br label %83

78:                                               ; preds = %46
  %79 = load %struct.umoscom_softc*, %struct.umoscom_softc** %5, align 8
  %80 = getelementptr inbounds %struct.umoscom_softc, %struct.umoscom_softc* %79, i32 0, i32 1
  %81 = load i32, i32* %3, align 4
  %82 = call i32 @ucom_set_pnpinfo_usb(i32* %80, i32 %81)
  store i32 0, i32* %2, align 4
  br label %91

83:                                               ; preds = %77, %45
  %84 = load i32, i32* %3, align 4
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @usbd_errstr(i32 %85)
  %87 = call i32 (i32, i8*, ...) @device_printf(i32 %84, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %86)
  %88 = load i32, i32* %3, align 4
  %89 = call i32 @umoscom_detach(i32 %88)
  %90 = load i32, i32* @ENXIO, align 4
  store i32 %90, i32* %2, align 4
  br label %91

91:                                               ; preds = %83, %78
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local %struct.usb_attach_arg* @device_get_ivars(i32) #1

declare dso_local %struct.umoscom_softc* @device_get_softc(i32) #1

declare dso_local i32 @device_set_desc(i32, i8*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @ucom_ref(i32*) #1

declare dso_local i32 @usbd_transfer_setup(i32, i32*, i32*, i32, i32, %struct.umoscom_softc*, i32*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @usbd_xfer_set_stall(i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @ucom_attach(i32*, i32*, i32, %struct.umoscom_softc*, i32*, i32*) #1

declare dso_local i32 @ucom_set_pnpinfo_usb(i32*, i32) #1

declare dso_local i32 @usbd_errstr(i32) #1

declare dso_local i32 @umoscom_detach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
