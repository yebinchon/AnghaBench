; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_dwc_otg.c_dwc_otg_device_state_change.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_dwc_otg.c_dwc_otg_device_state_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.dwc_otg_softc = type { i32, i32, i32 }

@USB_MODE_DEVICE = common dso_local global i64 0, align 8
@USB_STATE_CONFIGURED = common dso_local global i64 0, align 8
@USB_STATE_ADDRESSED = common dso_local global i64 0, align 8
@DIEPCTL_EPDIS = common dso_local global i32 0, align 4
@DOEPCTL_EPDIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_device*)* @dwc_otg_device_state_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc_otg_device_state_change(%struct.usb_device* %0) #0 {
  %2 = alloca %struct.usb_device*, align 8
  %3 = alloca %struct.dwc_otg_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %2, align 8
  %5 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %6 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %5, i32 0, i32 2
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @USB_MODE_DEVICE, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %71

12:                                               ; preds = %1
  %13 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %14 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.dwc_otg_softc* @DWC_OTG_BUS2SC(i32 %15)
  store %struct.dwc_otg_softc* %16, %struct.dwc_otg_softc** %3, align 8
  %17 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %18 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @USB_STATE_CONFIGURED, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %28, label %22

22:                                               ; preds = %12
  %23 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %24 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @USB_STATE_ADDRESSED, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %71

28:                                               ; preds = %22, %12
  %29 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %30 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %29, i32 0, i32 2
  %31 = call i32 @USB_BUS_LOCK(i32* %30)
  store i32 1, i32* %4, align 4
  br label %32

32:                                               ; preds = %64, %28
  %33 = load i32, i32* %4, align 4
  %34 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %35 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %33, %36
  br i1 %37, label %38, label %67

38:                                               ; preds = %32
  %39 = load i32, i32* %4, align 4
  %40 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %41 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %44, label %54

44:                                               ; preds = %38
  %45 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @DOTG_DIEPCTL(i32 %46)
  %48 = load i32, i32* @DIEPCTL_EPDIS, align 4
  %49 = call i32 @DWC_OTG_WRITE_4(%struct.dwc_otg_softc* %45, i32 %47, i32 %48)
  %50 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @DOTG_DIEPCTL(i32 %51)
  %53 = call i32 @DWC_OTG_WRITE_4(%struct.dwc_otg_softc* %50, i32 %52, i32 0)
  br label %54

54:                                               ; preds = %44, %38
  %55 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @DOTG_DOEPCTL(i32 %56)
  %58 = load i32, i32* @DOEPCTL_EPDIS, align 4
  %59 = call i32 @DWC_OTG_WRITE_4(%struct.dwc_otg_softc* %55, i32 %57, i32 %58)
  %60 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @DOTG_DOEPCTL(i32 %61)
  %63 = call i32 @DWC_OTG_WRITE_4(%struct.dwc_otg_softc* %60, i32 %62, i32 0)
  br label %64

64:                                               ; preds = %54
  %65 = load i32, i32* %4, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %4, align 4
  br label %32

67:                                               ; preds = %32
  %68 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %69 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %68, i32 0, i32 2
  %70 = call i32 @USB_BUS_UNLOCK(i32* %69)
  br label %71

71:                                               ; preds = %11, %67, %22
  ret void
}

declare dso_local %struct.dwc_otg_softc* @DWC_OTG_BUS2SC(i32) #1

declare dso_local i32 @USB_BUS_LOCK(i32*) #1

declare dso_local i32 @DWC_OTG_WRITE_4(%struct.dwc_otg_softc*, i32, i32) #1

declare dso_local i32 @DOTG_DIEPCTL(i32) #1

declare dso_local i32 @DOTG_DOEPCTL(i32) #1

declare dso_local i32 @USB_BUS_UNLOCK(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
