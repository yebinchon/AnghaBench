; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_ubsa.c_ubsa_intr_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_ubsa.c_ubsa_intr_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32 }
%struct.ubsa_softc = type { i32, i32, i32 }
%struct.usb_page_cache = type { i32 }

@UBSA_MSR_CTS = common dso_local global i32 0, align 4
@SER_CTS = common dso_local global i32 0, align 4
@UBSA_MSR_DCD = common dso_local global i32 0, align 4
@SER_DCD = common dso_local global i32 0, align 4
@UBSA_MSR_RI = common dso_local global i32 0, align 4
@SER_RI = common dso_local global i32 0, align 4
@UBSA_MSR_DSR = common dso_local global i32 0, align 4
@SER_DSR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"lsr = 0x%02x, msr = 0x%02x\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"ignoring short packet, %d bytes\0A\00", align 1
@USB_ERR_CANCELLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*, i32)* @ubsa_intr_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ubsa_intr_callback(%struct.usb_xfer* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ubsa_softc*, align 8
  %6 = alloca %struct.usb_page_cache*, align 8
  %7 = alloca [4 x i32], align 16
  %8 = alloca i32, align 4
  store %struct.usb_xfer* %0, %struct.usb_xfer** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %10 = call %struct.ubsa_softc* @usbd_xfer_softc(%struct.usb_xfer* %9)
  store %struct.ubsa_softc* %10, %struct.ubsa_softc** %5, align 8
  %11 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %12 = call i32 @usbd_xfer_status(%struct.usb_xfer* %11, i32* %8, i32* null, i32* null, i32* null)
  %13 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %14 = call i32 @USB_GET_STATE(%struct.usb_xfer* %13)
  switch i32 %14, label %100 [
    i32 128, label %15
    i32 129, label %92
  ]

15:                                               ; preds = %2
  %16 = load i32, i32* %8, align 4
  %17 = icmp sge i32 %16, 16
  br i1 %17, label %18, label %88

18:                                               ; preds = %15
  %19 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %20 = call %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer* %19, i32 0)
  store %struct.usb_page_cache* %20, %struct.usb_page_cache** %6, align 8
  %21 = load %struct.usb_page_cache*, %struct.usb_page_cache** %6, align 8
  %22 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %23 = call i32 @usbd_copy_out(%struct.usb_page_cache* %21, i32 0, i32* %22, i32 16)
  %24 = load %struct.ubsa_softc*, %struct.ubsa_softc** %5, align 8
  %25 = getelementptr inbounds %struct.ubsa_softc, %struct.ubsa_softc* %24, i32 0, i32 2
  store i32 0, i32* %25, align 4
  %26 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @UBSA_MSR_CTS, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %18
  %32 = load i32, i32* @SER_CTS, align 4
  %33 = load %struct.ubsa_softc*, %struct.ubsa_softc** %5, align 8
  %34 = getelementptr inbounds %struct.ubsa_softc, %struct.ubsa_softc* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 4
  br label %37

37:                                               ; preds = %31, %18
  %38 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @UBSA_MSR_DCD, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %37
  %44 = load i32, i32* @SER_DCD, align 4
  %45 = load %struct.ubsa_softc*, %struct.ubsa_softc** %5, align 8
  %46 = getelementptr inbounds %struct.ubsa_softc, %struct.ubsa_softc* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %43, %37
  %50 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @UBSA_MSR_RI, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %49
  %56 = load i32, i32* @SER_RI, align 4
  %57 = load %struct.ubsa_softc*, %struct.ubsa_softc** %5, align 8
  %58 = getelementptr inbounds %struct.ubsa_softc, %struct.ubsa_softc* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 4
  br label %61

61:                                               ; preds = %55, %49
  %62 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @UBSA_MSR_DSR, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %61
  %68 = load i32, i32* @SER_DSR, align 4
  %69 = load %struct.ubsa_softc*, %struct.ubsa_softc** %5, align 8
  %70 = getelementptr inbounds %struct.ubsa_softc, %struct.ubsa_softc* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 4
  br label %73

73:                                               ; preds = %67, %61
  %74 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.ubsa_softc*, %struct.ubsa_softc** %5, align 8
  %77 = getelementptr inbounds %struct.ubsa_softc, %struct.ubsa_softc* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 4
  %78 = load %struct.ubsa_softc*, %struct.ubsa_softc** %5, align 8
  %79 = getelementptr inbounds %struct.ubsa_softc, %struct.ubsa_softc* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.ubsa_softc*, %struct.ubsa_softc** %5, align 8
  %82 = getelementptr inbounds %struct.ubsa_softc, %struct.ubsa_softc* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = call i32 (i8*, i32, ...) @DPRINTF(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %80, i32 %83)
  %85 = load %struct.ubsa_softc*, %struct.ubsa_softc** %5, align 8
  %86 = getelementptr inbounds %struct.ubsa_softc, %struct.ubsa_softc* %85, i32 0, i32 1
  %87 = call i32 @ucom_status_change(i32* %86)
  br label %91

88:                                               ; preds = %15
  %89 = load i32, i32* %8, align 4
  %90 = call i32 (i8*, i32, ...) @DPRINTF(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %89)
  br label %91

91:                                               ; preds = %88, %73
  br label %92

92:                                               ; preds = %2, %91
  br label %93

93:                                               ; preds = %104, %92
  %94 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %95 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %96 = call i32 @usbd_xfer_max_len(%struct.usb_xfer* %95)
  %97 = call i32 @usbd_xfer_set_frame_len(%struct.usb_xfer* %94, i32 0, i32 %96)
  %98 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %99 = call i32 @usbd_transfer_submit(%struct.usb_xfer* %98)
  br label %108

100:                                              ; preds = %2
  %101 = load i32, i32* %4, align 4
  %102 = load i32, i32* @USB_ERR_CANCELLED, align 4
  %103 = icmp ne i32 %101, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %100
  %105 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %106 = call i32 @usbd_xfer_set_stall(%struct.usb_xfer* %105)
  br label %93

107:                                              ; preds = %100
  br label %108

108:                                              ; preds = %107, %93
  ret void
}

declare dso_local %struct.ubsa_softc* @usbd_xfer_softc(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_xfer_status(%struct.usb_xfer*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @USB_GET_STATE(%struct.usb_xfer*) #1

declare dso_local %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer*, i32) #1

declare dso_local i32 @usbd_copy_out(%struct.usb_page_cache*, i32, i32*, i32) #1

declare dso_local i32 @DPRINTF(i8*, i32, ...) #1

declare dso_local i32 @ucom_status_change(i32*) #1

declare dso_local i32 @usbd_xfer_set_frame_len(%struct.usb_xfer*, i32, i32) #1

declare dso_local i32 @usbd_xfer_max_len(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_transfer_submit(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_xfer_set_stall(%struct.usb_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
