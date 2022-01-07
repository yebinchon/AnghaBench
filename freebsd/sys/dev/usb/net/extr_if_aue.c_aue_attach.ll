; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_aue.c_aue_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_aue.c_aue_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_attach_arg = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.aue_softc = type { i32, i32, i32, %struct.usb_ether }
%struct.usb_ether = type { i32*, i32*, i32, i32, %struct.aue_softc* }

@AUE_FLAG_VER_2 = common dso_local global i32 0, align 4
@MTX_DEF = common dso_local global i32 0, align 4
@AUE_IFACE_IDX = common dso_local global i32 0, align 4
@aue_config = common dso_local global i32 0, align 4
@AUE_N_TRANSFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"allocating USB transfers failed\0A\00", align 1
@aue_ue_methods = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"could not attach interface\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @aue_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aue_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_attach_arg*, align 8
  %5 = alloca %struct.aue_softc*, align 8
  %6 = alloca %struct.usb_ether*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.usb_attach_arg* @device_get_ivars(i32 %9)
  store %struct.usb_attach_arg* %10, %struct.usb_attach_arg** %4, align 8
  %11 = load i32, i32* %3, align 4
  %12 = call %struct.aue_softc* @device_get_softc(i32 %11)
  store %struct.aue_softc* %12, %struct.aue_softc** %5, align 8
  %13 = load %struct.aue_softc*, %struct.aue_softc** %5, align 8
  %14 = getelementptr inbounds %struct.aue_softc, %struct.aue_softc* %13, i32 0, i32 3
  store %struct.usb_ether* %14, %struct.usb_ether** %6, align 8
  %15 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %16 = call i32 @USB_GET_DRIVER_INFO(%struct.usb_attach_arg* %15)
  %17 = load %struct.aue_softc*, %struct.aue_softc** %5, align 8
  %18 = getelementptr inbounds %struct.aue_softc, %struct.aue_softc* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 8
  %19 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %20 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp sge i32 %22, 513
  br i1 %23, label %24, label %30

24:                                               ; preds = %1
  %25 = load i32, i32* @AUE_FLAG_VER_2, align 4
  %26 = load %struct.aue_softc*, %struct.aue_softc** %5, align 8
  %27 = getelementptr inbounds %struct.aue_softc, %struct.aue_softc* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 8
  br label %30

30:                                               ; preds = %24, %1
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @device_set_usb_desc(i32 %31)
  %33 = load %struct.aue_softc*, %struct.aue_softc** %5, align 8
  %34 = getelementptr inbounds %struct.aue_softc, %struct.aue_softc* %33, i32 0, i32 0
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @device_get_nameunit(i32 %35)
  %37 = load i32, i32* @MTX_DEF, align 4
  %38 = call i32 @mtx_init(i32* %34, i32 %36, i32* null, i32 %37)
  %39 = load i32, i32* @AUE_IFACE_IDX, align 4
  store i32 %39, i32* %7, align 4
  %40 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %41 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.aue_softc*, %struct.aue_softc** %5, align 8
  %44 = getelementptr inbounds %struct.aue_softc, %struct.aue_softc* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @aue_config, align 4
  %47 = load i32, i32* @AUE_N_TRANSFER, align 4
  %48 = load %struct.aue_softc*, %struct.aue_softc** %5, align 8
  %49 = load %struct.aue_softc*, %struct.aue_softc** %5, align 8
  %50 = getelementptr inbounds %struct.aue_softc, %struct.aue_softc* %49, i32 0, i32 0
  %51 = call i32 @usbd_transfer_setup(i32 %42, i32* %7, i32 %45, i32 %46, i32 %47, %struct.aue_softc* %48, i32* %50)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %30
  %55 = load i32, i32* %3, align 4
  %56 = call i32 @device_printf(i32 %55, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %83

57:                                               ; preds = %30
  %58 = load %struct.aue_softc*, %struct.aue_softc** %5, align 8
  %59 = load %struct.usb_ether*, %struct.usb_ether** %6, align 8
  %60 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %59, i32 0, i32 4
  store %struct.aue_softc* %58, %struct.aue_softc** %60, align 8
  %61 = load i32, i32* %3, align 4
  %62 = load %struct.usb_ether*, %struct.usb_ether** %6, align 8
  %63 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %62, i32 0, i32 3
  store i32 %61, i32* %63, align 4
  %64 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %65 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.usb_ether*, %struct.usb_ether** %6, align 8
  %68 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 8
  %69 = load %struct.aue_softc*, %struct.aue_softc** %5, align 8
  %70 = getelementptr inbounds %struct.aue_softc, %struct.aue_softc* %69, i32 0, i32 0
  %71 = load %struct.usb_ether*, %struct.usb_ether** %6, align 8
  %72 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %71, i32 0, i32 1
  store i32* %70, i32** %72, align 8
  %73 = load %struct.usb_ether*, %struct.usb_ether** %6, align 8
  %74 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %73, i32 0, i32 0
  store i32* @aue_ue_methods, i32** %74, align 8
  %75 = load %struct.usb_ether*, %struct.usb_ether** %6, align 8
  %76 = call i32 @uether_ifattach(%struct.usb_ether* %75)
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* %8, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %57
  %80 = load i32, i32* %3, align 4
  %81 = call i32 @device_printf(i32 %80, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %83

82:                                               ; preds = %57
  store i32 0, i32* %2, align 4
  br label %87

83:                                               ; preds = %79, %54
  %84 = load i32, i32* %3, align 4
  %85 = call i32 @aue_detach(i32 %84)
  %86 = load i32, i32* @ENXIO, align 4
  store i32 %86, i32* %2, align 4
  br label %87

87:                                               ; preds = %83, %82
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local %struct.usb_attach_arg* @device_get_ivars(i32) #1

declare dso_local %struct.aue_softc* @device_get_softc(i32) #1

declare dso_local i32 @USB_GET_DRIVER_INFO(%struct.usb_attach_arg*) #1

declare dso_local i32 @device_set_usb_desc(i32) #1

declare dso_local i32 @mtx_init(i32*, i32, i32*, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @usbd_transfer_setup(i32, i32*, i32, i32, i32, %struct.aue_softc*, i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @uether_ifattach(%struct.usb_ether*) #1

declare dso_local i32 @aue_detach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
