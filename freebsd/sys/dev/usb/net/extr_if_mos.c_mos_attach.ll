; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_mos.c_mos_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_mos.c_mos_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_attach_arg = type { i32 }
%struct.mos_softc = type { i32, i32, i32, %struct.usb_ether }
%struct.usb_ether = type { i32*, i32*, i32, i32, %struct.mos_softc* }

@MTX_DEF = common dso_local global i32 0, align 4
@MOS_IFACE_IDX = common dso_local global i32 0, align 4
@mos_config = common dso_local global i32 0, align 4
@MOS_ENDPT_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"allocating USB transfers failed\0A\00", align 1
@mos_ue_methods = common dso_local global i32 0, align 4
@MCS7730 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"model: MCS7730\00", align 1
@MCS7830 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"model: MCS7830\00", align 1
@MCS7832 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"model: MCS7832\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"could not attach interface\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mos_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mos_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_attach_arg*, align 8
  %5 = alloca %struct.mos_softc*, align 8
  %6 = alloca %struct.usb_ether*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.usb_attach_arg* @device_get_ivars(i32 %9)
  store %struct.usb_attach_arg* %10, %struct.usb_attach_arg** %4, align 8
  %11 = load i32, i32* %3, align 4
  %12 = call %struct.mos_softc* @device_get_softc(i32 %11)
  store %struct.mos_softc* %12, %struct.mos_softc** %5, align 8
  %13 = load %struct.mos_softc*, %struct.mos_softc** %5, align 8
  %14 = getelementptr inbounds %struct.mos_softc, %struct.mos_softc* %13, i32 0, i32 3
  store %struct.usb_ether* %14, %struct.usb_ether** %6, align 8
  %15 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %16 = call i32 @USB_GET_DRIVER_INFO(%struct.usb_attach_arg* %15)
  %17 = load %struct.mos_softc*, %struct.mos_softc** %5, align 8
  %18 = getelementptr inbounds %struct.mos_softc, %struct.mos_softc* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @device_set_usb_desc(i32 %19)
  %21 = load %struct.mos_softc*, %struct.mos_softc** %5, align 8
  %22 = getelementptr inbounds %struct.mos_softc, %struct.mos_softc* %21, i32 0, i32 1
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @device_get_nameunit(i32 %23)
  %25 = load i32, i32* @MTX_DEF, align 4
  %26 = call i32 @mtx_init(i32* %22, i32 %24, i32* null, i32 %25)
  %27 = load i32, i32* @MOS_IFACE_IDX, align 4
  store i32 %27, i32* %7, align 4
  %28 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %29 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.mos_softc*, %struct.mos_softc** %5, align 8
  %32 = getelementptr inbounds %struct.mos_softc, %struct.mos_softc* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @mos_config, align 4
  %35 = load i32, i32* @MOS_ENDPT_MAX, align 4
  %36 = load %struct.mos_softc*, %struct.mos_softc** %5, align 8
  %37 = load %struct.mos_softc*, %struct.mos_softc** %5, align 8
  %38 = getelementptr inbounds %struct.mos_softc, %struct.mos_softc* %37, i32 0, i32 1
  %39 = call i32 @usbd_transfer_setup(i32 %30, i32* %7, i32 %33, i32 %34, i32 %35, %struct.mos_softc* %36, i32* %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %1
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @device_printf(i32 %43, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %100

45:                                               ; preds = %1
  %46 = load %struct.mos_softc*, %struct.mos_softc** %5, align 8
  %47 = load %struct.usb_ether*, %struct.usb_ether** %6, align 8
  %48 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %47, i32 0, i32 4
  store %struct.mos_softc* %46, %struct.mos_softc** %48, align 8
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
  %57 = load %struct.mos_softc*, %struct.mos_softc** %5, align 8
  %58 = getelementptr inbounds %struct.mos_softc, %struct.mos_softc* %57, i32 0, i32 1
  %59 = load %struct.usb_ether*, %struct.usb_ether** %6, align 8
  %60 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %59, i32 0, i32 1
  store i32* %58, i32** %60, align 8
  %61 = load %struct.usb_ether*, %struct.usb_ether** %6, align 8
  %62 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %61, i32 0, i32 0
  store i32* @mos_ue_methods, i32** %62, align 8
  %63 = load %struct.mos_softc*, %struct.mos_softc** %5, align 8
  %64 = getelementptr inbounds %struct.mos_softc, %struct.mos_softc* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @MCS7730, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %45
  %70 = call i32 @MOS_DPRINTFN(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %91

71:                                               ; preds = %45
  %72 = load %struct.mos_softc*, %struct.mos_softc** %5, align 8
  %73 = getelementptr inbounds %struct.mos_softc, %struct.mos_softc* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @MCS7830, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %71
  %79 = call i32 @MOS_DPRINTFN(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  br label %90

80:                                               ; preds = %71
  %81 = load %struct.mos_softc*, %struct.mos_softc** %5, align 8
  %82 = getelementptr inbounds %struct.mos_softc, %struct.mos_softc* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @MCS7832, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %80
  %88 = call i32 @MOS_DPRINTFN(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  br label %89

89:                                               ; preds = %87, %80
  br label %90

90:                                               ; preds = %89, %78
  br label %91

91:                                               ; preds = %90, %69
  %92 = load %struct.usb_ether*, %struct.usb_ether** %6, align 8
  %93 = call i32 @uether_ifattach(%struct.usb_ether* %92)
  store i32 %93, i32* %8, align 4
  %94 = load i32, i32* %8, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %91
  %97 = load i32, i32* %3, align 4
  %98 = call i32 @device_printf(i32 %97, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  br label %100

99:                                               ; preds = %91
  store i32 0, i32* %2, align 4
  br label %104

100:                                              ; preds = %96, %42
  %101 = load i32, i32* %3, align 4
  %102 = call i32 @mos_detach(i32 %101)
  %103 = load i32, i32* @ENXIO, align 4
  store i32 %103, i32* %2, align 4
  br label %104

104:                                              ; preds = %100, %99
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

declare dso_local %struct.usb_attach_arg* @device_get_ivars(i32) #1

declare dso_local %struct.mos_softc* @device_get_softc(i32) #1

declare dso_local i32 @USB_GET_DRIVER_INFO(%struct.usb_attach_arg*) #1

declare dso_local i32 @device_set_usb_desc(i32) #1

declare dso_local i32 @mtx_init(i32*, i32, i32*, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @usbd_transfer_setup(i32, i32*, i32, i32, i32, %struct.mos_softc*, i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @MOS_DPRINTFN(i8*) #1

declare dso_local i32 @uether_ifattach(%struct.usb_ether*) #1

declare dso_local i32 @mos_detach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
