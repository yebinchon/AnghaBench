; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_dwc_otg.c_dwc_otg_get_hw_ep_profile.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_dwc_otg.c_dwc_otg_get_hw_ep_profile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }
%struct.usb_hw_ep_profile = type { i32 }
%struct.dwc_otg_softc = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.usb_hw_ep_profile }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_device*, %struct.usb_hw_ep_profile**, i64)* @dwc_otg_get_hw_ep_profile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc_otg_get_hw_ep_profile(%struct.usb_device* %0, %struct.usb_hw_ep_profile** %1, i64 %2) #0 {
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca %struct.usb_hw_ep_profile**, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.dwc_otg_softc*, align 8
  store %struct.usb_device* %0, %struct.usb_device** %4, align 8
  store %struct.usb_hw_ep_profile** %1, %struct.usb_hw_ep_profile*** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %9 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.dwc_otg_softc* @DWC_OTG_BUS2SC(i32 %10)
  store %struct.dwc_otg_softc* %11, %struct.dwc_otg_softc** %7, align 8
  %12 = load i64, i64* %6, align 8
  %13 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %7, align 8
  %14 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ult i64 %12, %15
  br i1 %16, label %17, label %25

17:                                               ; preds = %3
  %18 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %7, align 8
  %19 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load i64, i64* %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load %struct.usb_hw_ep_profile**, %struct.usb_hw_ep_profile*** %5, align 8
  store %struct.usb_hw_ep_profile* %23, %struct.usb_hw_ep_profile** %24, align 8
  br label %27

25:                                               ; preds = %3
  %26 = load %struct.usb_hw_ep_profile**, %struct.usb_hw_ep_profile*** %5, align 8
  store %struct.usb_hw_ep_profile* null, %struct.usb_hw_ep_profile** %26, align 8
  br label %27

27:                                               ; preds = %25, %17
  ret void
}

declare dso_local %struct.dwc_otg_softc* @DWC_OTG_BUS2SC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
