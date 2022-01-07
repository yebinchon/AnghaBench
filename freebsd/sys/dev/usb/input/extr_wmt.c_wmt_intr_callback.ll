; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/input/extr_wmt.c_wmt_intr_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/input/extr_wmt.c_wmt_intr_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32 }
%struct.wmt_softc = type { i32, i32, i32* }
%struct.usb_page_cache = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"sc=%p actlen=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Ignored transfer, %d bytes\0A\00", align 1
@USB_ERR_CANCELLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*, i32)* @wmt_intr_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wmt_intr_callback(%struct.usb_xfer* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.wmt_softc*, align 8
  %6 = alloca %struct.usb_page_cache*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.usb_xfer* %0, %struct.usb_xfer** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %10 = call %struct.wmt_softc* @usbd_xfer_softc(%struct.usb_xfer* %9)
  store %struct.wmt_softc* %10, %struct.wmt_softc** %5, align 8
  %11 = load %struct.wmt_softc*, %struct.wmt_softc** %5, align 8
  %12 = getelementptr inbounds %struct.wmt_softc, %struct.wmt_softc* %11, i32 0, i32 2
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %7, align 8
  %14 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %15 = call i32 @usbd_xfer_status(%struct.usb_xfer* %14, i32* %8, i32* null, i32* null, i32* null)
  %16 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %17 = call i32 @USB_GET_STATE(%struct.usb_xfer* %16)
  switch i32 %17, label %109 [
    i32 128, label %18
    i32 129, label %101
  ]

18:                                               ; preds = %2
  %19 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %20 = call %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer* %19, i32 0)
  store %struct.usb_page_cache* %20, %struct.usb_page_cache** %6, align 8
  %21 = load %struct.wmt_softc*, %struct.wmt_softc** %5, align 8
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @DPRINTFN(i32 6, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), %struct.wmt_softc* %21, i32 %22)
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.wmt_softc*, %struct.wmt_softc** %5, align 8
  %26 = getelementptr inbounds %struct.wmt_softc, %struct.wmt_softc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp sge i32 %24, %27
  br i1 %28, label %37, label %29

29:                                               ; preds = %18
  %30 = load i32, i32* %8, align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %96

32:                                               ; preds = %29
  %33 = load %struct.wmt_softc*, %struct.wmt_softc** %5, align 8
  %34 = getelementptr inbounds %struct.wmt_softc, %struct.wmt_softc* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %96

37:                                               ; preds = %32, %18
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.wmt_softc*, %struct.wmt_softc** %5, align 8
  %40 = getelementptr inbounds %struct.wmt_softc, %struct.wmt_softc* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp sgt i32 %38, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %37
  %44 = load %struct.wmt_softc*, %struct.wmt_softc** %5, align 8
  %45 = getelementptr inbounds %struct.wmt_softc, %struct.wmt_softc* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* %8, align 4
  br label %47

47:                                               ; preds = %43, %37
  %48 = load %struct.usb_page_cache*, %struct.usb_page_cache** %6, align 8
  %49 = load i32*, i32** %7, align 8
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @usbd_copy_out(%struct.usb_page_cache* %48, i32 0, i32* %49, i32 %50)
  %52 = load %struct.wmt_softc*, %struct.wmt_softc** %5, align 8
  %53 = getelementptr inbounds %struct.wmt_softc, %struct.wmt_softc* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %47
  %57 = load i32*, i32** %7, align 8
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.wmt_softc*, %struct.wmt_softc** %5, align 8
  %60 = getelementptr inbounds %struct.wmt_softc, %struct.wmt_softc* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %58, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %56
  br label %97

64:                                               ; preds = %56, %47
  %65 = load i32, i32* %8, align 4
  %66 = load %struct.wmt_softc*, %struct.wmt_softc** %5, align 8
  %67 = getelementptr inbounds %struct.wmt_softc, %struct.wmt_softc* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp slt i32 %65, %68
  br i1 %69, label %70, label %81

70:                                               ; preds = %64
  %71 = load i32*, i32** %7, align 8
  %72 = load i32, i32* %8, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load %struct.wmt_softc*, %struct.wmt_softc** %5, align 8
  %76 = getelementptr inbounds %struct.wmt_softc, %struct.wmt_softc* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %8, align 4
  %79 = sub nsw i32 %77, %78
  %80 = call i32 @bzero(i32* %74, i32 %79)
  br label %81

81:                                               ; preds = %70, %64
  %82 = load %struct.wmt_softc*, %struct.wmt_softc** %5, align 8
  %83 = getelementptr inbounds %struct.wmt_softc, %struct.wmt_softc* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %81
  %87 = load i32, i32* %8, align 4
  %88 = add nsw i32 %87, -1
  store i32 %88, i32* %8, align 4
  %89 = load i32*, i32** %7, align 8
  %90 = getelementptr inbounds i32, i32* %89, i32 1
  store i32* %90, i32** %7, align 8
  br label %91

91:                                               ; preds = %86, %81
  %92 = load %struct.wmt_softc*, %struct.wmt_softc** %5, align 8
  %93 = load i32*, i32** %7, align 8
  %94 = load i32, i32* %8, align 4
  %95 = call i32 @wmt_process_report(%struct.wmt_softc* %92, i32* %93, i32 %94)
  br label %100

96:                                               ; preds = %32, %29
  br label %97

97:                                               ; preds = %96, %63
  %98 = load i32, i32* %8, align 4
  %99 = call i32 @DPRINTF(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %98)
  br label %100

100:                                              ; preds = %97, %91
  br label %101

101:                                              ; preds = %2, %100
  br label %102

102:                                              ; preds = %113, %101
  %103 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %104 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %105 = call i32 @usbd_xfer_max_len(%struct.usb_xfer* %104)
  %106 = call i32 @usbd_xfer_set_frame_len(%struct.usb_xfer* %103, i32 0, i32 %105)
  %107 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %108 = call i32 @usbd_transfer_submit(%struct.usb_xfer* %107)
  br label %117

109:                                              ; preds = %2
  %110 = load i32, i32* %4, align 4
  %111 = load i32, i32* @USB_ERR_CANCELLED, align 4
  %112 = icmp ne i32 %110, %111
  br i1 %112, label %113, label %116

113:                                              ; preds = %109
  %114 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %115 = call i32 @usbd_xfer_set_stall(%struct.usb_xfer* %114)
  br label %102

116:                                              ; preds = %109
  br label %117

117:                                              ; preds = %116, %102
  ret void
}

declare dso_local %struct.wmt_softc* @usbd_xfer_softc(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_xfer_status(%struct.usb_xfer*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @USB_GET_STATE(%struct.usb_xfer*) #1

declare dso_local %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer*, i32) #1

declare dso_local i32 @DPRINTFN(i32, i8*, %struct.wmt_softc*, i32) #1

declare dso_local i32 @usbd_copy_out(%struct.usb_page_cache*, i32, i32*, i32) #1

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i32 @wmt_process_report(%struct.wmt_softc*, i32*, i32) #1

declare dso_local i32 @DPRINTF(i8*, i32) #1

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
