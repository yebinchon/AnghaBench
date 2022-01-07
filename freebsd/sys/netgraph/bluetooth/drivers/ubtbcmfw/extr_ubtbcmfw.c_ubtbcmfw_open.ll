; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/bluetooth/drivers/ubtbcmfw/extr_ubtbcmfw.c_ubtbcmfw_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/bluetooth/drivers/ubtbcmfw/extr_ubtbcmfw.c_ubtbcmfw_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_fifo = type { i32 }
%struct.ubtbcmfw_softc = type { %struct.usb_xfer** }
%struct.usb_xfer = type { i32 }

@FREAD = common dso_local global i32 0, align 4
@UBTBCMFW_INTR_DT_RD = common dso_local global i64 0, align 8
@FWRITE = common dso_local global i32 0, align 4
@UBTBCMFW_BULK_DT_WR = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@UBTBCMFW_IFQ_MAXLEN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_fifo*, i32)* @ubtbcmfw_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ubtbcmfw_open(%struct.usb_fifo* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_fifo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ubtbcmfw_softc*, align 8
  %7 = alloca %struct.usb_xfer*, align 8
  store %struct.usb_fifo* %0, %struct.usb_fifo** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.usb_fifo*, %struct.usb_fifo** %4, align 8
  %9 = call %struct.ubtbcmfw_softc* @usb_fifo_softc(%struct.usb_fifo* %8)
  store %struct.ubtbcmfw_softc* %9, %struct.ubtbcmfw_softc** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @FREAD, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = load %struct.ubtbcmfw_softc*, %struct.ubtbcmfw_softc** %6, align 8
  %16 = getelementptr inbounds %struct.ubtbcmfw_softc, %struct.ubtbcmfw_softc* %15, i32 0, i32 0
  %17 = load %struct.usb_xfer**, %struct.usb_xfer*** %16, align 8
  %18 = load i64, i64* @UBTBCMFW_INTR_DT_RD, align 8
  %19 = getelementptr inbounds %struct.usb_xfer*, %struct.usb_xfer** %17, i64 %18
  %20 = load %struct.usb_xfer*, %struct.usb_xfer** %19, align 8
  store %struct.usb_xfer* %20, %struct.usb_xfer** %7, align 8
  br label %36

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @FWRITE, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %21
  %27 = load %struct.ubtbcmfw_softc*, %struct.ubtbcmfw_softc** %6, align 8
  %28 = getelementptr inbounds %struct.ubtbcmfw_softc, %struct.ubtbcmfw_softc* %27, i32 0, i32 0
  %29 = load %struct.usb_xfer**, %struct.usb_xfer*** %28, align 8
  %30 = load i64, i64* @UBTBCMFW_BULK_DT_WR, align 8
  %31 = getelementptr inbounds %struct.usb_xfer*, %struct.usb_xfer** %29, i64 %30
  %32 = load %struct.usb_xfer*, %struct.usb_xfer** %31, align 8
  store %struct.usb_xfer* %32, %struct.usb_xfer** %7, align 8
  br label %35

33:                                               ; preds = %21
  %34 = load i32, i32* @EINVAL, align 4
  store i32 %34, i32* %3, align 4
  br label %46

35:                                               ; preds = %26
  br label %36

36:                                               ; preds = %35, %14
  %37 = load %struct.usb_fifo*, %struct.usb_fifo** %4, align 8
  %38 = load %struct.usb_xfer*, %struct.usb_xfer** %7, align 8
  %39 = call i32 @usbd_xfer_max_len(%struct.usb_xfer* %38)
  %40 = load i32, i32* @UBTBCMFW_IFQ_MAXLEN, align 4
  %41 = call i64 @usb_fifo_alloc_buffer(%struct.usb_fifo* %37, i32 %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %36
  %44 = load i32, i32* @ENOMEM, align 4
  store i32 %44, i32* %3, align 4
  br label %46

45:                                               ; preds = %36
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %45, %43, %33
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local %struct.ubtbcmfw_softc* @usb_fifo_softc(%struct.usb_fifo*) #1

declare dso_local i64 @usb_fifo_alloc_buffer(%struct.usb_fifo*, i32, i32) #1

declare dso_local i32 @usbd_xfer_max_len(%struct.usb_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
