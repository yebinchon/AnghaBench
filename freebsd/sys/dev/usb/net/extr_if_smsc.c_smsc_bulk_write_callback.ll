; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_smsc.c_smsc_bulk_write_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_smsc.c_smsc_bulk_write_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32 }
%struct.smsc_softc = type { i32, i32 }
%struct.ifnet = type { i32, i32 }
%struct.usb_page_cache = type { i32 }
%struct.mbuf = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@SMSC_FLAG_LINK = common dso_local global i32 0, align 4
@MCLBYTES = common dso_local global i32 0, align 4
@SMSC_TX_CTRL_0_FIRST_SEG = common dso_local global i32 0, align 4
@SMSC_TX_CTRL_0_LAST_SEG = common dso_local global i32 0, align 4
@IFCOUNTER_OPACKETS = common dso_local global i32 0, align 4
@IFCOUNTER_OERRORS = common dso_local global i32 0, align 4
@USB_ERR_CANCELLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"usb error on tx: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*, i32)* @smsc_bulk_write_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smsc_bulk_write_callback(%struct.usb_xfer* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.smsc_softc*, align 8
  %6 = alloca %struct.ifnet*, align 8
  %7 = alloca %struct.usb_page_cache*, align 8
  %8 = alloca %struct.mbuf*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.usb_xfer* %0, %struct.usb_xfer** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %13 = call %struct.smsc_softc* @usbd_xfer_softc(%struct.usb_xfer* %12)
  store %struct.smsc_softc* %13, %struct.smsc_softc** %5, align 8
  %14 = load %struct.smsc_softc*, %struct.smsc_softc** %5, align 8
  %15 = getelementptr inbounds %struct.smsc_softc, %struct.smsc_softc* %14, i32 0, i32 1
  %16 = call %struct.ifnet* @uether_getifp(i32* %15)
  store %struct.ifnet* %16, %struct.ifnet** %6, align 8
  store i32 0, i32* %10, align 4
  %17 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %18 = call i32 @USB_GET_STATE(%struct.usb_xfer* %17)
  switch i32 %18, label %140 [
    i32 128, label %19
    i32 129, label %26
  ]

19:                                               ; preds = %2
  %20 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %21 = xor i32 %20, -1
  %22 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %23 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, %21
  store i32 %25, i32* %23, align 4
  br label %26

26:                                               ; preds = %2, %19
  br label %27

27:                                               ; preds = %153, %26
  %28 = load %struct.smsc_softc*, %struct.smsc_softc** %5, align 8
  %29 = getelementptr inbounds %struct.smsc_softc, %struct.smsc_softc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @SMSC_FLAG_LINK, align 4
  %32 = and i32 %30, %31
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %27
  %35 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %36 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %34, %27
  br label %161

42:                                               ; preds = %34
  store i32 0, i32* %11, align 4
  br label %43

43:                                               ; preds = %122, %42
  %44 = load i32, i32* %11, align 4
  %45 = icmp slt i32 %44, 16
  br i1 %45, label %46, label %52

46:                                               ; preds = %43
  %47 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %48 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %47, i32 0, i32 1
  %49 = call i32 @IFQ_DRV_IS_EMPTY(i32* %48)
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  br label %52

52:                                               ; preds = %46, %43
  %53 = phi i1 [ false, %43 ], [ %51, %46 ]
  br i1 %53, label %54, label %125

54:                                               ; preds = %52
  %55 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %56 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %55, i32 0, i32 1
  %57 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %58 = call i32 @IFQ_DRV_DEQUEUE(i32* %56, %struct.mbuf* %57)
  %59 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %60 = icmp eq %struct.mbuf* %59, null
  br i1 %60, label %61, label %62

61:                                               ; preds = %54
  br label %125

