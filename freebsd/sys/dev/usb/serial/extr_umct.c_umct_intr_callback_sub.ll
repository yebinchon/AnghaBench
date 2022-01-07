; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_umct.c_umct_intr_callback_sub.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_umct.c_umct_intr_callback_sub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32 }
%struct.umct_softc = type { i32, i32, i32 }
%struct.usb_page_cache = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"too short message\0A\00", align 1
@UMCT_MSR_CTS = common dso_local global i32 0, align 4
@SER_CTS = common dso_local global i32 0, align 4
@UMCT_MSR_CD = common dso_local global i32 0, align 4
@SER_DCD = common dso_local global i32 0, align 4
@UMCT_MSR_RI = common dso_local global i32 0, align 4
@SER_RI = common dso_local global i32 0, align 4
@UMCT_MSR_RTS = common dso_local global i32 0, align 4
@SER_DSR = common dso_local global i32 0, align 4
@USB_ERR_CANCELLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*, i32)* @umct_intr_callback_sub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @umct_intr_callback_sub(%struct.usb_xfer* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.umct_softc*, align 8
  %6 = alloca %struct.usb_page_cache*, align 8
  %7 = alloca [2 x i32], align 4
  %8 = alloca i32, align 4
  store %struct.usb_xfer* %0, %struct.usb_xfer** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %10 = call %struct.umct_softc* @usbd_xfer_softc(%struct.usb_xfer* %9)
  store %struct.umct_softc* %10, %struct.umct_softc** %5, align 8
  %11 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %12 = call i32 @usbd_xfer_status(%struct.usb_xfer* %11, i32* %8, i32* null, i32* null, i32* null)
  %13 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %14 = call i32 @USB_GET_STATE(%struct.usb_xfer* %13)
  switch i32 %14, label %91 [
    i32 128, label %15
    i32 129, label %83
  ]

15:                                               ; preds = %2
  %16 = load i32, i32* %8, align 4
  %17 = icmp slt i32 %16, 2
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = call i32 @DPRINTF(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %84

20:                                               ; preds = %15
  %21 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %22 = call %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer* %21, i32 0)
  store %struct.usb_page_cache* %22, %struct.usb_page_cache** %6, align 8
  %23 = load %struct.usb_page_cache*, %struct.usb_page_cache** %6, align 8
  %24 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %25 = call i32 @usbd_copy_out(%struct.usb_page_cache* %23, i32 0, i32* %24, i32 8)
  %26 = load %struct.umct_softc*, %struct.umct_softc** %5, align 8
  %27 = getelementptr inbounds %struct.umct_softc, %struct.umct_softc* %26, i32 0, i32 2
  store i32 0, i32* %27, align 4
  %28 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @UMCT_MSR_CTS, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %20
  %34 = load i32, i32* @SER_CTS, align 4
  %35 = load %struct.umct_softc*, %struct.umct_softc** %5, align 8
  %36 = getelementptr inbounds %struct.umct_softc, %struct.umct_softc* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 4
  br label %39

39:                                               ; preds = %33, %20
  %40 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @UMCT_MSR_CD, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %39
  %46 = load i32, i32* @SER_DCD, align 4
  %47 = load %struct.umct_softc*, %struct.umct_softc** %5, align 8
  %48 = getelementptr inbounds %struct.umct_softc, %struct.umct_softc* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 4
  br label %51

51:                                               ; preds = %45, %39
  %52 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @UMCT_MSR_RI, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %51
  %58 = load i32, i32* @SER_RI, align 4
  %59 = load %struct.umct_softc*, %struct.umct_softc** %5, align 8
  %60 = getelementptr inbounds %struct.umct_softc, %struct.umct_softc* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 4
  br label %63

63:                                               ; preds = %57, %51
  %64 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @UMCT_MSR_RTS, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %63
  %70 = load i32, i32* @SER_DSR, align 4
  %71 = load %struct.umct_softc*, %struct.umct_softc** %5, align 8
  %72 = getelementptr inbounds %struct.umct_softc, %struct.umct_softc* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 4
  br label %75

75:                                               ; preds = %69, %63
  %76 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.umct_softc*, %struct.umct_softc** %5, align 8
  %79 = getelementptr inbounds %struct.umct_softc, %struct.umct_softc* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 4
  %80 = load %struct.umct_softc*, %struct.umct_softc** %5, align 8
  %81 = getelementptr inbounds %struct.umct_softc, %struct.umct_softc* %80, i32 0, i32 1
  %82 = call i32 @ucom_status_change(i32* %81)
  br label %83

83:                                               ; preds = %2, %75
  br label %84

84:                                               ; preds = %95, %83, %18
  %85 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %86 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %87 = call i32 @usbd_xfer_max_len(%struct.usb_xfer* %86)
  %88 = call i32 @usbd_xfer_set_frame_len(%struct.usb_xfer* %85, i32 0, i32 %87)
  %89 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %90 = call i32 @usbd_transfer_submit(%struct.usb_xfer* %89)
  br label %99

91:                                               ; preds = %2
  %92 = load i32, i32* %4, align 4
  %93 = load i32, i32* @USB_ERR_CANCELLED, align 4
  %94 = icmp ne i32 %92, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %91
  %96 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %97 = call i32 @usbd_xfer_set_stall(%struct.usb_xfer* %96)
  br label %84

98:                                               ; preds = %91
  br label %99

99:                                               ; preds = %98, %84
  ret void
}

declare dso_local %struct.umct_softc* @usbd_xfer_softc(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_xfer_status(%struct.usb_xfer*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @USB_GET_STATE(%struct.usb_xfer*) #1

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer*, i32) #1

declare dso_local i32 @usbd_copy_out(%struct.usb_page_cache*, i32, i32*, i32) #1

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
