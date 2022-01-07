; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_uss820dci.c_uss820dci_ep_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_uss820dci.c_uss820dci_ep_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i64, i64, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.usb_endpoint_descriptor = type { i32, i32 }
%struct.usb_endpoint = type { i32* }
%struct.uss820dci_softc = type { i64 }

@.str = private unnamed_addr constant [46 x i8] c"endpoint=%p, addr=%d, endpt=%d, mode=%d (%d)\0A\00", align 1
@USB_SPEED_FULL = common dso_local global i64 0, align 8
@UE_XFERTYPE = common dso_local global i32 0, align 4
@uss820dci_device_ctrl_methods = common dso_local global i32 0, align 4
@uss820dci_device_intr_methods = common dso_local global i32 0, align 4
@uss820dci_device_isoc_fs_methods = common dso_local global i32 0, align 4
@uss820dci_device_bulk_methods = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_device*, %struct.usb_endpoint_descriptor*, %struct.usb_endpoint*)* @uss820dci_ep_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uss820dci_ep_init(%struct.usb_device* %0, %struct.usb_endpoint_descriptor* %1, %struct.usb_endpoint* %2) #0 {
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca %struct.usb_endpoint_descriptor*, align 8
  %6 = alloca %struct.usb_endpoint*, align 8
  %7 = alloca %struct.uss820dci_softc*, align 8
  store %struct.usb_device* %0, %struct.usb_device** %4, align 8
  store %struct.usb_endpoint_descriptor* %1, %struct.usb_endpoint_descriptor** %5, align 8
  store %struct.usb_endpoint* %2, %struct.usb_endpoint** %6, align 8
  %8 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %9 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.uss820dci_softc* @USS820_DCI_BUS2SC(i32 %10)
  store %struct.uss820dci_softc* %11, %struct.uss820dci_softc** %7, align 8
  %12 = load %struct.usb_endpoint*, %struct.usb_endpoint** %6, align 8
  %13 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %14 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %17 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %20 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %7, align 8
  %24 = getelementptr inbounds %struct.uss820dci_softc, %struct.uss820dci_softc* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @DPRINTFN(i32 2, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), %struct.usb_endpoint* %12, i32 %15, i32 %18, i32 %22, i64 %25)
  %27 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %28 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %7, align 8
  %31 = getelementptr inbounds %struct.uss820dci_softc, %struct.uss820dci_softc* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %29, %32
  br i1 %33, label %34, label %61

34:                                               ; preds = %3
  %35 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %36 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @USB_SPEED_FULL, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %61

41:                                               ; preds = %34
  %42 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %43 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @UE_XFERTYPE, align 4
  %46 = and i32 %44, %45
  switch i32 %46, label %59 [
    i32 130, label %47
    i32 129, label %50
    i32 128, label %53
    i32 131, label %56
  ]

47:                                               ; preds = %41
  %48 = load %struct.usb_endpoint*, %struct.usb_endpoint** %6, align 8
  %49 = getelementptr inbounds %struct.usb_endpoint, %struct.usb_endpoint* %48, i32 0, i32 0
  store i32* @uss820dci_device_ctrl_methods, i32** %49, align 8
  br label %60

50:                                               ; preds = %41
  %51 = load %struct.usb_endpoint*, %struct.usb_endpoint** %6, align 8
  %52 = getelementptr inbounds %struct.usb_endpoint, %struct.usb_endpoint* %51, i32 0, i32 0
  store i32* @uss820dci_device_intr_methods, i32** %52, align 8
  br label %60

53:                                               ; preds = %41
  %54 = load %struct.usb_endpoint*, %struct.usb_endpoint** %6, align 8
  %55 = getelementptr inbounds %struct.usb_endpoint, %struct.usb_endpoint* %54, i32 0, i32 0
  store i32* @uss820dci_device_isoc_fs_methods, i32** %55, align 8
  br label %60

56:                                               ; preds = %41
  %57 = load %struct.usb_endpoint*, %struct.usb_endpoint** %6, align 8
  %58 = getelementptr inbounds %struct.usb_endpoint, %struct.usb_endpoint* %57, i32 0, i32 0
  store i32* @uss820dci_device_bulk_methods, i32** %58, align 8
  br label %60

59:                                               ; preds = %41
  br label %60

60:                                               ; preds = %59, %56, %53, %50, %47
  br label %61

61:                                               ; preds = %40, %60, %3
  ret void
}

declare dso_local %struct.uss820dci_softc* @USS820_DCI_BUS2SC(i32) #1

declare dso_local i32 @DPRINTFN(i32, i8*, %struct.usb_endpoint*, i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
