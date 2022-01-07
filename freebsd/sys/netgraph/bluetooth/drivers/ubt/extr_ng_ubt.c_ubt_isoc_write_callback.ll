; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/bluetooth/drivers/ubt/extr_ng_ubt.c_ubt_isoc_write_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/bluetooth/drivers/ubt/extr_ng_ubt.c_ubt_isoc_write_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32 }
%struct.ubt_softc = type { i32 }
%struct.usb_page_cache = type { i32 }
%struct.mbuf = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"sent %d bytes to isoc-out pipe\0A\00", align 1
@USB_ERR_CANCELLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*, i32)* @ubt_isoc_write_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ubt_isoc_write_callback(%struct.usb_xfer* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ubt_softc*, align 8
  %6 = alloca %struct.usb_page_cache*, align 8
  %7 = alloca %struct.mbuf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.usb_xfer* %0, %struct.usb_xfer** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %14 = call %struct.ubt_softc* @usbd_xfer_softc(%struct.usb_xfer* %13)
  store %struct.ubt_softc* %14, %struct.ubt_softc** %5, align 8
  %15 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %16 = call i32 @usbd_xfer_status(%struct.usb_xfer* %15, i32* %11, i32* null, i32* null, i32* %12)
  %17 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %18 = call %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer* %17, i32 0)
  store %struct.usb_page_cache* %18, %struct.usb_page_cache** %6, align 8
  %19 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %20 = call i32 @USB_GET_STATE(%struct.usb_xfer* %19)
  switch i32 %20, label %125 [
    i32 128, label %21
    i32 129, label %30
  ]

21:                                               ; preds = %2
  %22 = load %struct.ubt_softc*, %struct.ubt_softc** %5, align 8
  %23 = load i32, i32* %11, align 4
  %24 = call i32 @UBT_INFO(%struct.ubt_softc* %22, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load %struct.ubt_softc*, %struct.ubt_softc** %5, align 8
  %26 = load i32, i32* %11, align 4
  %27 = call i32 @UBT_STAT_BYTES_SENT(%struct.ubt_softc* %25, i32 %26)
  %28 = load %struct.ubt_softc*, %struct.ubt_softc** %5, align 8
  %29 = call i32 @UBT_STAT_PCKTS_SENT(%struct.ubt_softc* %28)
  br label %30

30:                                               ; preds = %2, %21
  br label %31

31:                                               ; preds = %129, %30
  store i32 0, i32* %10, align 4
  %32 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %33 = call i32 @usbd_xfer_max_framelen(%struct.usb_xfer* %32)
  %34 = load i32, i32* %12, align 4
  %35 = mul nsw i32 %33, %34
  store i32 %35, i32* %9, align 4
  store %struct.mbuf* null, %struct.mbuf** %7, align 8
  br label %36

36:                                               ; preds = %88, %31
  %37 = load i32, i32* %9, align 4
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %89

39:                                               ; preds = %36
  %40 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %41 = icmp eq %struct.mbuf* %40, null
  br i1 %41, label %42, label %55

42:                                               ; preds = %39
  %43 = load %struct.ubt_softc*, %struct.ubt_softc** %5, align 8
  %44 = call i32 @UBT_NG_LOCK(%struct.ubt_softc* %43)
  %45 = load %struct.ubt_softc*, %struct.ubt_softc** %5, align 8
  %46 = getelementptr inbounds %struct.ubt_softc, %struct.ubt_softc* %45, i32 0, i32 0
  %47 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %48 = call i32 @NG_BT_MBUFQ_DEQUEUE(i32* %46, %struct.mbuf* %47)
  %49 = load %struct.ubt_softc*, %struct.ubt_softc** %5, align 8
  %50 = call i32 @UBT_NG_UNLOCK(%struct.ubt_softc* %49)
  %51 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %52 = icmp eq %struct.mbuf* %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %42
  br label %89

54:                                               ; preds = %42
  br label %55

55:                                               ; preds = %54, %39
  %56 = load i32, i32* %9, align 4
  %57 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %58 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @min(i32 %56, i32 %60)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %64, label %79

64:                                               ; preds = %55
  %65 = load %struct.usb_page_cache*, %struct.usb_page_cache** %6, align 8
  %66 = load i32, i32* %10, align 4
  %67 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @usbd_m_copy_in(%struct.usb_page_cache* %65, i32 %66, %struct.mbuf* %67, i32 0, i32 %68)
  %70 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @m_adj(%struct.mbuf* %70, i32 %71)
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* %10, align 4
  %75 = add nsw i32 %74, %73
  store i32 %75, i32* %10, align 4
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* %9, align 4
  %78 = sub nsw i32 %77, %76
  store i32 %78, i32* %9, align 4
  br label %79

79:                                               ; preds = %64, %55
  %80 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %81 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %79
  %86 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %87 = call i32 @NG_FREE_M(%struct.mbuf* %86)
  br label %88

88:                                               ; preds = %85, %79
  br label %36

89:                                               ; preds = %53, %36
  %90 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %91 = icmp ne %struct.mbuf* %90, null
  br i1 %91, label %92, label %101

92:                                               ; preds = %89
  %93 = load %struct.ubt_softc*, %struct.ubt_softc** %5, align 8
  %94 = call i32 @UBT_NG_LOCK(%struct.ubt_softc* %93)
  %95 = load %struct.ubt_softc*, %struct.ubt_softc** %5, align 8
  %96 = getelementptr inbounds %struct.ubt_softc, %struct.ubt_softc* %95, i32 0, i32 0
  %97 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %98 = call i32 @NG_BT_MBUFQ_PREPEND(i32* %96, %struct.mbuf* %97)
  %99 = load %struct.ubt_softc*, %struct.ubt_softc** %5, align 8
  %100 = call i32 @UBT_NG_UNLOCK(%struct.ubt_softc* %99)
  br label %101

101:                                              ; preds = %92, %89
  store i32 0, i32* %8, align 4
  br label %102

102:                                              ; preds = %119, %101
  %103 = load i32, i32* %8, align 4
  %104 = load i32, i32* %12, align 4
  %105 = icmp slt i32 %103, %104
  br i1 %105, label %106, label %122

106:                                              ; preds = %102
  %107 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %108 = load i32, i32* %8, align 4
  %109 = load i32, i32* %10, align 4
  %110 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %111 = call i32 @usbd_xfer_max_framelen(%struct.usb_xfer* %110)
  %112 = call i32 @min(i32 %109, i32 %111)
  %113 = call i32 @usbd_xfer_set_frame_len(%struct.usb_xfer* %107, i32 %108, i32 %112)
  %114 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %115 = load i32, i32* %8, align 4
  %116 = call i32 @usbd_xfer_frame_len(%struct.usb_xfer* %114, i32 %115)
  %117 = load i32, i32* %10, align 4
  %118 = sub nsw i32 %117, %116
  store i32 %118, i32* %10, align 4
  br label %119

119:                                              ; preds = %106
  %120 = load i32, i32* %8, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %8, align 4
  br label %102

122:                                              ; preds = %102
  %123 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %124 = call i32 @usbd_transfer_submit(%struct.usb_xfer* %123)
  br label %133

125:                                              ; preds = %2
  %126 = load i32, i32* %4, align 4
  %127 = load i32, i32* @USB_ERR_CANCELLED, align 4
  %128 = icmp ne i32 %126, %127
  br i1 %128, label %129, label %132

129:                                              ; preds = %125
  %130 = load %struct.ubt_softc*, %struct.ubt_softc** %5, align 8
  %131 = call i32 @UBT_STAT_OERROR(%struct.ubt_softc* %130)
  br label %31

132:                                              ; preds = %125
  br label %133

133:                                              ; preds = %132, %122
  ret void
}

