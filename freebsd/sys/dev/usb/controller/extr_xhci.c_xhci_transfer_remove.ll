; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_xhci.c_xhci_transfer_remove.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_xhci.c_xhci_transfer_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i64, i64, %struct.TYPE_5__*, %struct.TYPE_4__*, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i64 }
%struct.xhci_endpoint_ext = type { i64, i32, i32**, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*, i64)* @xhci_transfer_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xhci_transfer_remove(%struct.usb_xfer* %0, i64 %1) #0 {
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.xhci_endpoint_ext*, align 8
  store %struct.usb_xfer* %0, %struct.usb_xfer** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %7 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %6, i32 0, i32 4
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %55

11:                                               ; preds = %2
  %12 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %13 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %12, i32 0, i32 4
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  store i64 0, i64* %14, align 8
  %15 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %16 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %15, i32 0, i32 3
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %21 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %20, i32 0, i32 2
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.xhci_endpoint_ext* @xhci_get_endpoint_ext(i32 %19, i32 %24)
  store %struct.xhci_endpoint_ext* %25, %struct.xhci_endpoint_ext** %5, align 8
  %26 = load %struct.xhci_endpoint_ext*, %struct.xhci_endpoint_ext** %5, align 8
  %27 = getelementptr inbounds %struct.xhci_endpoint_ext, %struct.xhci_endpoint_ext* %26, i32 0, i32 3
  %28 = load i32*, i32** %27, align 8
  %29 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %30 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds i32, i32* %28, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %32, align 4
  %35 = load %struct.xhci_endpoint_ext*, %struct.xhci_endpoint_ext** %5, align 8
  %36 = getelementptr inbounds %struct.xhci_endpoint_ext, %struct.xhci_endpoint_ext* %35, i32 0, i32 2
  %37 = load i32**, i32*** %36, align 8
  %38 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %39 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds i32*, i32** %37, i64 %40
  store i32* null, i32** %41, align 8
  %42 = load i64, i64* %4, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %11
  %45 = load %struct.xhci_endpoint_ext*, %struct.xhci_endpoint_ext** %5, align 8
  %46 = getelementptr inbounds %struct.xhci_endpoint_ext, %struct.xhci_endpoint_ext* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load %struct.xhci_endpoint_ext*, %struct.xhci_endpoint_ext** %5, align 8
  %51 = getelementptr inbounds %struct.xhci_endpoint_ext, %struct.xhci_endpoint_ext* %50, i32 0, i32 1
  store i32 1, i32* %51, align 8
  %52 = load %struct.xhci_endpoint_ext*, %struct.xhci_endpoint_ext** %5, align 8
  %53 = getelementptr inbounds %struct.xhci_endpoint_ext, %struct.xhci_endpoint_ext* %52, i32 0, i32 0
  store i64 0, i64* %53, align 8
  br label %54

54:                                               ; preds = %49, %44, %11
  br label %55

55:                                               ; preds = %54, %2
  ret void
}

declare dso_local %struct.xhci_endpoint_ext* @xhci_get_endpoint_ext(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
