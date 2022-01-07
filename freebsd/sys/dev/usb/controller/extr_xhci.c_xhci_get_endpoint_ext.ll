; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_xhci.c_xhci_get_endpoint_ext.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_xhci.c_xhci_get_endpoint_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_endpoint_ext = type { i32, i32, %struct.usb_page_cache* }
%struct.usb_page_cache = type { i32 }
%struct.usb_device = type { i64, i32 }
%struct.usb_endpoint_descriptor = type { i64, i32 }
%struct.xhci_softc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.xhci_endpoint_ext*, %struct.usb_page_cache* }
%struct.usb_page_search = type { i32, i32 }

@UE_XFERTYPE = common dso_local global i32 0, align 4
@UE_CONTROL = common dso_local global i32 0, align 4
@UE_DIR_IN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.xhci_endpoint_ext* (%struct.usb_device*, %struct.usb_endpoint_descriptor*)* @xhci_get_endpoint_ext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.xhci_endpoint_ext* @xhci_get_endpoint_ext(%struct.usb_device* %0, %struct.usb_endpoint_descriptor* %1) #0 {
  %3 = alloca %struct.usb_device*, align 8
  %4 = alloca %struct.usb_endpoint_descriptor*, align 8
  %5 = alloca %struct.xhci_softc*, align 8
  %6 = alloca %struct.xhci_endpoint_ext*, align 8
  %7 = alloca %struct.usb_page_cache*, align 8
  %8 = alloca %struct.usb_page_search, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.usb_device* %0, %struct.usb_device** %3, align 8
  store %struct.usb_endpoint_descriptor* %1, %struct.usb_endpoint_descriptor** %4, align 8
  %11 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %12 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.xhci_softc* @XHCI_BUS2SC(i32 %13)
  store %struct.xhci_softc* %14, %struct.xhci_softc** %5, align 8
  %15 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %4, align 8
  %16 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %9, align 8
  %18 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %4, align 8
  %19 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @UE_XFERTYPE, align 4
  %22 = and i32 %20, %21
  %23 = load i32, i32* @UE_CONTROL, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %2
  %26 = load i64, i64* @UE_DIR_IN, align 8
  %27 = load i64, i64* %9, align 8
  %28 = or i64 %27, %26
  store i64 %28, i64* %9, align 8
  br label %29

29:                                               ; preds = %25, %2
  %30 = load i64, i64* %9, align 8
  %31 = call i64 @XHCI_EPNO2EPID(i64 %30)
  store i64 %31, i64* %9, align 8
  %32 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %33 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %10, align 8
  %35 = load %struct.xhci_softc*, %struct.xhci_softc** %5, align 8
  %36 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = load i64, i64* %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load %struct.usb_page_cache*, %struct.usb_page_cache** %41, align 8
  %43 = load i64, i64* %9, align 8
  %44 = getelementptr inbounds %struct.usb_page_cache, %struct.usb_page_cache* %42, i64 %43
  store %struct.usb_page_cache* %44, %struct.usb_page_cache** %7, align 8
  %45 = load %struct.usb_page_cache*, %struct.usb_page_cache** %7, align 8
  %46 = call i32 @usbd_get_page(%struct.usb_page_cache* %45, i32 0, %struct.usb_page_search* %8)
  %47 = load %struct.xhci_softc*, %struct.xhci_softc** %5, align 8
  %48 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = load i64, i64* %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load %struct.xhci_endpoint_ext*, %struct.xhci_endpoint_ext** %53, align 8
  %55 = load i64, i64* %9, align 8
  %56 = getelementptr inbounds %struct.xhci_endpoint_ext, %struct.xhci_endpoint_ext* %54, i64 %55
  store %struct.xhci_endpoint_ext* %56, %struct.xhci_endpoint_ext** %6, align 8
  %57 = load %struct.usb_page_cache*, %struct.usb_page_cache** %7, align 8
  %58 = load %struct.xhci_endpoint_ext*, %struct.xhci_endpoint_ext** %6, align 8
  %59 = getelementptr inbounds %struct.xhci_endpoint_ext, %struct.xhci_endpoint_ext* %58, i32 0, i32 2
  store %struct.usb_page_cache* %57, %struct.usb_page_cache** %59, align 8
  %60 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %8, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.xhci_endpoint_ext*, %struct.xhci_endpoint_ext** %6, align 8
  %63 = getelementptr inbounds %struct.xhci_endpoint_ext, %struct.xhci_endpoint_ext* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %8, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.xhci_endpoint_ext*, %struct.xhci_endpoint_ext** %6, align 8
  %67 = getelementptr inbounds %struct.xhci_endpoint_ext, %struct.xhci_endpoint_ext* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load %struct.xhci_endpoint_ext*, %struct.xhci_endpoint_ext** %6, align 8
  ret %struct.xhci_endpoint_ext* %68
}

declare dso_local %struct.xhci_softc* @XHCI_BUS2SC(i32) #1

declare dso_local i64 @XHCI_EPNO2EPID(i64) #1

declare dso_local i32 @usbd_get_page(%struct.usb_page_cache*, i32, %struct.usb_page_search*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
