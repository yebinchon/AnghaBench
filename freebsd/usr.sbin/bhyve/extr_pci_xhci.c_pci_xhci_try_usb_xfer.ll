; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_xhci.c_pci_xhci_try_usb_xfer.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_xhci.c_pci_xhci_try_usb_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_xhci_softc = type { i32 }
%struct.pci_xhci_dev_emu = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, %struct.usb_data_xfer*, i32, i32)* }
%struct.usb_data_xfer = type { i64, i32* }
%struct.pci_xhci_dev_ep = type { %struct.usb_data_xfer* }
%struct.xhci_endp_ctx = type { i32 }

@XHCI_ST_EPCTX_RUNNING = common dso_local global i32 0, align 4
@USB_XFER_IN = common dso_local global i32 0, align 4
@USB_XFER_OUT = common dso_local global i32 0, align 4
@USB_ERR_CANCELLED = common dso_local global i32 0, align 4
@USB_NAK = common dso_local global i64 0, align 8
@XHCI_TRB_ERROR_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_xhci_softc*, %struct.pci_xhci_dev_emu*, %struct.pci_xhci_dev_ep*, %struct.xhci_endp_ctx*, i32, i32)* @pci_xhci_try_usb_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_xhci_try_usb_xfer(%struct.pci_xhci_softc* %0, %struct.pci_xhci_dev_emu* %1, %struct.pci_xhci_dev_ep* %2, %struct.xhci_endp_ctx* %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.pci_xhci_softc*, align 8
  %8 = alloca %struct.pci_xhci_dev_emu*, align 8
  %9 = alloca %struct.pci_xhci_dev_ep*, align 8
  %10 = alloca %struct.xhci_endp_ctx*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.usb_data_xfer*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.pci_xhci_softc* %0, %struct.pci_xhci_softc** %7, align 8
  store %struct.pci_xhci_dev_emu* %1, %struct.pci_xhci_dev_emu** %8, align 8
  store %struct.pci_xhci_dev_ep* %2, %struct.pci_xhci_dev_ep** %9, align 8
  store %struct.xhci_endp_ctx* %3, %struct.xhci_endp_ctx** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %16 = load %struct.xhci_endp_ctx*, %struct.xhci_endp_ctx** %10, align 8
  %17 = getelementptr inbounds %struct.xhci_endp_ctx, %struct.xhci_endp_ctx* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @XHCI_ST_EPCTX_RUNNING, align 4
  %20 = call i32 @FIELD_REPLACE(i32 %18, i32 %19, i32 7, i32 0)
  %21 = load %struct.xhci_endp_ctx*, %struct.xhci_endp_ctx** %10, align 8
  %22 = getelementptr inbounds %struct.xhci_endp_ctx, %struct.xhci_endp_ctx* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %23 = load %struct.pci_xhci_dev_ep*, %struct.pci_xhci_dev_ep** %9, align 8
  %24 = getelementptr inbounds %struct.pci_xhci_dev_ep, %struct.pci_xhci_dev_ep* %23, i32 0, i32 0
  %25 = load %struct.usb_data_xfer*, %struct.usb_data_xfer** %24, align 8
  store %struct.usb_data_xfer* %25, %struct.usb_data_xfer** %13, align 8
  %26 = load %struct.usb_data_xfer*, %struct.usb_data_xfer** %13, align 8
  %27 = call i32 @USB_DATA_XFER_LOCK(%struct.usb_data_xfer* %26)
  %28 = load %struct.pci_xhci_dev_emu*, %struct.pci_xhci_dev_emu** %8, align 8
  %29 = getelementptr inbounds %struct.pci_xhci_dev_emu, %struct.pci_xhci_dev_emu* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32 (i32, %struct.usb_data_xfer*, i32, i32)*, i32 (i32, %struct.usb_data_xfer*, i32, i32)** %31, align 8
  %33 = icmp ne i32 (i32, %struct.usb_data_xfer*, i32, i32)* %32, null
  br i1 %33, label %34, label %92

34:                                               ; preds = %6
  %35 = load %struct.pci_xhci_dev_emu*, %struct.pci_xhci_dev_emu** %8, align 8
  %36 = getelementptr inbounds %struct.pci_xhci_dev_emu, %struct.pci_xhci_dev_emu* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32 (i32, %struct.usb_data_xfer*, i32, i32)*, i32 (i32, %struct.usb_data_xfer*, i32, i32)** %38, align 8
  %40 = load %struct.pci_xhci_dev_emu*, %struct.pci_xhci_dev_emu** %8, align 8
  %41 = getelementptr inbounds %struct.pci_xhci_dev_emu, %struct.pci_xhci_dev_emu* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.usb_data_xfer*, %struct.usb_data_xfer** %13, align 8
  %44 = load i32, i32* %12, align 4
  %45 = and i32 %44, 1
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %34
  %48 = load i32, i32* @USB_XFER_IN, align 4
  br label %51

49:                                               ; preds = %34
  %50 = load i32, i32* @USB_XFER_OUT, align 4
  br label %51

51:                                               ; preds = %49, %47
  %52 = phi i32 [ %48, %47 ], [ %50, %49 ]
  %53 = load i32, i32* %12, align 4
  %54 = sdiv i32 %53, 2
  %55 = call i32 %39(i32 %42, %struct.usb_data_xfer* %43, i32 %52, i32 %54)
  store i32 %55, i32* %14, align 4
  %56 = load i32, i32* %14, align 4
  %57 = load i32, i32* @USB_ERR_CANCELLED, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %73

59:                                               ; preds = %51
  %60 = load %struct.usb_data_xfer*, %struct.usb_data_xfer** %13, align 8
  %61 = getelementptr inbounds %struct.usb_data_xfer, %struct.usb_data_xfer* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = load %struct.usb_data_xfer*, %struct.usb_data_xfer** %13, align 8
  %64 = getelementptr inbounds %struct.usb_data_xfer, %struct.usb_data_xfer* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds i32, i32* %62, i64 %65
  %67 = call i64 @USB_DATA_GET_ERRCODE(i32* %66)
  %68 = load i64, i64* @USB_NAK, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %59
  %71 = load i32, i32* @XHCI_TRB_ERROR_SUCCESS, align 4
  store i32 %71, i32* %14, align 4
  br label %72

72:                                               ; preds = %70, %59
  br label %91

73:                                               ; preds = %51
  %74 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %7, align 8
  %75 = load %struct.usb_data_xfer*, %struct.usb_data_xfer** %13, align 8
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* %12, align 4
  %78 = call i32 @pci_xhci_xfer_complete(%struct.pci_xhci_softc* %74, %struct.usb_data_xfer* %75, i32 %76, i32 %77, i32* %15)
  store i32 %78, i32* %14, align 4
  %79 = load i32, i32* %14, align 4
  %80 = load i32, i32* @XHCI_TRB_ERROR_SUCCESS, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %88

82:                                               ; preds = %73
  %83 = load i32, i32* %15, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %7, align 8
  %87 = call i32 @pci_xhci_assert_interrupt(%struct.pci_xhci_softc* %86)
  br label %88

88:                                               ; preds = %85, %82, %73
  %89 = load %struct.usb_data_xfer*, %struct.usb_data_xfer** %13, align 8
  %90 = call i32 @USB_DATA_XFER_RESET(%struct.usb_data_xfer* %89)
  br label %91

91:                                               ; preds = %88, %72
  br label %92

92:                                               ; preds = %91, %6
  %93 = load %struct.usb_data_xfer*, %struct.usb_data_xfer** %13, align 8
  %94 = call i32 @USB_DATA_XFER_UNLOCK(%struct.usb_data_xfer* %93)
  %95 = load i32, i32* %14, align 4
  ret i32 %95
}

declare dso_local i32 @FIELD_REPLACE(i32, i32, i32, i32) #1

declare dso_local i32 @USB_DATA_XFER_LOCK(%struct.usb_data_xfer*) #1

declare dso_local i64 @USB_DATA_GET_ERRCODE(i32*) #1

declare dso_local i32 @pci_xhci_xfer_complete(%struct.pci_xhci_softc*, %struct.usb_data_xfer*, i32, i32, i32*) #1

declare dso_local i32 @pci_xhci_assert_interrupt(%struct.pci_xhci_softc*) #1

declare dso_local i32 @USB_DATA_XFER_RESET(%struct.usb_data_xfer*) #1

declare dso_local i32 @USB_DATA_XFER_UNLOCK(%struct.usb_data_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
