; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_cue.c_cue_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_cue.c_cue_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_attach_arg = type { i32 }
%struct.cue_softc = type { i32, i32, %struct.usb_ether }
%struct.usb_ether = type { i32*, i32*, i32, i32, %struct.cue_softc* }

@MTX_DEF = common dso_local global i32 0, align 4
@CUE_IFACE_IDX = common dso_local global i32 0, align 4
@cue_config = common dso_local global i32 0, align 4
@CUE_N_TRANSFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"allocating USB transfers failed\0A\00", align 1
@cue_ue_methods = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"could not attach interface\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @cue_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cue_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_attach_arg*, align 8
  %5 = alloca %struct.cue_softc*, align 8
  %6 = alloca %struct.usb_ether*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.usb_attach_arg* @device_get_ivars(i32 %9)
  store %struct.usb_attach_arg* %10, %struct.usb_attach_arg** %4, align 8
  %11 = load i32, i32* %3, align 4
  %12 = call %struct.cue_softc* @device_get_softc(i32 %11)
  store %struct.cue_softc* %12, %struct.cue_softc** %5, align 8
  %13 = load %struct.cue_softc*, %struct.cue_softc** %5, align 8
  %14 = getelementptr inbounds %struct.cue_softc, %struct.cue_softc* %13, i32 0, i32 2
  store %struct.usb_ether* %14, %struct.usb_ether** %6, align 8
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @device_set_usb_desc(i32 %15)
  %17 = load %struct.cue_softc*, %struct.cue_softc** %5, align 8
  %18 = getelementptr inbounds %struct.cue_softc, %struct.cue_softc* %17, i32 0, i32 0
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @device_get_nameunit(i32 %19)
  %21 = load i32, i32* @MTX_DEF, align 4
  %22 = call i32 @mtx_init(i32* %18, i32 %20, i32* null, i32 %21)
  %23 = load i32, i32* @CUE_IFACE_IDX, align 4
  store i32 %23, i32* %7, align 4
  %24 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %25 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.cue_softc*, %struct.cue_softc** %5, align 8
  %28 = getelementptr inbounds %struct.cue_softc, %struct.cue_softc* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @cue_config, align 4
  %31 = load i32, i32* @CUE_N_TRANSFER, align 4
  %32 = load %struct.cue_softc*, %struct.cue_softc** %5, align 8
  %33 = load %struct.cue_softc*, %struct.cue_softc** %5, align 8
  %34 = getelementptr inbounds %struct.cue_softc, %struct.cue_softc* %33, i32 0, i32 0
  %35 = call i32 @usbd_transfer_setup(i32 %26, i32* %7, i32 %29, i32 %30, i32 %31, %struct.cue_softc* %32, i32* %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %1
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @device_printf(i32 %39, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %67

41:                                               ; preds = %1
  %42 = load %struct.cue_softc*, %struct.cue_softc** %5, align 8
  %43 = load %struct.usb_ether*, %struct.usb_ether** %6, align 8
  %44 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %43, i32 0, i32 4
  store %struct.cue_softc* %42, %struct.cue_softc** %44, align 8
  %45 = load i32, i32* %3, align 4
  %46 = load %struct.usb_ether*, %struct.usb_ether** %6, align 8
  %47 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 4
  %48 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %49 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.usb_ether*, %struct.usb_ether** %6, align 8
  %52 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 8
  %53 = load %struct.cue_softc*, %struct.cue_softc** %5, align 8
  %54 = getelementptr inbounds %struct.cue_softc, %struct.cue_softc* %53, i32 0, i32 0
  %55 = load %struct.usb_ether*, %struct.usb_ether** %6, align 8
  %56 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %55, i32 0, i32 1
  store i32* %54, i32** %56, align 8
  %57 = load %struct.usb_ether*, %struct.usb_ether** %6, align 8
  %58 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %57, i32 0, i32 0
  store i32* @cue_ue_methods, i32** %58, align 8
  %59 = load %struct.usb_ether*, %struct.usb_ether** %6, align 8
  %60 = call i32 @uether_ifattach(%struct.usb_ether* %59)
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %41
  %64 = load i32, i32* %3, align 4
  %65 = call i32 @device_printf(i32 %64, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %67

66:                                               ; preds = %41
  store i32 0, i32* %2, align 4
  br label %71

67:                                               ; preds = %63, %38
  %68 = load i32, i32* %3, align 4
  %69 = call i32 @cue_detach(i32 %68)
  %70 = load i32, i32* @ENXIO, align 4
  store i32 %70, i32* %2, align 4
  br label %71

71:                                               ; preds = %67, %66
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local %struct.usb_attach_arg* @device_get_ivars(i32) #1

declare dso_local %struct.cue_softc* @device_get_softc(i32) #1

declare dso_local i32 @device_set_usb_desc(i32) #1

declare dso_local i32 @mtx_init(i32*, i32, i32*, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @usbd_transfer_setup(i32, i32*, i32, i32, i32, %struct.cue_softc*, i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @uether_ifattach(%struct.usb_ether*) #1

declare dso_local i32 @cue_detach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
