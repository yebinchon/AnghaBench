; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_ipheth.c_ipheth_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_ipheth.c_ipheth_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipheth_softc = type { i32, i32, i32, %struct.usb_ether }
%struct.usb_ether = type { i32*, i32*, i32, i32, %struct.ipheth_softc* }
%struct.usb_attach_arg = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@MTX_DEF = common dso_local global i32 0, align 4
@IPHETH_ALT_INTFNUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Cannot set alternate setting\0A\00", align 1
@ipheth_config = common dso_local global i32 0, align 4
@IPHETH_N_TRANSFER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Cannot setup USB transfers\0A\00", align 1
@ipheth_ue_methods = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Cannot get MAC address\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"could not attach interface\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ipheth_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipheth_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ipheth_softc*, align 8
  %5 = alloca %struct.usb_ether*, align 8
  %6 = alloca %struct.usb_attach_arg*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.ipheth_softc* @device_get_softc(i32 %8)
  store %struct.ipheth_softc* %9, %struct.ipheth_softc** %4, align 8
  %10 = load %struct.ipheth_softc*, %struct.ipheth_softc** %4, align 8
  %11 = getelementptr inbounds %struct.ipheth_softc, %struct.ipheth_softc* %10, i32 0, i32 3
  store %struct.usb_ether* %11, %struct.usb_ether** %5, align 8
  %12 = load i32, i32* %3, align 4
  %13 = call %struct.usb_attach_arg* @device_get_ivars(i32 %12)
  store %struct.usb_attach_arg* %13, %struct.usb_attach_arg** %6, align 8
  %14 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %6, align 8
  %15 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.ipheth_softc*, %struct.ipheth_softc** %4, align 8
  %19 = getelementptr inbounds %struct.ipheth_softc, %struct.ipheth_softc* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 8
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @device_set_usb_desc(i32 %20)
  %22 = load %struct.ipheth_softc*, %struct.ipheth_softc** %4, align 8
  %23 = getelementptr inbounds %struct.ipheth_softc, %struct.ipheth_softc* %22, i32 0, i32 0
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @device_get_nameunit(i32 %24)
  %26 = load i32, i32* @MTX_DEF, align 4
  %27 = call i32 @mtx_init(i32* %23, i32 %25, i32* null, i32 %26)
  %28 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %6, align 8
  %29 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %6, align 8
  %32 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @IPHETH_ALT_INTFNUM, align 4
  %36 = call i32 @usbd_set_alt_interface_index(i32 %30, i32 %34, i32 %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %1
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @device_printf(i32 %40, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %96

42:                                               ; preds = %1
  %43 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %6, align 8
  %44 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.ipheth_softc*, %struct.ipheth_softc** %4, align 8
  %47 = getelementptr inbounds %struct.ipheth_softc, %struct.ipheth_softc* %46, i32 0, i32 2
  %48 = load %struct.ipheth_softc*, %struct.ipheth_softc** %4, align 8
  %49 = getelementptr inbounds %struct.ipheth_softc, %struct.ipheth_softc* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @ipheth_config, align 4
  %52 = load i32, i32* @IPHETH_N_TRANSFER, align 4
  %53 = load %struct.ipheth_softc*, %struct.ipheth_softc** %4, align 8
  %54 = load %struct.ipheth_softc*, %struct.ipheth_softc** %4, align 8
  %55 = getelementptr inbounds %struct.ipheth_softc, %struct.ipheth_softc* %54, i32 0, i32 0
  %56 = call i32 @usbd_transfer_setup(i32 %45, i32* %47, i32 %50, i32 %51, i32 %52, %struct.ipheth_softc* %53, i32* %55)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %42
  %60 = load i32, i32* %3, align 4
  %61 = call i32 @device_printf(i32 %60, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %96

62:                                               ; preds = %42
  %63 = load %struct.ipheth_softc*, %struct.ipheth_softc** %4, align 8
  %64 = load %struct.usb_ether*, %struct.usb_ether** %5, align 8
  %65 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %64, i32 0, i32 4
  store %struct.ipheth_softc* %63, %struct.ipheth_softc** %65, align 8
  %66 = load i32, i32* %3, align 4
  %67 = load %struct.usb_ether*, %struct.usb_ether** %5, align 8
  %68 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %67, i32 0, i32 3
  store i32 %66, i32* %68, align 4
  %69 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %6, align 8
  %70 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.usb_ether*, %struct.usb_ether** %5, align 8
  %73 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 8
  %74 = load %struct.ipheth_softc*, %struct.ipheth_softc** %4, align 8
  %75 = getelementptr inbounds %struct.ipheth_softc, %struct.ipheth_softc* %74, i32 0, i32 0
  %76 = load %struct.usb_ether*, %struct.usb_ether** %5, align 8
  %77 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %76, i32 0, i32 1
  store i32* %75, i32** %77, align 8
  %78 = load %struct.usb_ether*, %struct.usb_ether** %5, align 8
  %79 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %78, i32 0, i32 0
  store i32* @ipheth_ue_methods, i32** %79, align 8
  %80 = load %struct.ipheth_softc*, %struct.ipheth_softc** %4, align 8
  %81 = call i32 @ipheth_get_mac_addr(%struct.ipheth_softc* %80)
  store i32 %81, i32* %7, align 4
  %82 = load i32, i32* %7, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %62
  %85 = load i32, i32* %3, align 4
  %86 = call i32 @device_printf(i32 %85, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %96

87:                                               ; preds = %62
  %88 = load %struct.usb_ether*, %struct.usb_ether** %5, align 8
  %89 = call i32 @uether_ifattach(%struct.usb_ether* %88)
  store i32 %89, i32* %7, align 4
  %90 = load i32, i32* %7, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %87
  %93 = load i32, i32* %3, align 4
  %94 = call i32 @device_printf(i32 %93, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %96

95:                                               ; preds = %87
  store i32 0, i32* %2, align 4
  br label %100

96:                                               ; preds = %92, %84, %59, %39
  %97 = load i32, i32* %3, align 4
  %98 = call i32 @ipheth_detach(i32 %97)
  %99 = load i32, i32* @ENXIO, align 4
  store i32 %99, i32* %2, align 4
  br label %100

100:                                              ; preds = %96, %95
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local %struct.ipheth_softc* @device_get_softc(i32) #1

declare dso_local %struct.usb_attach_arg* @device_get_ivars(i32) #1

declare dso_local i32 @device_set_usb_desc(i32) #1

declare dso_local i32 @mtx_init(i32*, i32, i32*, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @usbd_set_alt_interface_index(i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @usbd_transfer_setup(i32, i32*, i32, i32, i32, %struct.ipheth_softc*, i32*) #1

declare dso_local i32 @ipheth_get_mac_addr(%struct.ipheth_softc*) #1

declare dso_local i32 @uether_ifattach(%struct.usb_ether*) #1

declare dso_local i32 @ipheth_detach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
