; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_uslcom.c_uslcom_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_uslcom.c_uslcom_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_attach_arg = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.uslcom_softc = type { i32, i32, i32, i32, i32*, i32, i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"uslcom\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@uslcom_config = common dso_local global i32 0, align 4
@USLCOM_N_TRANSFER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"one or more missing USB endpoints, error=%s\0A\00", align 1
@USLCOM_BULK_DT_WR = common dso_local global i64 0, align 8
@USLCOM_BULK_DT_RD = common dso_local global i64 0, align 8
@uslcom_callback = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @uslcom_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uslcom_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_attach_arg*, align 8
  %5 = alloca %struct.uslcom_softc*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.usb_attach_arg* @device_get_ivars(i32 %7)
  store %struct.usb_attach_arg* %8, %struct.usb_attach_arg** %4, align 8
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.uslcom_softc* @device_get_softc(i32 %9)
  store %struct.uslcom_softc* %10, %struct.uslcom_softc** %5, align 8
  %11 = call i32 @DPRINTFN(i32 11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @device_set_usb_desc(i32 %12)
  %14 = load %struct.uslcom_softc*, %struct.uslcom_softc** %5, align 8
  %15 = getelementptr inbounds %struct.uslcom_softc, %struct.uslcom_softc* %14, i32 0, i32 1
  %16 = load i32, i32* @MTX_DEF, align 4
  %17 = call i32 @mtx_init(i32* %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 %16)
  %18 = load %struct.uslcom_softc*, %struct.uslcom_softc** %5, align 8
  %19 = getelementptr inbounds %struct.uslcom_softc, %struct.uslcom_softc* %18, i32 0, i32 0
  %20 = call i32 @ucom_ref(i32* %19)
  %21 = load %struct.uslcom_softc*, %struct.uslcom_softc** %5, align 8
  %22 = getelementptr inbounds %struct.uslcom_softc, %struct.uslcom_softc* %21, i32 0, i32 7
  %23 = load %struct.uslcom_softc*, %struct.uslcom_softc** %5, align 8
  %24 = getelementptr inbounds %struct.uslcom_softc, %struct.uslcom_softc* %23, i32 0, i32 1
  %25 = call i32 @usb_callout_init_mtx(i32* %22, i32* %24, i32 0)
  %26 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %27 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.uslcom_softc*, %struct.uslcom_softc** %5, align 8
  %30 = getelementptr inbounds %struct.uslcom_softc, %struct.uslcom_softc* %29, i32 0, i32 6
  store i32 %28, i32* %30, align 4
  %31 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %32 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.uslcom_softc*, %struct.uslcom_softc** %5, align 8
  %36 = getelementptr inbounds %struct.uslcom_softc, %struct.uslcom_softc* %35, i32 0, i32 5
  store i32 %34, i32* %36, align 8
  %37 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %38 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %41 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load %struct.uslcom_softc*, %struct.uslcom_softc** %5, align 8
  %44 = getelementptr inbounds %struct.uslcom_softc, %struct.uslcom_softc* %43, i32 0, i32 4
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* @uslcom_config, align 4
  %47 = load i32, i32* @USLCOM_N_TRANSFER, align 4
  %48 = load %struct.uslcom_softc*, %struct.uslcom_softc** %5, align 8
  %49 = load %struct.uslcom_softc*, %struct.uslcom_softc** %5, align 8
  %50 = getelementptr inbounds %struct.uslcom_softc, %struct.uslcom_softc* %49, i32 0, i32 1
  %51 = call i32 @usbd_transfer_setup(i32 %39, i32* %42, i32* %45, i32 %46, i32 %47, %struct.uslcom_softc* %48, i32* %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %1
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @usbd_errstr(i32 %55)
  %57 = call i32 @DPRINTF(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %56)
  br label %99

58:                                               ; preds = %1
  %59 = load %struct.uslcom_softc*, %struct.uslcom_softc** %5, align 8
  %60 = getelementptr inbounds %struct.uslcom_softc, %struct.uslcom_softc* %59, i32 0, i32 1
  %61 = call i32 @mtx_lock(i32* %60)
  %62 = load %struct.uslcom_softc*, %struct.uslcom_softc** %5, align 8
  %63 = getelementptr inbounds %struct.uslcom_softc, %struct.uslcom_softc* %62, i32 0, i32 4
  %64 = load i32*, i32** %63, align 8
  %65 = load i64, i64* @USLCOM_BULK_DT_WR, align 8
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @usbd_xfer_set_stall(i32 %67)
  %69 = load %struct.uslcom_softc*, %struct.uslcom_softc** %5, align 8
  %70 = getelementptr inbounds %struct.uslcom_softc, %struct.uslcom_softc* %69, i32 0, i32 4
  %71 = load i32*, i32** %70, align 8
  %72 = load i64, i64* @USLCOM_BULK_DT_RD, align 8
  %73 = getelementptr inbounds i32, i32* %71, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @usbd_xfer_set_stall(i32 %74)
  %76 = load %struct.uslcom_softc*, %struct.uslcom_softc** %5, align 8
  %77 = getelementptr inbounds %struct.uslcom_softc, %struct.uslcom_softc* %76, i32 0, i32 1
  %78 = call i32 @mtx_unlock(i32* %77)
  %79 = load %struct.uslcom_softc*, %struct.uslcom_softc** %5, align 8
  %80 = call i32 @uslcom_get_partnum(%struct.uslcom_softc* %79)
  %81 = load %struct.uslcom_softc*, %struct.uslcom_softc** %5, align 8
  %82 = getelementptr inbounds %struct.uslcom_softc, %struct.uslcom_softc* %81, i32 0, i32 3
  store i32 %80, i32* %82, align 4
  %83 = load %struct.uslcom_softc*, %struct.uslcom_softc** %5, align 8
  %84 = getelementptr inbounds %struct.uslcom_softc, %struct.uslcom_softc* %83, i32 0, i32 0
  %85 = load %struct.uslcom_softc*, %struct.uslcom_softc** %5, align 8
  %86 = getelementptr inbounds %struct.uslcom_softc, %struct.uslcom_softc* %85, i32 0, i32 2
  %87 = load %struct.uslcom_softc*, %struct.uslcom_softc** %5, align 8
  %88 = load %struct.uslcom_softc*, %struct.uslcom_softc** %5, align 8
  %89 = getelementptr inbounds %struct.uslcom_softc, %struct.uslcom_softc* %88, i32 0, i32 1
  %90 = call i32 @ucom_attach(i32* %84, i32* %86, i32 1, %struct.uslcom_softc* %87, i32* @uslcom_callback, i32* %89)
  store i32 %90, i32* %6, align 4
  %91 = load i32, i32* %6, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %58
  br label %99

94:                                               ; preds = %58
  %95 = load %struct.uslcom_softc*, %struct.uslcom_softc** %5, align 8
  %96 = getelementptr inbounds %struct.uslcom_softc, %struct.uslcom_softc* %95, i32 0, i32 0
  %97 = load i32, i32* %3, align 4
  %98 = call i32 @ucom_set_pnpinfo_usb(i32* %96, i32 %97)
  store i32 0, i32* %2, align 4
  br label %103

99:                                               ; preds = %93, %54
  %100 = load i32, i32* %3, align 4
  %101 = call i32 @uslcom_detach(i32 %100)
  %102 = load i32, i32* @ENXIO, align 4
  store i32 %102, i32* %2, align 4
  br label %103

103:                                              ; preds = %99, %94
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

declare dso_local %struct.usb_attach_arg* @device_get_ivars(i32) #1

declare dso_local %struct.uslcom_softc* @device_get_softc(i32) #1

declare dso_local i32 @DPRINTFN(i32, i8*) #1

declare dso_local i32 @device_set_usb_desc(i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @ucom_ref(i32*) #1

declare dso_local i32 @usb_callout_init_mtx(i32*, i32*, i32) #1

declare dso_local i32 @usbd_transfer_setup(i32, i32*, i32*, i32, i32, %struct.uslcom_softc*, i32*) #1

declare dso_local i32 @DPRINTF(i8*, i32) #1

declare dso_local i32 @usbd_errstr(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @usbd_xfer_set_stall(i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @uslcom_get_partnum(%struct.uslcom_softc*) #1

declare dso_local i32 @ucom_attach(i32*, i32*, i32, %struct.uslcom_softc*, i32*, i32*) #1

declare dso_local i32 @ucom_set_pnpinfo_usb(i32*, i32) #1

declare dso_local i32 @uslcom_detach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
