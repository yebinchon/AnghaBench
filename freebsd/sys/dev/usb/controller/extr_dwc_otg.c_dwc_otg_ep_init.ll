; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_dwc_otg.c_dwc_otg_ep_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_dwc_otg.c_dwc_otg_ep_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i64, i64, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.usb_endpoint_descriptor = type { i32*, i32, i32 }
%struct.usb_endpoint = type { i32* }
%struct.dwc_otg_softc = type { i64 }

@.str = private unnamed_addr constant [49 x i8] c"endpoint=%p, addr=%d, endpt=%d, mode=%d (%d,%d)\0A\00", align 1
@USB_MODE_DEVICE = common dso_local global i64 0, align 8
@USB_SPEED_FULL = common dso_local global i64 0, align 8
@USB_SPEED_HIGH = common dso_local global i64 0, align 8
@UE_XFERTYPE = common dso_local global i32 0, align 4
@UE_ISOCHRONOUS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"Non-isochronous high bandwidth endpoint not supported\0A\00", align 1
@dwc_otg_device_isoc_methods = common dso_local global i32 0, align 4
@dwc_otg_device_non_isoc_methods = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_device*, %struct.usb_endpoint_descriptor*, %struct.usb_endpoint*)* @dwc_otg_ep_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc_otg_ep_init(%struct.usb_device* %0, %struct.usb_endpoint_descriptor* %1, %struct.usb_endpoint* %2) #0 {
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca %struct.usb_endpoint_descriptor*, align 8
  %6 = alloca %struct.usb_endpoint*, align 8
  %7 = alloca %struct.dwc_otg_softc*, align 8
  store %struct.usb_device* %0, %struct.usb_device** %4, align 8
  store %struct.usb_endpoint_descriptor* %1, %struct.usb_endpoint_descriptor** %5, align 8
  store %struct.usb_endpoint* %2, %struct.usb_endpoint** %6, align 8
  %8 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %9 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.dwc_otg_softc* @DWC_OTG_BUS2SC(i32 %10)
  store %struct.dwc_otg_softc* %11, %struct.dwc_otg_softc** %7, align 8
  %12 = load %struct.usb_endpoint*, %struct.usb_endpoint** %6, align 8
  %13 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %14 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %17 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %20 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %7, align 8
  %24 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %27 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 (i32, i8*, ...) @DPRINTFN(i32 2, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), %struct.usb_endpoint* %12, i32 %15, i32 %18, i64 %22, i64 %25, i64 %28)
  %30 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %31 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %7, align 8
  %34 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %32, %35
  br i1 %36, label %37, label %98

37:                                               ; preds = %3
  %38 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %39 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @USB_MODE_DEVICE, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %58

44:                                               ; preds = %37
  %45 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %46 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @USB_SPEED_FULL, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %44
  %51 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %52 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @USB_SPEED_HIGH, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  br label %98

57:                                               ; preds = %50, %44
  br label %83

58:                                               ; preds = %37
  %59 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %60 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @USB_SPEED_HIGH, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %82

64:                                               ; preds = %58
  %65 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %66 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 1
  %69 = load i32, i32* %68, align 4
  %70 = and i32 %69, 24
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %82

72:                                               ; preds = %64
  %73 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %74 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @UE_XFERTYPE, align 4
  %77 = and i32 %75, %76
  %78 = load i32, i32* @UE_ISOCHRONOUS, align 4
  %79 = icmp ne i32 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %72
  %81 = call i32 (i32, i8*, ...) @DPRINTFN(i32 -1, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  br label %98

82:                                               ; preds = %72, %64, %58
  br label %83

83:                                               ; preds = %82, %57
  %84 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %85 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @UE_XFERTYPE, align 4
  %88 = and i32 %86, %87
  %89 = load i32, i32* @UE_ISOCHRONOUS, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %83
  %92 = load %struct.usb_endpoint*, %struct.usb_endpoint** %6, align 8
  %93 = getelementptr inbounds %struct.usb_endpoint, %struct.usb_endpoint* %92, i32 0, i32 0
  store i32* @dwc_otg_device_isoc_methods, i32** %93, align 8
  br label %97

94:                                               ; preds = %83
  %95 = load %struct.usb_endpoint*, %struct.usb_endpoint** %6, align 8
  %96 = getelementptr inbounds %struct.usb_endpoint, %struct.usb_endpoint* %95, i32 0, i32 0
  store i32* @dwc_otg_device_non_isoc_methods, i32** %96, align 8
  br label %97

97:                                               ; preds = %94, %91
  br label %98

98:                                               ; preds = %56, %80, %97, %3
  ret void
}

declare dso_local %struct.dwc_otg_softc* @DWC_OTG_BUS2SC(i32) #1

declare dso_local i32 @DPRINTFN(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
