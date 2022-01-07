; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_ehci.c_ehci_device_bulk_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_ehci.c_ehci_device_bulk_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }

@EHCI_SCFLG_IAADBUG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*)* @ehci_device_bulk_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ehci_device_bulk_start(%struct.usb_xfer* %0) #0 {
  %2 = alloca %struct.usb_xfer*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  store %struct.usb_xfer* %0, %struct.usb_xfer** %2, align 8
  %4 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %5 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %4, i32 0, i32 0
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.TYPE_6__* @EHCI_BUS2SC(i32 %8)
  store %struct.TYPE_6__* %9, %struct.TYPE_6__** %3, align 8
  %10 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %13 = call i32 @ehci_setup_standard_chain(%struct.usb_xfer* %10, i32* %12)
  %14 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %15 = call i32 @ehci_transfer_intr_enqueue(%struct.usb_xfer* %14)
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @EHCI_SCFLG_IAADBUG, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  br label %26

23:                                               ; preds = %1
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %25 = call i32 @ehci_doorbell_async(%struct.TYPE_6__* %24)
  br label %26

26:                                               ; preds = %23, %22
  ret void
}

declare dso_local %struct.TYPE_6__* @EHCI_BUS2SC(i32) #1

declare dso_local i32 @ehci_setup_standard_chain(%struct.usb_xfer*, i32*) #1

declare dso_local i32 @ehci_transfer_intr_enqueue(%struct.usb_xfer*) #1

declare dso_local i32 @ehci_doorbell_async(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
