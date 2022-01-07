; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_xhci.c_xhci_activate_transfer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_xhci.c_xhci_activate_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { %struct.xhci_td* }
%struct.xhci_td = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@XHCI_TRB_3_CYCLE_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*)* @xhci_activate_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xhci_activate_transfer(%struct.usb_xfer* %0) #0 {
  %2 = alloca %struct.usb_xfer*, align 8
  %3 = alloca %struct.xhci_td*, align 8
  store %struct.usb_xfer* %0, %struct.usb_xfer** %2, align 8
  %4 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %5 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %4, i32 0, i32 0
  %6 = load %struct.xhci_td*, %struct.xhci_td** %5, align 8
  store %struct.xhci_td* %6, %struct.xhci_td** %3, align 8
  %7 = load %struct.xhci_td*, %struct.xhci_td** %3, align 8
  %8 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @usb_pc_cpu_invalidate(i32 %9)
  %11 = load %struct.xhci_td*, %struct.xhci_td** %3, align 8
  %12 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @XHCI_TRB_3_CYCLE_BIT, align 4
  %18 = call i32 @htole32(i32 %17)
  %19 = and i32 %16, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %37, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @XHCI_TRB_3_CYCLE_BIT, align 4
  %23 = call i32 @htole32(i32 %22)
  %24 = load %struct.xhci_td*, %struct.xhci_td** %3, align 8
  %25 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %23
  store i32 %30, i32* %28, align 4
  %31 = load %struct.xhci_td*, %struct.xhci_td** %3, align 8
  %32 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @usb_pc_cpu_flush(i32 %33)
  %35 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %36 = call i32 @xhci_endpoint_doorbell(%struct.usb_xfer* %35)
  br label %37

37:                                               ; preds = %21, %1
  ret void
}

declare dso_local i32 @usb_pc_cpu_invalidate(i32) #1

declare dso_local i32 @htole32(i32) #1

declare dso_local i32 @usb_pc_cpu_flush(i32) #1

declare dso_local i32 @xhci_endpoint_doorbell(%struct.usb_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
