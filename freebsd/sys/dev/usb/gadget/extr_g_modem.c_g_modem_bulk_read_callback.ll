; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/gadget/extr_g_modem.c_g_modem_bulk_read_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/gadget/extr_g_modem.c_g_modem_bulk_read_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32 }
%struct.g_modem_softc = type { i32, i32, i32, i32, i32, i32* }

@.str = private unnamed_addr constant [34 x i8] c"st=%d aframes=%d actlen=%d bytes\0A\00", align 1
@G_MODEM_MODE_LOOP = common dso_local global i32 0, align 4
@G_MODEM_BULK_WR = common dso_local global i64 0, align 8
@G_MODEM_MODE_SILENT = common dso_local global i32 0, align 4
@G_MODEM_BUFSIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"error=%s\0A\00", align 1
@USB_ERR_CANCELLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*, i32)* @g_modem_bulk_read_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_modem_bulk_read_callback(%struct.usb_xfer* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.g_modem_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.usb_xfer* %0, %struct.usb_xfer** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %9 = call %struct.g_modem_softc* @usbd_xfer_softc(%struct.usb_xfer* %8)
  store %struct.g_modem_softc* %9, %struct.g_modem_softc** %5, align 8
  %10 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %11 = call i32 @usbd_xfer_status(%struct.usb_xfer* %10, i32* %6, i32* null, i32* %7, i32* null)
  %12 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %13 = call i32 @USB_GET_STATE(%struct.usb_xfer* %12)
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 (i8*, i32, ...) @DPRINTF(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %14, i32 %15)
  %17 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %18 = call i32 @USB_GET_STATE(%struct.usb_xfer* %17)
  switch i32 %18, label %68 [
    i32 128, label %19
    i32 129, label %44
  ]

19:                                               ; preds = %2
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.g_modem_softc*, %struct.g_modem_softc** %5, align 8
  %22 = getelementptr inbounds %struct.g_modem_softc, %struct.g_modem_softc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = add nsw i32 %23, %20
  store i32 %24, i32* %22, align 8
  %25 = load %struct.g_modem_softc*, %struct.g_modem_softc** %5, align 8
  %26 = getelementptr inbounds %struct.g_modem_softc, %struct.g_modem_softc* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @G_MODEM_MODE_LOOP, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %43

30:                                               ; preds = %19
  %31 = load %struct.g_modem_softc*, %struct.g_modem_softc** %5, align 8
  %32 = getelementptr inbounds %struct.g_modem_softc, %struct.g_modem_softc* %31, i32 0, i32 1
  store i32 1, i32* %32, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.g_modem_softc*, %struct.g_modem_softc** %5, align 8
  %35 = getelementptr inbounds %struct.g_modem_softc, %struct.g_modem_softc* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 8
  %36 = load %struct.g_modem_softc*, %struct.g_modem_softc** %5, align 8
  %37 = getelementptr inbounds %struct.g_modem_softc, %struct.g_modem_softc* %36, i32 0, i32 5
  %38 = load i32*, i32** %37, align 8
  %39 = load i64, i64* @G_MODEM_BULK_WR, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @usbd_transfer_start(i32 %41)
  br label %79

43:                                               ; preds = %19
  br label %44

44:                                               ; preds = %2, %43
  br label %45

45:                                               ; preds = %75, %44
  %46 = load %struct.g_modem_softc*, %struct.g_modem_softc** %5, align 8
  %47 = getelementptr inbounds %struct.g_modem_softc, %struct.g_modem_softc* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @G_MODEM_MODE_SILENT, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %56, label %51

51:                                               ; preds = %45
  %52 = load %struct.g_modem_softc*, %struct.g_modem_softc** %5, align 8
  %53 = getelementptr inbounds %struct.g_modem_softc, %struct.g_modem_softc* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51, %45
  br label %79

57:                                               ; preds = %51
  %58 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %59 = load %struct.g_modem_softc*, %struct.g_modem_softc** %5, align 8
  %60 = getelementptr inbounds %struct.g_modem_softc, %struct.g_modem_softc* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @G_MODEM_BUFSIZE, align 4
  %63 = call i32 @usbd_xfer_set_frame_data(%struct.usb_xfer* %58, i32 0, i32 %61, i32 %62)
  %64 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %65 = call i32 @usbd_xfer_set_frames(%struct.usb_xfer* %64, i32 1)
  %66 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %67 = call i32 @usbd_transfer_submit(%struct.usb_xfer* %66)
  br label %79

68:                                               ; preds = %2
  %69 = load i32, i32* %4, align 4
  %70 = call i32 @usbd_errstr(i32 %69)
  %71 = call i32 (i8*, i32, ...) @DPRINTF(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* @USB_ERR_CANCELLED, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %68
  %76 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %77 = call i32 @usbd_xfer_set_stall(%struct.usb_xfer* %76)
  br label %45

78:                                               ; preds = %68
  br label %79

79:                                               ; preds = %78, %57, %56, %30
  ret void
}

declare dso_local %struct.g_modem_softc* @usbd_xfer_softc(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_xfer_status(%struct.usb_xfer*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @DPRINTF(i8*, i32, ...) #1

declare dso_local i32 @USB_GET_STATE(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_transfer_start(i32) #1

declare dso_local i32 @usbd_xfer_set_frame_data(%struct.usb_xfer*, i32, i32, i32) #1

declare dso_local i32 @usbd_xfer_set_frames(%struct.usb_xfer*, i32) #1

declare dso_local i32 @usbd_transfer_submit(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_errstr(i32) #1

declare dso_local i32 @usbd_xfer_set_stall(%struct.usb_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
