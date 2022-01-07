; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_kue.c_kue_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_kue.c_kue_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_attach_arg = type { i32 }
%struct.kue_softc = type { i32, i32*, i32, %struct.usb_ether }
%struct.usb_ether = type { i32*, i32*, i32, i32, %struct.kue_softc* }

@MTX_DEF = common dso_local global i32 0, align 4
@KUE_IFACE_IDX = common dso_local global i32 0, align 4
@kue_config = common dso_local global i32 0, align 4
@KUE_N_TRANSFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"allocating USB transfers failed\0A\00", align 1
@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@M_USBDEV = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"failed allocating USB memory\0A\00", align 1
@kue_ue_methods = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"could not attach interface\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @kue_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kue_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_attach_arg*, align 8
  %5 = alloca %struct.kue_softc*, align 8
  %6 = alloca %struct.usb_ether*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.usb_attach_arg* @device_get_ivars(i32 %9)
  store %struct.usb_attach_arg* %10, %struct.usb_attach_arg** %4, align 8
  %11 = load i32, i32* %3, align 4
  %12 = call %struct.kue_softc* @device_get_softc(i32 %11)
  store %struct.kue_softc* %12, %struct.kue_softc** %5, align 8
  %13 = load %struct.kue_softc*, %struct.kue_softc** %5, align 8
  %14 = getelementptr inbounds %struct.kue_softc, %struct.kue_softc* %13, i32 0, i32 3
  store %struct.usb_ether* %14, %struct.usb_ether** %6, align 8
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @device_set_usb_desc(i32 %15)
  %17 = load %struct.kue_softc*, %struct.kue_softc** %5, align 8
  %18 = getelementptr inbounds %struct.kue_softc, %struct.kue_softc* %17, i32 0, i32 0
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @device_get_nameunit(i32 %19)
  %21 = load i32, i32* @MTX_DEF, align 4
  %22 = call i32 @mtx_init(i32* %18, i32 %20, i32* null, i32 %21)
  %23 = load i32, i32* @KUE_IFACE_IDX, align 4
  store i32 %23, i32* %7, align 4
  %24 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %25 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.kue_softc*, %struct.kue_softc** %5, align 8
  %28 = getelementptr inbounds %struct.kue_softc, %struct.kue_softc* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @kue_config, align 4
  %31 = load i32, i32* @KUE_N_TRANSFER, align 4
  %32 = load %struct.kue_softc*, %struct.kue_softc** %5, align 8
  %33 = load %struct.kue_softc*, %struct.kue_softc** %5, align 8
  %34 = getelementptr inbounds %struct.kue_softc, %struct.kue_softc* %33, i32 0, i32 0
  %35 = call i32 @usbd_transfer_setup(i32 %26, i32* %7, i32 %29, i32 %30, i32 %31, %struct.kue_softc* %32, i32* %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %1
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @device_printf(i32 %39, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %84

41:                                               ; preds = %1
  %42 = load %struct.kue_softc*, %struct.kue_softc** %5, align 8
  %43 = call i32 @KUE_MCFILTCNT(%struct.kue_softc* %42)
  %44 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %45 = mul nsw i32 %43, %44
  %46 = load i32, i32* @M_USBDEV, align 4
  %47 = load i32, i32* @M_WAITOK, align 4
  %48 = call i32* @malloc(i32 %45, i32 %46, i32 %47)
  %49 = load %struct.kue_softc*, %struct.kue_softc** %5, align 8
  %50 = getelementptr inbounds %struct.kue_softc, %struct.kue_softc* %49, i32 0, i32 1
  store i32* %48, i32** %50, align 8
  %51 = load %struct.kue_softc*, %struct.kue_softc** %5, align 8
  %52 = getelementptr inbounds %struct.kue_softc, %struct.kue_softc* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = icmp eq i32* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %41
  %56 = load i32, i32* %3, align 4
  %57 = call i32 @device_printf(i32 %56, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %84

58:                                               ; preds = %41
  %59 = load %struct.kue_softc*, %struct.kue_softc** %5, align 8
  %60 = load %struct.usb_ether*, %struct.usb_ether** %6, align 8
  %61 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %60, i32 0, i32 4
  store %struct.kue_softc* %59, %struct.kue_softc** %61, align 8
  %62 = load i32, i32* %3, align 4
  %63 = load %struct.usb_ether*, %struct.usb_ether** %6, align 8
  %64 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %63, i32 0, i32 3
  store i32 %62, i32* %64, align 4
  %65 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %66 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.usb_ether*, %struct.usb_ether** %6, align 8
  %69 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 8
  %70 = load %struct.kue_softc*, %struct.kue_softc** %5, align 8
  %71 = getelementptr inbounds %struct.kue_softc, %struct.kue_softc* %70, i32 0, i32 0
  %72 = load %struct.usb_ether*, %struct.usb_ether** %6, align 8
  %73 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %72, i32 0, i32 1
  store i32* %71, i32** %73, align 8
  %74 = load %struct.usb_ether*, %struct.usb_ether** %6, align 8
  %75 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %74, i32 0, i32 0
  store i32* @kue_ue_methods, i32** %75, align 8
  %76 = load %struct.usb_ether*, %struct.usb_ether** %6, align 8
  %77 = call i32 @uether_ifattach(%struct.usb_ether* %76)
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* %8, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %58
  %81 = load i32, i32* %3, align 4
  %82 = call i32 @device_printf(i32 %81, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %84

83:                                               ; preds = %58
  store i32 0, i32* %2, align 4
  br label %88

84:                                               ; preds = %80, %55, %38
  %85 = load i32, i32* %3, align 4
  %86 = call i32 @kue_detach(i32 %85)
  %87 = load i32, i32* @ENXIO, align 4
  store i32 %87, i32* %2, align 4
  br label %88

88:                                               ; preds = %84, %83
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local %struct.usb_attach_arg* @device_get_ivars(i32) #1

declare dso_local %struct.kue_softc* @device_get_softc(i32) #1

declare dso_local i32 @device_set_usb_desc(i32) #1

declare dso_local i32 @mtx_init(i32*, i32, i32*, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @usbd_transfer_setup(i32, i32*, i32, i32, i32, %struct.kue_softc*, i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32* @malloc(i32, i32, i32) #1

declare dso_local i32 @KUE_MCFILTCNT(%struct.kue_softc*) #1

declare dso_local i32 @uether_ifattach(%struct.usb_ether*) #1

declare dso_local i32 @kue_detach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