62:                                               ; preds = %54
  %63 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* @MCLBYTES, align 4
  %66 = mul nsw i32 %64, %65
  %67 = load i32, i32* %11, align 4
  %68 = call i32 @usbd_xfer_set_frame_offset(%struct.usb_xfer* %63, i32 %66, i32 %67)
  store i32 0, i32* %10, align 4
  %69 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %70 = load i32, i32* %11, align 4
  %71 = call %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer* %69, i32 %70)
  store %struct.usb_page_cache* %71, %struct.usb_page_cache** %7, align 8
  %72 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %73 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @SMSC_TX_CTRL_0_BUF_SIZE(i32 %75)
  %77 = load i32, i32* @SMSC_TX_CTRL_0_FIRST_SEG, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* @SMSC_TX_CTRL_0_LAST_SEG, align 4
  %80 = or i32 %78, %79
  store i32 %80, i32* %9, align 4
  %81 = load i32, i32* %9, align 4
  %82 = call i32 @htole32(i32 %81)
  store i32 %82, i32* %9, align 4
  %83 = load %struct.usb_page_cache*, %struct.usb_page_cache** %7, align 8
  %84 = call i32 @usbd_copy_in(%struct.usb_page_cache* %83, i32 0, i32* %9, i32 4)
  %85 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %86 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @SMSC_TX_CTRL_1_PKT_LENGTH(i32 %88)
  store i32 %89, i32* %9, align 4
  %90 = load i32, i32* %9, align 4
  %91 = call i32 @htole32(i32 %90)
  store i32 %91, i32* %9, align 4
  %92 = load %struct.usb_page_cache*, %struct.usb_page_cache** %7, align 8
  %93 = call i32 @usbd_copy_in(%struct.usb_page_cache* %92, i32 4, i32* %9, i32 4)
  %94 = load i32, i32* %10, align 4
  %95 = add nsw i32 %94, 8
  store i32 %95, i32* %10, align 4
  %96 = load %struct.usb_page_cache*, %struct.usb_page_cache** %7, align 8
  %97 = load i32, i32* %10, align 4
  %98 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %99 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %100 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @usbd_m_copy_in(%struct.usb_page_cache* %96, i32 %97, %struct.mbuf* %98, i32 0, i32 %102)
  %104 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %105 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %10, align 4
  %109 = add nsw i32 %108, %107
  store i32 %109, i32* %10, align 4
  %110 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %111 = load i32, i32* @IFCOUNTER_OPACKETS, align 4
  %112 = call i32 @if_inc_counter(%struct.ifnet* %110, i32 %111, i32 1)
  %113 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %114 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %115 = call i32 @BPF_MTAP(%struct.ifnet* %113, %struct.mbuf* %114)
  %116 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %117 = call i32 @m_freem(%struct.mbuf* %116)
  %118 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %119 = load i32, i32* %11, align 4
  %120 = load i32, i32* %10, align 4
  %121 = call i32 @usbd_xfer_set_frame_len(%struct.usb_xfer* %118, i32 %119, i32 %120)
  br label %122

122:                                              ; preds = %62
  %123 = load i32, i32* %11, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %11, align 4
  br label %43

125:                                              ; preds = %61, %52
  %126 = load i32, i32* %11, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %139

128:                                              ; preds = %125
  %129 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %130 = load i32, i32* %11, align 4
  %131 = call i32 @usbd_xfer_set_frames(%struct.usb_xfer* %129, i32 %130)
  %132 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %133 = call i32 @usbd_transfer_submit(%struct.usb_xfer* %132)
  %134 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %135 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %136 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = or i32 %137, %134
  store i32 %138, i32* %136, align 4
  br label %139

139:                                              ; preds = %128, %125
  br label %161

140:                                              ; preds = %2
  %141 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %142 = load i32, i32* @IFCOUNTER_OERRORS, align 4
  %143 = call i32 @if_inc_counter(%struct.ifnet* %141, i32 %142, i32 1)
  %144 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %145 = xor i32 %144, -1
  %146 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %147 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = and i32 %148, %145
  store i32 %149, i32* %147, align 4
  %150 = load i32, i32* %4, align 4
  %151 = load i32, i32* @USB_ERR_CANCELLED, align 4
  %152 = icmp ne i32 %150, %151
  br i1 %152, label %153, label %160

153:                                              ; preds = %140
  %154 = load %struct.smsc_softc*, %struct.smsc_softc** %5, align 8
  %155 = load i32, i32* %4, align 4
  %156 = call i32 @usbd_errstr(i32 %155)
  %157 = call i32 @smsc_err_printf(%struct.smsc_softc* %154, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %156)
  %158 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %159 = call i32 @usbd_xfer_set_stall(%struct.usb_xfer* %158)
  br label %27

160:                                              ; preds = %140
  br label %161

161:                                              ; preds = %160, %139, %41
  ret void
}

declare dso_local %struct.smsc_softc* @usbd_xfer_softc(%struct.usb_xfer*) #1

declare dso_local %struct.ifnet* @uether_getifp(i32*) #1

declare dso_local i32 @USB_GET_STATE(%struct.usb_xfer*) #1

declare dso_local i32 @IFQ_DRV_IS_EMPTY(i32*) #1

declare dso_local i32 @IFQ_DRV_DEQUEUE(i32*, %struct.mbuf*) #1

declare dso_local i32 @usbd_xfer_set_frame_offset(%struct.usb_xfer*, i32, i32) #1

declare dso_local %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer*, i32) #1

declare dso_local i32 @SMSC_TX_CTRL_0_BUF_SIZE(i32) #1

declare dso_local i32 @htole32(i32) #1

declare dso_local i32 @usbd_copy_in(%struct.usb_page_cache*, i32, i32*, i32) #1

declare dso_local i32 @SMSC_TX_CTRL_1_PKT_LENGTH(i32) #1

declare dso_local i32 @usbd_m_copy_in(%struct.usb_page_cache*, i32, %struct.mbuf*, i32, i32) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @BPF_MTAP(%struct.ifnet*, %struct.mbuf*) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @usbd_xfer_set_frame_len(%struct.usb_xfer*, i32, i32) #1

declare dso_local i32 @usbd_xfer_set_frames(%struct.usb_xfer*, i32) #1

declare dso_local i32 @usbd_transfer_submit(%struct.usb_xfer*) #1

declare dso_local i32 @smsc_err_printf(%struct.smsc_softc*, i8*, i32) #1

declare dso_local i32 @usbd_errstr(i32) #1

declare dso_local i32 @usbd_xfer_set_stall(%struct.usb_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
