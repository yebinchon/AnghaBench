; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_udav.c_udav_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_udav.c_udav_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_attach_arg = type { i32 }
%struct.udav_softc = type { i32, i32, i32, %struct.usb_ether }
%struct.usb_ether = type { i32*, i32, i32, %struct.udav_softc*, i32* }

@MTX_DEF = common dso_local global i32 0, align 4
@UDAV_IFACE_INDEX = common dso_local global i32 0, align 4
@udav_config = common dso_local global i32 0, align 4
@UDAV_N_TRANSFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"allocating USB transfers failed\0A\00", align 1
@UDAV_FLAG_NO_PHY = common dso_local global i32 0, align 4
@udav_ue_methods_nophy = common dso_local global i32 0, align 4
@UDAV_FLAG_LINK = common dso_local global i32 0, align 4
@udav_ue_methods = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"could not attach interface\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @udav_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udav_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_attach_arg*, align 8
  %5 = alloca %struct.udav_softc*, align 8
  %6 = alloca %struct.usb_ether*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.usb_attach_arg* @device_get_ivars(i32 %9)
  store %struct.usb_attach_arg* %10, %struct.usb_attach_arg** %4, align 8
  %11 = load i32, i32* %3, align 4
  %12 = call %struct.udav_softc* @device_get_softc(i32 %11)
  store %struct.udav_softc* %12, %struct.udav_softc** %5, align 8
  %13 = load %struct.udav_softc*, %struct.udav_softc** %5, align 8
  %14 = getelementptr inbounds %struct.udav_softc, %struct.udav_softc* %13, i32 0, i32 3
  store %struct.usb_ether* %14, %struct.usb_ether** %6, align 8
  %15 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %16 = call i32 @USB_GET_DRIVER_INFO(%struct.usb_attach_arg* %15)
  %17 = load %struct.udav_softc*, %struct.udav_softc** %5, align 8
  %18 = getelementptr inbounds %struct.udav_softc, %struct.udav_softc* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @device_set_usb_desc(i32 %19)
  %21 = load %struct.udav_softc*, %struct.udav_softc** %5, align 8
  %22 = getelementptr inbounds %struct.udav_softc, %struct.udav_softc* %21, i32 0, i32 1
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @device_get_nameunit(i32 %23)
  %25 = load i32, i32* @MTX_DEF, align 4
  %26 = call i32 @mtx_init(i32* %22, i32 %24, i32* null, i32 %25)
  %27 = load i32, i32* @UDAV_IFACE_INDEX, align 4
  store i32 %27, i32* %7, align 4
  %28 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %29 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.udav_softc*, %struct.udav_softc** %5, align 8
  %32 = getelementptr inbounds %struct.udav_softc, %struct.udav_softc* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @udav_config, align 4
  %35 = load i32, i32* @UDAV_N_TRANSFER, align 4
  %36 = load %struct.udav_softc*, %struct.udav_softc** %5, align 8
  %37 = load %struct.udav_softc*, %struct.udav_softc** %5, align 8
  %38 = getelementptr inbounds %struct.udav_softc, %struct.udav_softc* %37, i32 0, i32 1
  %39 = call i32 @usbd_transfer_setup(i32 %30, i32* %7, i32 %33, i32 %34, i32 %35, %struct.udav_softc* %36, i32* %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %1
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @device_printf(i32 %43, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %87

45:                                               ; preds = %1
  %46 = load %struct.udav_softc*, %struct.udav_softc** %5, align 8
  %47 = getelementptr inbounds %struct.udav_softc, %struct.udav_softc* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @UDAV_FLAG_NO_PHY, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %45
  %53 = load %struct.usb_ether*, %struct.usb_ether** %6, align 8
  %54 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %53, i32 0, i32 4
  store i32* @udav_ue_methods_nophy, i32** %54, align 8
  %55 = load i32, i32* @UDAV_FLAG_LINK, align 4
  %56 = load %struct.udav_softc*, %struct.udav_softc** %5, align 8
  %57 = getelementptr inbounds %struct.udav_softc, %struct.udav_softc* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 8
  br label %63

60:                                               ; preds = %45
  %61 = load %struct.usb_ether*, %struct.usb_ether** %6, align 8
  %62 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %61, i32 0, i32 4
  store i32* @udav_ue_methods, i32** %62, align 8
  br label %63

63:                                               ; preds = %60, %52
  %64 = load %struct.udav_softc*, %struct.udav_softc** %5, align 8
  %65 = load %struct.usb_ether*, %struct.usb_ether** %6, align 8
  %66 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %65, i32 0, i32 3
  store %struct.udav_softc* %64, %struct.udav_softc** %66, align 8
  %67 = load i32, i32* %3, align 4
  %68 = load %struct.usb_ether*, %struct.usb_ether** %6, align 8
  %69 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 4
  %70 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %71 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.usb_ether*, %struct.usb_ether** %6, align 8
  %74 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 8
  %75 = load %struct.udav_softc*, %struct.udav_softc** %5, align 8
  %76 = getelementptr inbounds %struct.udav_softc, %struct.udav_softc* %75, i32 0, i32 1
  %77 = load %struct.usb_ether*, %struct.usb_ether** %6, align 8
  %78 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %77, i32 0, i32 0
  store i32* %76, i32** %78, align 8
  %79 = load %struct.usb_ether*, %struct.usb_ether** %6, align 8
  %80 = call i32 @uether_ifattach(%struct.usb_ether* %79)
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %8, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %63
  %84 = load i32, i32* %3, align 4
  %85 = call i32 @device_printf(i32 %84, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %87

86:                                               ; preds = %63
  store i32 0, i32* %2, align 4
  br label %91

87:                                               ; preds = %83, %42
  %88 = load i32, i32* %3, align 4
  %89 = call i32 @udav_detach(i32 %88)
  %90 = load i32, i32* @ENXIO, align 4
  store i32 %90, i32* %2, align 4
  br label %91

91:                                               ; preds = %87, %86
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local %struct.usb_attach_arg* @device_get_ivars(i32) #1

declare dso_local %struct.udav_softc* @device_get_softc(i32) #1

declare dso_local i32 @USB_GET_DRIVER_INFO(%struct.usb_attach_arg*) #1

declare dso_local i32 @device_set_usb_desc(i32) #1

declare dso_local i32 @mtx_init(i32*, i32, i32*, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @usbd_transfer_setup(i32, i32*, i32, i32, i32, %struct.udav_softc*, i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @uether_ifattach(%struct.usb_ether*) #1

declare dso_local i32 @udav_detach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
