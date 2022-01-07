; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/bluetooth/drivers/ubtbcmfw/extr_ubtbcmfw.c_ubtbcmfw_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/bluetooth/drivers/ubtbcmfw/extr_ubtbcmfw.c_ubtbcmfw_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_attach_arg = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ubtbcmfw_softc = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"ubtbcmfw lock\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@MTX_RECURSE = common dso_local global i32 0, align 4
@UBTBCMFW_IFACE_IDX = common dso_local global i32 0, align 4
@ubtbcmfw_config = common dso_local global i32 0, align 4
@UBTBCMFW_N_TRANSFER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"allocating USB transfers failed. %s\0A\00", align 1
@ubtbcmfw_fifo_methods = common dso_local global i32 0, align 4
@UID_ROOT = common dso_local global i32 0, align 4
@GID_OPERATOR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"could not attach fifo. %s\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ubtbcmfw_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ubtbcmfw_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_attach_arg*, align 8
  %5 = alloca %struct.ubtbcmfw_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.usb_attach_arg* @device_get_ivars(i32 %8)
  store %struct.usb_attach_arg* %9, %struct.usb_attach_arg** %4, align 8
  %10 = load i32, i32* %3, align 4
  %11 = call %struct.ubtbcmfw_softc* @device_get_softc(i32 %10)
  store %struct.ubtbcmfw_softc* %11, %struct.ubtbcmfw_softc** %5, align 8
  %12 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %13 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.ubtbcmfw_softc*, %struct.ubtbcmfw_softc** %5, align 8
  %16 = getelementptr inbounds %struct.ubtbcmfw_softc, %struct.ubtbcmfw_softc* %15, i32 0, i32 3
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @device_set_usb_desc(i32 %17)
  %19 = load %struct.ubtbcmfw_softc*, %struct.ubtbcmfw_softc** %5, align 8
  %20 = getelementptr inbounds %struct.ubtbcmfw_softc, %struct.ubtbcmfw_softc* %19, i32 0, i32 1
  %21 = load i32, i32* @MTX_DEF, align 4
  %22 = load i32, i32* @MTX_RECURSE, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @mtx_init(i32* %20, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32* null, i32 %23)
  %25 = load i32, i32* @UBTBCMFW_IFACE_IDX, align 4
  store i32 %25, i32* %6, align 4
  %26 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %27 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ubtbcmfw_softc*, %struct.ubtbcmfw_softc** %5, align 8
  %30 = getelementptr inbounds %struct.ubtbcmfw_softc, %struct.ubtbcmfw_softc* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @ubtbcmfw_config, align 4
  %33 = load i32, i32* @UBTBCMFW_N_TRANSFER, align 4
  %34 = load %struct.ubtbcmfw_softc*, %struct.ubtbcmfw_softc** %5, align 8
  %35 = load %struct.ubtbcmfw_softc*, %struct.ubtbcmfw_softc** %5, align 8
  %36 = getelementptr inbounds %struct.ubtbcmfw_softc, %struct.ubtbcmfw_softc* %35, i32 0, i32 1
  %37 = call i32 @usbd_transfer_setup(i32 %28, i32* %6, i32 %31, i32 %32, i32 %33, %struct.ubtbcmfw_softc* %34, i32* %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %1
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @usbd_errstr(i32 %42)
  %44 = call i32 @device_printf(i32 %41, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  br label %71

45:                                               ; preds = %1
  %46 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %47 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.ubtbcmfw_softc*, %struct.ubtbcmfw_softc** %5, align 8
  %50 = load %struct.ubtbcmfw_softc*, %struct.ubtbcmfw_softc** %5, align 8
  %51 = getelementptr inbounds %struct.ubtbcmfw_softc, %struct.ubtbcmfw_softc* %50, i32 0, i32 1
  %52 = load %struct.ubtbcmfw_softc*, %struct.ubtbcmfw_softc** %5, align 8
  %53 = getelementptr inbounds %struct.ubtbcmfw_softc, %struct.ubtbcmfw_softc* %52, i32 0, i32 0
  %54 = load i32, i32* %3, align 4
  %55 = call i32 @device_get_unit(i32 %54)
  %56 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %57 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @UID_ROOT, align 4
  %61 = load i32, i32* @GID_OPERATOR, align 4
  %62 = call i32 @usb_fifo_attach(i32 %48, %struct.ubtbcmfw_softc* %49, i32* %51, i32* @ubtbcmfw_fifo_methods, i32* %53, i32 %55, i64 -1, i32 %59, i32 %60, i32 %61, i32 420)
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %45
  %66 = load i32, i32* %3, align 4
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @usbd_errstr(i32 %67)
  %69 = call i32 @device_printf(i32 %66, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %68)
  br label %71

70:                                               ; preds = %45
  store i32 0, i32* %2, align 4
  br label %75

71:                                               ; preds = %65, %40
  %72 = load i32, i32* %3, align 4
  %73 = call i32 @ubtbcmfw_detach(i32 %72)
  %74 = load i32, i32* @ENXIO, align 4
  store i32 %74, i32* %2, align 4
  br label %75

75:                                               ; preds = %71, %70
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local %struct.usb_attach_arg* @device_get_ivars(i32) #1

declare dso_local %struct.ubtbcmfw_softc* @device_get_softc(i32) #1

declare dso_local i32 @device_set_usb_desc(i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @usbd_transfer_setup(i32, i32*, i32, i32, i32, %struct.ubtbcmfw_softc*, i32*) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @usbd_errstr(i32) #1

declare dso_local i32 @usb_fifo_attach(i32, %struct.ubtbcmfw_softc*, i32*, i32*, i32*, i32, i64, i32, i32, i32, i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @ubtbcmfw_detach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
