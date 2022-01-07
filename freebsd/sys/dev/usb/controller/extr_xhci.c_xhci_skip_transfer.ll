; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_xhci.c_xhci_skip_transfer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_xhci.c_xhci_skip_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { %struct.xhci_td*, %struct.xhci_td* }
%struct.xhci_td = type { i64, i32, %struct.TYPE_2__*, %struct.xhci_td* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@XHCI_TRB_3_CYCLE_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*)* @xhci_skip_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xhci_skip_transfer(%struct.usb_xfer* %0) #0 {
  %2 = alloca %struct.usb_xfer*, align 8
  %3 = alloca %struct.xhci_td*, align 8
  %4 = alloca %struct.xhci_td*, align 8
  store %struct.usb_xfer* %0, %struct.usb_xfer** %2, align 8
  %5 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %6 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %5, i32 0, i32 1
  %7 = load %struct.xhci_td*, %struct.xhci_td** %6, align 8
  store %struct.xhci_td* %7, %struct.xhci_td** %3, align 8
  %8 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %9 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %8, i32 0, i32 0
  %10 = load %struct.xhci_td*, %struct.xhci_td** %9, align 8
  store %struct.xhci_td* %10, %struct.xhci_td** %4, align 8
  %11 = load %struct.xhci_td*, %struct.xhci_td** %3, align 8
  %12 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %11, i32 0, i32 3
  %13 = load %struct.xhci_td*, %struct.xhci_td** %12, align 8
  store %struct.xhci_td* %13, %struct.xhci_td** %3, align 8
  %14 = load %struct.xhci_td*, %struct.xhci_td** %3, align 8
  %15 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @usb_pc_cpu_invalidate(i32 %16)
  %18 = load %struct.xhci_td*, %struct.xhci_td** %3, align 8
  %19 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %18, i32 0, i32 2
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @XHCI_TRB_3_CYCLE_BIT, align 4
  %25 = call i32 @htole32(i32 %24)
  %26 = and i32 %23, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %85, label %28

28:                                               ; preds = %1
  %29 = load %struct.xhci_td*, %struct.xhci_td** %4, align 8
  %30 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @usb_pc_cpu_invalidate(i32 %31)
  %33 = load %struct.xhci_td*, %struct.xhci_td** %4, align 8
  %34 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %33, i32 0, i32 2
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load %struct.xhci_td*, %struct.xhci_td** %4, align 8
  %37 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.xhci_td*, %struct.xhci_td** %3, align 8
  %43 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %42, i32 0, i32 2
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 2
  store i32 %41, i32* %46, align 4
  %47 = load %struct.xhci_td*, %struct.xhci_td** %4, align 8
  %48 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %47, i32 0, i32 2
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = load %struct.xhci_td*, %struct.xhci_td** %4, align 8
  %51 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.xhci_td*, %struct.xhci_td** %3, align 8
  %57 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %56, i32 0, i32 2
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  store i32 %55, i32* %60, align 4
  %61 = load %struct.xhci_td*, %struct.xhci_td** %3, align 8
  %62 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @usb_pc_cpu_flush(i32 %63)
  %65 = load %struct.xhci_td*, %struct.xhci_td** %4, align 8
  %66 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %65, i32 0, i32 2
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = load %struct.xhci_td*, %struct.xhci_td** %4, align 8
  %69 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.xhci_td*, %struct.xhci_td** %3, align 8
  %75 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %74, i32 0, i32 2
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i64 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  store i32 %73, i32* %78, align 4
  %79 = load %struct.xhci_td*, %struct.xhci_td** %3, align 8
  %80 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @usb_pc_cpu_flush(i32 %81)
  %83 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %84 = call i32 @xhci_endpoint_doorbell(%struct.usb_xfer* %83)
  br label %85

85:                                               ; preds = %28, %1
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
