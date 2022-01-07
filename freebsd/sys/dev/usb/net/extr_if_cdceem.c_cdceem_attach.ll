; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_cdceem.c_cdceem_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_cdceem.c_cdceem_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdceem_softc = type { i32, i32, %struct.usb_ether }
%struct.usb_ether = type { i32*, i32*, i32*, i32, i32, %struct.cdceem_softc* }
%struct.usb_attach_arg = type { i32 }

@MTX_DEF = common dso_local global i32 0, align 4
@cdceem_config = common dso_local global i32 0, align 4
@CDCEEM_N_TRANSFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"allocating USB transfers failed, error %d\00", align 1
@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@cdceem_ue_methods = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"could not attach interface, error %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @cdceem_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdceem_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.cdceem_softc*, align 8
  %5 = alloca %struct.usb_ether*, align 8
  %6 = alloca %struct.usb_attach_arg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.cdceem_softc* @device_get_softc(i32 %9)
  store %struct.cdceem_softc* %10, %struct.cdceem_softc** %4, align 8
  %11 = load %struct.cdceem_softc*, %struct.cdceem_softc** %4, align 8
  %12 = getelementptr inbounds %struct.cdceem_softc, %struct.cdceem_softc* %11, i32 0, i32 2
  store %struct.usb_ether* %12, %struct.usb_ether** %5, align 8
  %13 = load i32, i32* %3, align 4
  %14 = call %struct.usb_attach_arg* @device_get_ivars(i32 %13)
  store %struct.usb_attach_arg* %14, %struct.usb_attach_arg** %6, align 8
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @device_set_usb_desc(i32 %15)
  %17 = load %struct.cdceem_softc*, %struct.cdceem_softc** %4, align 8
  %18 = getelementptr inbounds %struct.cdceem_softc, %struct.cdceem_softc* %17, i32 0, i32 0
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @device_get_nameunit(i32 %19)
  %21 = load i32, i32* @MTX_DEF, align 4
  %22 = call i32 @mtx_init(i32* %18, i32 %20, i32* null, i32 %21)
  store i64 0, i64* %8, align 8
  %23 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %6, align 8
  %24 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.cdceem_softc*, %struct.cdceem_softc** %4, align 8
  %27 = getelementptr inbounds %struct.cdceem_softc, %struct.cdceem_softc* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @cdceem_config, align 4
  %30 = load i32, i32* @CDCEEM_N_TRANSFER, align 4
  %31 = load %struct.cdceem_softc*, %struct.cdceem_softc** %4, align 8
  %32 = load %struct.cdceem_softc*, %struct.cdceem_softc** %4, align 8
  %33 = getelementptr inbounds %struct.cdceem_softc, %struct.cdceem_softc* %32, i32 0, i32 0
  %34 = call i32 @usbd_transfer_setup(i32 %25, i64* %8, i32 %28, i32 %29, i32 %30, %struct.cdceem_softc* %31, i32* %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %1
  %38 = load %struct.cdceem_softc*, %struct.cdceem_softc** %4, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @CDCEEM_WARN(%struct.cdceem_softc* %38, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load %struct.cdceem_softc*, %struct.cdceem_softc** %4, align 8
  %42 = getelementptr inbounds %struct.cdceem_softc, %struct.cdceem_softc* %41, i32 0, i32 0
  %43 = call i32 @mtx_destroy(i32* %42)
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* %2, align 4
  br label %98

45:                                               ; preds = %1
  %46 = load %struct.usb_ether*, %struct.usb_ether** %5, align 8
  %47 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %50 = call i32 @arc4rand(i32* %48, i32 %49, i32 0)
  %51 = load %struct.usb_ether*, %struct.usb_ether** %5, align 8
  %52 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, -2
  store i32 %56, i32* %54, align 4
  %57 = load %struct.usb_ether*, %struct.usb_ether** %5, align 8
  %58 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, 2
  store i32 %62, i32* %60, align 4
  %63 = load %struct.cdceem_softc*, %struct.cdceem_softc** %4, align 8
  %64 = load %struct.usb_ether*, %struct.usb_ether** %5, align 8
  %65 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %64, i32 0, i32 5
  store %struct.cdceem_softc* %63, %struct.cdceem_softc** %65, align 8
  %66 = load i32, i32* %3, align 4
  %67 = load %struct.usb_ether*, %struct.usb_ether** %5, align 8
  %68 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %67, i32 0, i32 4
  store i32 %66, i32* %68, align 4
  %69 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %6, align 8
  %70 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.usb_ether*, %struct.usb_ether** %5, align 8
  %73 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %72, i32 0, i32 3
  store i32 %71, i32* %73, align 8
  %74 = load %struct.cdceem_softc*, %struct.cdceem_softc** %4, align 8
  %75 = getelementptr inbounds %struct.cdceem_softc, %struct.cdceem_softc* %74, i32 0, i32 0
  %76 = load %struct.usb_ether*, %struct.usb_ether** %5, align 8
  %77 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %76, i32 0, i32 2
  store i32* %75, i32** %77, align 8
  %78 = load %struct.usb_ether*, %struct.usb_ether** %5, align 8
  %79 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %78, i32 0, i32 1
  store i32* @cdceem_ue_methods, i32** %79, align 8
  %80 = load %struct.usb_ether*, %struct.usb_ether** %5, align 8
  %81 = call i32 @uether_ifattach(%struct.usb_ether* %80)
  store i32 %81, i32* %7, align 4
  %82 = load i32, i32* %7, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %97

84:                                               ; preds = %45
  %85 = load %struct.cdceem_softc*, %struct.cdceem_softc** %4, align 8
  %86 = load i32, i32* %7, align 4
  %87 = call i32 @CDCEEM_WARN(%struct.cdceem_softc* %85, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %86)
  %88 = load %struct.cdceem_softc*, %struct.cdceem_softc** %4, align 8
  %89 = getelementptr inbounds %struct.cdceem_softc, %struct.cdceem_softc* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @CDCEEM_N_TRANSFER, align 4
  %92 = call i32 @usbd_transfer_unsetup(i32 %90, i32 %91)
  %93 = load %struct.cdceem_softc*, %struct.cdceem_softc** %4, align 8
  %94 = getelementptr inbounds %struct.cdceem_softc, %struct.cdceem_softc* %93, i32 0, i32 0
  %95 = call i32 @mtx_destroy(i32* %94)
  %96 = load i32, i32* %7, align 4
  store i32 %96, i32* %2, align 4
  br label %98

97:                                               ; preds = %45
  store i32 0, i32* %2, align 4
  br label %98

98:                                               ; preds = %97, %84, %37
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local %struct.cdceem_softc* @device_get_softc(i32) #1

declare dso_local %struct.usb_attach_arg* @device_get_ivars(i32) #1

declare dso_local i32 @device_set_usb_desc(i32) #1

declare dso_local i32 @mtx_init(i32*, i32, i32*, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @usbd_transfer_setup(i32, i64*, i32, i32, i32, %struct.cdceem_softc*, i32*) #1

declare dso_local i32 @CDCEEM_WARN(%struct.cdceem_softc*, i8*, i32) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @arc4rand(i32*, i32, i32) #1

declare dso_local i32 @uether_ifattach(%struct.usb_ether*) #1

declare dso_local i32 @usbd_transfer_unsetup(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
