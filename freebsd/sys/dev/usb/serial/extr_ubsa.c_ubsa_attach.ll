; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_ubsa.c_ubsa_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_ubsa.c_ubsa_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_attach_arg = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ubsa_softc = type { i32, i32, i32, i32*, i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"sc=%p\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"ubsa\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@UBSA_IFACE_INDEX = common dso_local global i32 0, align 4
@ubsa_config = common dso_local global i32 0, align 4
@UBSA_N_TRANSFER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"could not allocate all pipes\0A\00", align 1
@UBSA_BULK_DT_WR = common dso_local global i64 0, align 8
@UBSA_BULK_DT_RD = common dso_local global i64 0, align 8
@ubsa_callback = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"ucom_attach failed\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ubsa_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ubsa_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_attach_arg*, align 8
  %5 = alloca %struct.ubsa_softc*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.usb_attach_arg* @device_get_ivars(i32 %7)
  store %struct.usb_attach_arg* %8, %struct.usb_attach_arg** %4, align 8
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.ubsa_softc* @device_get_softc(i32 %9)
  store %struct.ubsa_softc* %10, %struct.ubsa_softc** %5, align 8
  %11 = load %struct.ubsa_softc*, %struct.ubsa_softc** %5, align 8
  %12 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %struct.ubsa_softc* %11)
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @device_set_usb_desc(i32 %13)
  %15 = load %struct.ubsa_softc*, %struct.ubsa_softc** %5, align 8
  %16 = getelementptr inbounds %struct.ubsa_softc, %struct.ubsa_softc* %15, i32 0, i32 1
  %17 = load i32, i32* @MTX_DEF, align 4
  %18 = call i32 @mtx_init(i32* %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 %17)
  %19 = load %struct.ubsa_softc*, %struct.ubsa_softc** %5, align 8
  %20 = getelementptr inbounds %struct.ubsa_softc, %struct.ubsa_softc* %19, i32 0, i32 0
  %21 = call i32 @ucom_ref(i32* %20)
  %22 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %23 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ubsa_softc*, %struct.ubsa_softc** %5, align 8
  %26 = getelementptr inbounds %struct.ubsa_softc, %struct.ubsa_softc* %25, i32 0, i32 6
  store i32 %24, i32* %26, align 8
  %27 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %28 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.ubsa_softc*, %struct.ubsa_softc** %5, align 8
  %32 = getelementptr inbounds %struct.ubsa_softc, %struct.ubsa_softc* %31, i32 0, i32 5
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @UBSA_IFACE_INDEX, align 4
  %34 = load %struct.ubsa_softc*, %struct.ubsa_softc** %5, align 8
  %35 = getelementptr inbounds %struct.ubsa_softc, %struct.ubsa_softc* %34, i32 0, i32 4
  store i32 %33, i32* %35, align 8
  %36 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %37 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.ubsa_softc*, %struct.ubsa_softc** %5, align 8
  %40 = getelementptr inbounds %struct.ubsa_softc, %struct.ubsa_softc* %39, i32 0, i32 4
  %41 = load %struct.ubsa_softc*, %struct.ubsa_softc** %5, align 8
  %42 = getelementptr inbounds %struct.ubsa_softc, %struct.ubsa_softc* %41, i32 0, i32 3
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* @ubsa_config, align 4
  %45 = load i32, i32* @UBSA_N_TRANSFER, align 4
  %46 = load %struct.ubsa_softc*, %struct.ubsa_softc** %5, align 8
  %47 = load %struct.ubsa_softc*, %struct.ubsa_softc** %5, align 8
  %48 = getelementptr inbounds %struct.ubsa_softc, %struct.ubsa_softc* %47, i32 0, i32 1
  %49 = call i32 @usbd_transfer_setup(i32 %38, i32* %40, i32* %43, i32 %44, i32 %45, %struct.ubsa_softc* %46, i32* %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %1
  %53 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %92

54:                                               ; preds = %1
  %55 = load %struct.ubsa_softc*, %struct.ubsa_softc** %5, align 8
  %56 = getelementptr inbounds %struct.ubsa_softc, %struct.ubsa_softc* %55, i32 0, i32 1
  %57 = call i32 @mtx_lock(i32* %56)
  %58 = load %struct.ubsa_softc*, %struct.ubsa_softc** %5, align 8
  %59 = getelementptr inbounds %struct.ubsa_softc, %struct.ubsa_softc* %58, i32 0, i32 3
  %60 = load i32*, i32** %59, align 8
  %61 = load i64, i64* @UBSA_BULK_DT_WR, align 8
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @usbd_xfer_set_stall(i32 %63)
  %65 = load %struct.ubsa_softc*, %struct.ubsa_softc** %5, align 8
  %66 = getelementptr inbounds %struct.ubsa_softc, %struct.ubsa_softc* %65, i32 0, i32 3
  %67 = load i32*, i32** %66, align 8
  %68 = load i64, i64* @UBSA_BULK_DT_RD, align 8
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @usbd_xfer_set_stall(i32 %70)
  %72 = load %struct.ubsa_softc*, %struct.ubsa_softc** %5, align 8
  %73 = getelementptr inbounds %struct.ubsa_softc, %struct.ubsa_softc* %72, i32 0, i32 1
  %74 = call i32 @mtx_unlock(i32* %73)
  %75 = load %struct.ubsa_softc*, %struct.ubsa_softc** %5, align 8
  %76 = getelementptr inbounds %struct.ubsa_softc, %struct.ubsa_softc* %75, i32 0, i32 0
  %77 = load %struct.ubsa_softc*, %struct.ubsa_softc** %5, align 8
  %78 = getelementptr inbounds %struct.ubsa_softc, %struct.ubsa_softc* %77, i32 0, i32 2
  %79 = load %struct.ubsa_softc*, %struct.ubsa_softc** %5, align 8
  %80 = load %struct.ubsa_softc*, %struct.ubsa_softc** %5, align 8
  %81 = getelementptr inbounds %struct.ubsa_softc, %struct.ubsa_softc* %80, i32 0, i32 1
  %82 = call i32 @ucom_attach(i32* %76, i32* %78, i32 1, %struct.ubsa_softc* %79, i32* @ubsa_callback, i32* %81)
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* %6, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %54
  %86 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  br label %92

87:                                               ; preds = %54
  %88 = load %struct.ubsa_softc*, %struct.ubsa_softc** %5, align 8
  %89 = getelementptr inbounds %struct.ubsa_softc, %struct.ubsa_softc* %88, i32 0, i32 0
  %90 = load i32, i32* %3, align 4
  %91 = call i32 @ucom_set_pnpinfo_usb(i32* %89, i32 %90)
  store i32 0, i32* %2, align 4
  br label %96

92:                                               ; preds = %85, %52
  %93 = load i32, i32* %3, align 4
  %94 = call i32 @ubsa_detach(i32 %93)
  %95 = load i32, i32* @ENXIO, align 4
  store i32 %95, i32* %2, align 4
  br label %96

96:                                               ; preds = %92, %87
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local %struct.usb_attach_arg* @device_get_ivars(i32) #1

declare dso_local %struct.ubsa_softc* @device_get_softc(i32) #1

declare dso_local i32 @DPRINTF(i8*, ...) #1

declare dso_local i32 @device_set_usb_desc(i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @ucom_ref(i32*) #1

declare dso_local i32 @usbd_transfer_setup(i32, i32*, i32*, i32, i32, %struct.ubsa_softc*, i32*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @usbd_xfer_set_stall(i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @ucom_attach(i32*, i32*, i32, %struct.ubsa_softc*, i32*, i32*) #1

declare dso_local i32 @ucom_set_pnpinfo_usb(i32*, i32) #1

declare dso_local i32 @ubsa_detach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
