; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_dwc_otg.c_dwc_otg_clear_stall.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_dwc_otg.c_dwc_otg_clear_stall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.usb_endpoint = type { %struct.usb_endpoint_descriptor* }
%struct.usb_endpoint_descriptor = type { i32, i32, i32 }
%struct.dwc_otg_softc = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"endpoint=%p\0A\00", align 1
@MA_OWNED = common dso_local global i32 0, align 4
@USB_MODE_DEVICE = common dso_local global i64 0, align 8
@UE_ADDR = common dso_local global i32 0, align 4
@UE_XFERTYPE = common dso_local global i32 0, align 4
@UE_DIR_IN = common dso_local global i32 0, align 4
@UE_DIR_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_device*, %struct.usb_endpoint*)* @dwc_otg_clear_stall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc_otg_clear_stall(%struct.usb_device* %0, %struct.usb_endpoint* %1) #0 {
  %3 = alloca %struct.usb_device*, align 8
  %4 = alloca %struct.usb_endpoint*, align 8
  %5 = alloca %struct.dwc_otg_softc*, align 8
  %6 = alloca %struct.usb_endpoint_descriptor*, align 8
  store %struct.usb_device* %0, %struct.usb_device** %3, align 8
  store %struct.usb_endpoint* %1, %struct.usb_endpoint** %4, align 8
  %7 = load %struct.usb_endpoint*, %struct.usb_endpoint** %4, align 8
  %8 = call i32 @DPRINTFN(i32 5, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), %struct.usb_endpoint* %7)
  %9 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %10 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @MA_OWNED, align 4
  %13 = call i32 @USB_BUS_LOCK_ASSERT(i32 %11, i32 %12)
  %14 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %15 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @USB_MODE_DEVICE, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %58

21:                                               ; preds = %2
  %22 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %23 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call %struct.dwc_otg_softc* @DWC_OTG_BUS2SC(i32 %24)
  store %struct.dwc_otg_softc* %25, %struct.dwc_otg_softc** %5, align 8
  %26 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %5, align 8
  %27 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %26, i32 0, i32 0
  %28 = call i32 @USB_BUS_SPIN_LOCK(i32* %27)
  %29 = load %struct.usb_endpoint*, %struct.usb_endpoint** %4, align 8
  %30 = getelementptr inbounds %struct.usb_endpoint, %struct.usb_endpoint* %29, i32 0, i32 0
  %31 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %30, align 8
  store %struct.usb_endpoint_descriptor* %31, %struct.usb_endpoint_descriptor** %6, align 8
  %32 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %5, align 8
  %33 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %6, align 8
  %34 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @UGETW(i32 %35)
  %37 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %6, align 8
  %38 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @UE_ADDR, align 4
  %41 = and i32 %39, %40
  %42 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %6, align 8
  %43 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @UE_XFERTYPE, align 4
  %46 = and i32 %44, %45
  %47 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %6, align 8
  %48 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @UE_DIR_IN, align 4
  %51 = load i32, i32* @UE_DIR_OUT, align 4
  %52 = or i32 %50, %51
  %53 = and i32 %49, %52
  %54 = call i32 @dwc_otg_clear_stall_sub_locked(%struct.dwc_otg_softc* %32, i32 %36, i32 %41, i32 %46, i32 %53)
  %55 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %5, align 8
  %56 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %55, i32 0, i32 0
  %57 = call i32 @USB_BUS_SPIN_UNLOCK(i32* %56)
  br label %58

58:                                               ; preds = %21, %20
  ret void
}

declare dso_local i32 @DPRINTFN(i32, i8*, %struct.usb_endpoint*) #1

declare dso_local i32 @USB_BUS_LOCK_ASSERT(i32, i32) #1

declare dso_local %struct.dwc_otg_softc* @DWC_OTG_BUS2SC(i32) #1

declare dso_local i32 @USB_BUS_SPIN_LOCK(i32*) #1

declare dso_local i32 @dwc_otg_clear_stall_sub_locked(%struct.dwc_otg_softc*, i32, i32, i32, i32) #1

declare dso_local i32 @UGETW(i32) #1

declare dso_local i32 @USB_BUS_SPIN_UNLOCK(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