declare dso_local %struct.ubt_softc* @usbd_xfer_softc(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_xfer_status(%struct.usb_xfer*, i32*, i32*, i32*, i32*) #1

declare dso_local %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer*, i32) #1

declare dso_local i32 @USB_GET_STATE(%struct.usb_xfer*) #1

declare dso_local i32 @UBT_INFO(%struct.ubt_softc*, i8*, i32) #1

declare dso_local i32 @UBT_STAT_BYTES_SENT(%struct.ubt_softc*, i32) #1

declare dso_local i32 @UBT_STAT_PCKTS_SENT(%struct.ubt_softc*) #1

declare dso_local i32 @usbd_xfer_max_framelen(%struct.usb_xfer*) #1

declare dso_local i32 @UBT_NG_LOCK(%struct.ubt_softc*) #1

declare dso_local i32 @NG_BT_MBUFQ_DEQUEUE(i32*, %struct.mbuf*) #1

declare dso_local i32 @UBT_NG_UNLOCK(%struct.ubt_softc*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @usbd_m_copy_in(%struct.usb_page_cache*, i32, %struct.mbuf*, i32, i32) #1

declare dso_local i32 @m_adj(%struct.mbuf*, i32) #1

declare dso_local i32 @NG_FREE_M(%struct.mbuf*) #1

declare dso_local i32 @NG_BT_MBUFQ_PREPEND(i32*, %struct.mbuf*) #1

declare dso_local i32 @usbd_xfer_set_frame_len(%struct.usb_xfer*, i32, i32) #1

declare dso_local i32 @usbd_xfer_frame_len(%struct.usb_xfer*, i32) #1

declare dso_local i32 @usbd_transfer_submit(%struct.usb_xfer*) #1

declare dso_local i32 @UBT_STAT_OERROR(%struct.ubt_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
