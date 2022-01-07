; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_dwc_otg.c_dwc_otg_start_standard_chain.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_dwc_otg.c_dwc_otg_start_standard_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i64, %struct.TYPE_4__*, %struct.dwc_otg_td* }
%struct.TYPE_4__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.dwc_otg_td = type { i64, i32 }
%struct.dwc_otg_softc = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@UE_ISOCHRONOUS = common dso_local global i64 0, align 8
@HCCHAR_EPDIR_IN = common dso_local global i32 0, align 4
@dwc_otg_timeout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*)* @dwc_otg_start_standard_chain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc_otg_start_standard_chain(%struct.usb_xfer* %0) #0 {
  %2 = alloca %struct.usb_xfer*, align 8
  %3 = alloca %struct.dwc_otg_softc*, align 8
  %4 = alloca %struct.dwc_otg_td*, align 8
  store %struct.usb_xfer* %0, %struct.usb_xfer** %2, align 8
  %5 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %6 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %5, i32 0, i32 1
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = call %struct.dwc_otg_softc* @DWC_OTG_BUS2SC(%struct.TYPE_6__* %9)
  store %struct.dwc_otg_softc* %10, %struct.dwc_otg_softc** %3, align 8
  %11 = call i32 @DPRINTFN(i32 9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %13 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %12, i32 0, i32 0
  %14 = call i32 @USB_BUS_SPIN_LOCK(i32* %13)
  %15 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %16 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %1
  %21 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %22 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %23 = call i32 @dwc_otg_xfer_do_fifo(%struct.dwc_otg_softc* %21, %struct.usb_xfer* %22)
  %24 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %25 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %26 = call i64 @dwc_otg_xfer_do_complete_locked(%struct.dwc_otg_softc* %24, %struct.usb_xfer* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  br label %86

29:                                               ; preds = %20
  br label %57

30:                                               ; preds = %1
  %31 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %32 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %31, i32 0, i32 2
  %33 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %32, align 8
  store %struct.dwc_otg_td* %33, %struct.dwc_otg_td** %4, align 8
  %34 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %4, align 8
  %35 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @UE_ISOCHRONOUS, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %56

39:                                               ; preds = %30
  %40 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %4, align 8
  %41 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @HCCHAR_EPDIR_IN, align 4
  %44 = and i32 %42, %43
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %39
  %47 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %48 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %49 = call i32 @dwc_otg_xfer_do_fifo(%struct.dwc_otg_softc* %47, %struct.usb_xfer* %48)
  %50 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %51 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %52 = call i64 @dwc_otg_xfer_do_complete_locked(%struct.dwc_otg_softc* %50, %struct.usb_xfer* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %46
  br label %86

55:                                               ; preds = %46
  br label %56

56:                                               ; preds = %55, %39, %30
  br label %57

57:                                               ; preds = %56, %29
  %58 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %59 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %58, i32 0, i32 1
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %65 = call i32 @usbd_transfer_enqueue(i32* %63, %struct.usb_xfer* %64)
  %66 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %67 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %57
  %71 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %72 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %73 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @usbd_transfer_timeout_ms(%struct.usb_xfer* %71, i32* @dwc_otg_timeout, i64 %74)
  br label %76

76:                                               ; preds = %70, %57
  %77 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %78 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %76
  br label %86

83:                                               ; preds = %76
  %84 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %85 = call i32 @dwc_otg_enable_sof_irq(%struct.dwc_otg_softc* %84)
  br label %86

86:                                               ; preds = %83, %82, %54, %28
  %87 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %3, align 8
  %88 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %87, i32 0, i32 0
  %89 = call i32 @USB_BUS_SPIN_UNLOCK(i32* %88)
  ret void
}

declare dso_local %struct.dwc_otg_softc* @DWC_OTG_BUS2SC(%struct.TYPE_6__*) #1

declare dso_local i32 @DPRINTFN(i32, i8*) #1

declare dso_local i32 @USB_BUS_SPIN_LOCK(i32*) #1

declare dso_local i32 @dwc_otg_xfer_do_fifo(%struct.dwc_otg_softc*, %struct.usb_xfer*) #1

declare dso_local i64 @dwc_otg_xfer_do_complete_locked(%struct.dwc_otg_softc*, %struct.usb_xfer*) #1

declare dso_local i32 @usbd_transfer_enqueue(i32*, %struct.usb_xfer*) #1

declare dso_local i32 @usbd_transfer_timeout_ms(%struct.usb_xfer*, i32*, i64) #1

declare dso_local i32 @dwc_otg_enable_sof_irq(%struct.dwc_otg_softc*) #1

declare dso_local i32 @USB_BUS_SPIN_UNLOCK(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
