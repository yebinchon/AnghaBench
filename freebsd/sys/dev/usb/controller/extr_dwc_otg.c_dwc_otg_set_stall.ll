; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_dwc_otg.c_dwc_otg_set_stall.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_dwc_otg.c_dwc_otg_set_stall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.usb_endpoint = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.dwc_otg_softc = type { i32*, i32*, i32, i64, i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@USB_MODE_DEVICE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"endpoint=0x%x\0A\00", align 1
@UE_DIR_IN = common dso_local global i32 0, align 4
@UE_ADDR = common dso_local global i32 0, align 4
@DOEPCTL_EPDIS = common dso_local global i32 0, align 4
@DOEPCTL_STALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_device*, %struct.usb_endpoint*, i32*)* @dwc_otg_set_stall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc_otg_set_stall(%struct.usb_device* %0, %struct.usb_endpoint* %1, i32* %2) #0 {
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca %struct.usb_endpoint*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.dwc_otg_softc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %4, align 8
  store %struct.usb_endpoint* %1, %struct.usb_endpoint** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %12 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @MA_OWNED, align 4
  %15 = call i32 @USB_BUS_LOCK_ASSERT(i32 %13, i32 %14)
  %16 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %17 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @USB_MODE_DEVICE, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  br label %122

23:                                               ; preds = %3
  %24 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %25 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call %struct.dwc_otg_softc* @DWC_OTG_BUS2SC(i32 %26)
  store %struct.dwc_otg_softc* %27, %struct.dwc_otg_softc** %7, align 8
  %28 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %7, align 8
  %29 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %28, i32 0, i32 4
  %30 = call i32 @USB_BUS_SPIN_LOCK(i32* %29)
  %31 = load %struct.usb_endpoint*, %struct.usb_endpoint** %5, align 8
  %32 = getelementptr inbounds %struct.usb_endpoint, %struct.usb_endpoint* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @DPRINTFN(i32 5, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* @UE_DIR_IN, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %56

42:                                               ; preds = %23
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* @UE_ADDR, align 4
  %45 = and i32 %43, %44
  %46 = call i32 @DOTG_DIEPCTL(i32 %45)
  store i32 %46, i32* %9, align 4
  %47 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %7, align 8
  %48 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* @UE_ADDR, align 4
  %52 = and i32 %50, %51
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %49, i64 %53
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %8, align 4
  br label %70

56:                                               ; preds = %23
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* @UE_ADDR, align 4
  %59 = and i32 %57, %58
  %60 = call i32 @DOTG_DOEPCTL(i32 %59)
  store i32 %60, i32* %9, align 4
  %61 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %7, align 8
  %62 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* @UE_ADDR, align 4
  %66 = and i32 %64, %65
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %63, i64 %67
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %8, align 4
  br label %70

70:                                               ; preds = %56, %42
  %71 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %7, align 8
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* @DOEPCTL_EPDIS, align 4
  %75 = or i32 %73, %74
  %76 = call i32 @DWC_OTG_WRITE_4(%struct.dwc_otg_softc* %71, i32 %72, i32 %75)
  %77 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %7, align 8
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* @DOEPCTL_STALL, align 4
  %81 = or i32 %79, %80
  %82 = call i32 @DWC_OTG_WRITE_4(%struct.dwc_otg_softc* %77, i32 %78, i32 %81)
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* @UE_DIR_IN, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %118, label %87

87:                                               ; preds = %70
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* @UE_ADDR, align 4
  %90 = and i32 %88, %89
  %91 = shl i32 1, %90
  %92 = xor i32 %91, -1
  %93 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %7, align 8
  %94 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = and i32 %95, %92
  store i32 %96, i32* %94, align 8
  %97 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %7, align 8
  %98 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %97, i32 0, i32 3
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %117

101:                                              ; preds = %87
  %102 = load i32, i32* %10, align 4
  %103 = load i32, i32* @UE_ADDR, align 4
  %104 = and i32 %102, %103
  %105 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %7, align 8
  %106 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %105, i32 0, i32 3
  %107 = load i64, i64* %106, align 8
  %108 = call i32 @GRXSTSRD_CHNUM_GET(i64 %107)
  %109 = icmp eq i32 %104, %108
  br i1 %109, label %110, label %117

110:                                              ; preds = %101
  %111 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %7, align 8
  %112 = call i32 @dwc_otg_common_rx_ack(%struct.dwc_otg_softc* %111)
  %113 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %7, align 8
  %114 = call i32 @dwc_otg_interrupt_poll_locked(%struct.dwc_otg_softc* %113)
  %115 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %7, align 8
  %116 = call i32 @dwc_otg_interrupt_complete_locked(%struct.dwc_otg_softc* %115)
  br label %117

117:                                              ; preds = %110, %101, %87
  br label %118

118:                                              ; preds = %117, %70
  %119 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %7, align 8
  %120 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %119, i32 0, i32 4
  %121 = call i32 @USB_BUS_SPIN_UNLOCK(i32* %120)
  br label %122

122:                                              ; preds = %118, %22
  ret void
}

declare dso_local i32 @USB_BUS_LOCK_ASSERT(i32, i32) #1

declare dso_local %struct.dwc_otg_softc* @DWC_OTG_BUS2SC(i32) #1

declare dso_local i32 @USB_BUS_SPIN_LOCK(i32*) #1

declare dso_local i32 @DPRINTFN(i32, i8*, i32) #1

declare dso_local i32 @DOTG_DIEPCTL(i32) #1

declare dso_local i32 @DOTG_DOEPCTL(i32) #1

declare dso_local i32 @DWC_OTG_WRITE_4(%struct.dwc_otg_softc*, i32, i32) #1

declare dso_local i32 @GRXSTSRD_CHNUM_GET(i64) #1

declare dso_local i32 @dwc_otg_common_rx_ack(%struct.dwc_otg_softc*) #1

declare dso_local i32 @dwc_otg_interrupt_poll_locked(%struct.dwc_otg_softc*) #1

declare dso_local i32 @dwc_otg_interrupt_complete_locked(%struct.dwc_otg_softc*) #1

declare dso_local i32 @USB_BUS_SPIN_UNLOCK(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
