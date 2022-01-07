; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_xhci.c_xhci_endpoint_doorbell.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_xhci.c_xhci_endpoint_doorbell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32, i32, %struct.TYPE_7__*, %struct.TYPE_8__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_8__ = type { i64 }
%struct.xhci_softc = type { i32 }

@UE_DIR_IN = common dso_local global i32 0, align 4
@door = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*)* @xhci_endpoint_doorbell to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xhci_endpoint_doorbell(%struct.usb_xfer* %0) #0 {
  %2 = alloca %struct.usb_xfer*, align 8
  %3 = alloca %struct.xhci_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.usb_xfer* %0, %struct.usb_xfer** %2, align 8
  %6 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %7 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %6, i32 0, i32 2
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.xhci_softc* @XHCI_BUS2SC(i32 %10)
  store %struct.xhci_softc* %11, %struct.xhci_softc** %3, align 8
  %12 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %13 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %4, align 4
  %15 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %16 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %1
  %21 = load i32, i32* @UE_DIR_IN, align 4
  %22 = load i32, i32* %4, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %4, align 4
  br label %24

24:                                               ; preds = %20, %1
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @XHCI_EPNO2EPID(i32 %25)
  store i32 %26, i32* %4, align 4
  %27 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %28 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %27, i32 0, i32 2
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %5, align 4
  %34 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %35 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %34, i32 0, i32 2
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %24
  %44 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %45 = load i32, i32* @door, align 4
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @XHCI_DOORBELL(i32 %46)
  %48 = load i32, i32* %4, align 4
  %49 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %50 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @XHCI_DB_SID_SET(i32 %51)
  %53 = or i32 %48, %52
  %54 = call i32 @XWRITE4(%struct.xhci_softc* %44, i32 %45, i32 %47, i32 %53)
  br label %55

55:                                               ; preds = %43, %24
  ret void
}

declare dso_local %struct.xhci_softc* @XHCI_BUS2SC(i32) #1

declare dso_local i32 @XHCI_EPNO2EPID(i32) #1

declare dso_local i32 @XWRITE4(%struct.xhci_softc*, i32, i32, i32) #1

declare dso_local i32 @XHCI_DOORBELL(i32) #1

declare dso_local i32 @XHCI_DB_SID_SET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
