; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_muge.c_muge_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_muge.c_muge_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_attach_arg = type { i32 }
%struct.muge_softc = type { i32, i32, i32, %struct.usb_ether }
%struct.usb_ether = type { i32*, i32*, i32, i32, %struct.muge_softc* }

@MTX_DEF = common dso_local global i32 0, align 4
@MUGE_IFACE_IDX = common dso_local global i32 0, align 4
@muge_config = common dso_local global i32 0, align 4
@MUGE_N_TRANSFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"error: allocating USB transfers failed\0A\00", align 1
@muge_ue_methods = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"error: could not attach interface\0A\00", align 1
@MUGE_FLAG_INIT_DONE = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @muge_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @muge_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_attach_arg*, align 8
  %5 = alloca %struct.muge_softc*, align 8
  %6 = alloca %struct.usb_ether*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.usb_attach_arg* @device_get_ivars(i32 %9)
  store %struct.usb_attach_arg* %10, %struct.usb_attach_arg** %4, align 8
  %11 = load i32, i32* %3, align 4
  %12 = call %struct.muge_softc* @device_get_softc(i32 %11)
  store %struct.muge_softc* %12, %struct.muge_softc** %5, align 8
  %13 = load %struct.muge_softc*, %struct.muge_softc** %5, align 8
  %14 = getelementptr inbounds %struct.muge_softc, %struct.muge_softc* %13, i32 0, i32 3
  store %struct.usb_ether* %14, %struct.usb_ether** %6, align 8
  %15 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %16 = call i32 @USB_GET_DRIVER_INFO(%struct.usb_attach_arg* %15)
  %17 = load %struct.muge_softc*, %struct.muge_softc** %5, align 8
  %18 = getelementptr inbounds %struct.muge_softc, %struct.muge_softc* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @device_set_usb_desc(i32 %19)
  %21 = load %struct.muge_softc*, %struct.muge_softc** %5, align 8
  %22 = getelementptr inbounds %struct.muge_softc, %struct.muge_softc* %21, i32 0, i32 1
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @device_get_nameunit(i32 %23)
  %25 = load i32, i32* @MTX_DEF, align 4
  %26 = call i32 @mtx_init(i32* %22, i32 %24, i32* null, i32 %25)
  %27 = load i32, i32* @MUGE_IFACE_IDX, align 4
  store i32 %27, i32* %7, align 4
  %28 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %29 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.muge_softc*, %struct.muge_softc** %5, align 8
  %32 = getelementptr inbounds %struct.muge_softc, %struct.muge_softc* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @muge_config, align 4
  %35 = load i32, i32* @MUGE_N_TRANSFER, align 4
  %36 = load %struct.muge_softc*, %struct.muge_softc** %5, align 8
  %37 = load %struct.muge_softc*, %struct.muge_softc** %5, align 8
  %38 = getelementptr inbounds %struct.muge_softc, %struct.muge_softc* %37, i32 0, i32 1
  %39 = call i32 @usbd_transfer_setup(i32 %30, i32* %7, i32 %33, i32 %34, i32 %35, %struct.muge_softc* %36, i32* %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %1
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @device_printf(i32 %43, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %90

45:                                               ; preds = %1
  %46 = load %struct.muge_softc*, %struct.muge_softc** %5, align 8
  %47 = load %struct.usb_ether*, %struct.usb_ether** %6, align 8
  %48 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %47, i32 0, i32 4
  store %struct.muge_softc* %46, %struct.muge_softc** %48, align 8
  %49 = load i32, i32* %3, align 4
  %50 = load %struct.usb_ether*, %struct.usb_ether** %6, align 8
  %51 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 4
  %52 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %53 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.usb_ether*, %struct.usb_ether** %6, align 8
  %56 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 8
  %57 = load %struct.muge_softc*, %struct.muge_softc** %5, align 8
  %58 = getelementptr inbounds %struct.muge_softc, %struct.muge_softc* %57, i32 0, i32 1
  %59 = load %struct.usb_ether*, %struct.usb_ether** %6, align 8
  %60 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %59, i32 0, i32 1
  store i32* %58, i32** %60, align 8
  %61 = load %struct.usb_ether*, %struct.usb_ether** %6, align 8
  %62 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %61, i32 0, i32 0
  store i32* @muge_ue_methods, i32** %62, align 8
  %63 = load %struct.usb_ether*, %struct.usb_ether** %6, align 8
  %64 = call i32 @uether_ifattach(%struct.usb_ether* %63)
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %45
  %68 = load i32, i32* %3, align 4
  %69 = call i32 @device_printf(i32 %68, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %84

70:                                               ; preds = %45
  %71 = load %struct.usb_ether*, %struct.usb_ether** %6, align 8
  %72 = call i32 @uether_ifattach_wait(%struct.usb_ether* %71)
  %73 = load %struct.muge_softc*, %struct.muge_softc** %5, align 8
  %74 = getelementptr inbounds %struct.muge_softc, %struct.muge_softc* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @MUGE_FLAG_INIT_DONE, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %70
  br label %81

80:                                               ; preds = %70
  store i32 0, i32* %2, align 4
  br label %95

81:                                               ; preds = %79
  %82 = load %struct.usb_ether*, %struct.usb_ether** %6, align 8
  %83 = call i32 @uether_ifdetach(%struct.usb_ether* %82)
  br label %84

84:                                               ; preds = %81, %67
  %85 = load %struct.muge_softc*, %struct.muge_softc** %5, align 8
  %86 = getelementptr inbounds %struct.muge_softc, %struct.muge_softc* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @MUGE_N_TRANSFER, align 4
  %89 = call i32 @usbd_transfer_unsetup(i32 %87, i32 %88)
  br label %90

90:                                               ; preds = %84, %42
  %91 = load %struct.muge_softc*, %struct.muge_softc** %5, align 8
  %92 = getelementptr inbounds %struct.muge_softc, %struct.muge_softc* %91, i32 0, i32 1
  %93 = call i32 @mtx_destroy(i32* %92)
  %94 = load i32, i32* @ENXIO, align 4
  store i32 %94, i32* %2, align 4
  br label %95

95:                                               ; preds = %90, %80
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local %struct.usb_attach_arg* @device_get_ivars(i32) #1

declare dso_local %struct.muge_softc* @device_get_softc(i32) #1

declare dso_local i32 @USB_GET_DRIVER_INFO(%struct.usb_attach_arg*) #1

declare dso_local i32 @device_set_usb_desc(i32) #1

declare dso_local i32 @mtx_init(i32*, i32, i32*, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @usbd_transfer_setup(i32, i32*, i32, i32, i32, %struct.muge_softc*, i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @uether_ifattach(%struct.usb_ether*) #1

declare dso_local i32 @uether_ifattach_wait(%struct.usb_ether*) #1

declare dso_local i32 @uether_ifdetach(%struct.usb_ether*) #1

declare dso_local i32 @usbd_transfer_unsetup(i32, i32) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
