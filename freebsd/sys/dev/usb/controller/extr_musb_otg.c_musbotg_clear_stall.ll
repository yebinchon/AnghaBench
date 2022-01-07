; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_musb_otg.c_musbotg_clear_stall.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_musb_otg.c_musbotg_clear_stall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.usb_endpoint = type { %struct.usb_endpoint_descriptor* }
%struct.usb_endpoint_descriptor = type { i32, i32, i32 }
%struct.musbotg_softc = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"endpoint=%p\0A\00", align 1
@MA_OWNED = common dso_local global i32 0, align 4
@USB_MODE_DEVICE = common dso_local global i64 0, align 8
@UE_ADDR = common dso_local global i32 0, align 4
@UE_XFERTYPE = common dso_local global i32 0, align 4
@UE_DIR_IN = common dso_local global i32 0, align 4
@UE_DIR_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_device*, %struct.usb_endpoint*)* @musbotg_clear_stall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @musbotg_clear_stall(%struct.usb_device* %0, %struct.usb_endpoint* %1) #0 {
  %3 = alloca %struct.usb_device*, align 8
  %4 = alloca %struct.usb_endpoint*, align 8
  %5 = alloca %struct.musbotg_softc*, align 8
  %6 = alloca %struct.usb_endpoint_descriptor*, align 8
  store %struct.usb_device* %0, %struct.usb_device** %3, align 8
  store %struct.usb_endpoint* %1, %struct.usb_endpoint** %4, align 8
  %7 = load %struct.usb_endpoint*, %struct.usb_endpoint** %4, align 8
  %8 = call i32 @DPRINTFN(i32 4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), %struct.usb_endpoint* %7)
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
  br label %52

21:                                               ; preds = %2
  %22 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %23 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call %struct.musbotg_softc* @MUSBOTG_BUS2SC(i32 %24)
  store %struct.musbotg_softc* %25, %struct.musbotg_softc** %5, align 8
  %26 = load %struct.usb_endpoint*, %struct.usb_endpoint** %4, align 8
  %27 = getelementptr inbounds %struct.usb_endpoint, %struct.usb_endpoint* %26, i32 0, i32 0
  %28 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %27, align 8
  store %struct.usb_endpoint_descriptor* %28, %struct.usb_endpoint_descriptor** %6, align 8
  %29 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %30 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %6, align 8
  %31 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @UGETW(i32 %32)
  %34 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %6, align 8
  %35 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @UE_ADDR, align 4
  %38 = and i32 %36, %37
  %39 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %6, align 8
  %40 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @UE_XFERTYPE, align 4
  %43 = and i32 %41, %42
  %44 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %6, align 8
  %45 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @UE_DIR_IN, align 4
  %48 = load i32, i32* @UE_DIR_OUT, align 4
  %49 = or i32 %47, %48
  %50 = and i32 %46, %49
  %51 = call i32 @musbotg_clear_stall_sub(%struct.musbotg_softc* %29, i32 %33, i32 %38, i32 %43, i32 %50)
  br label %52

52:                                               ; preds = %21, %20
  ret void
}

declare dso_local i32 @DPRINTFN(i32, i8*, %struct.usb_endpoint*) #1

declare dso_local i32 @USB_BUS_LOCK_ASSERT(i32, i32) #1

declare dso_local %struct.musbotg_softc* @MUSBOTG_BUS2SC(i32) #1

declare dso_local i32 @musbotg_clear_stall_sub(%struct.musbotg_softc*, i32, i32, i32, i32) #1

declare dso_local i32 @UGETW(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
