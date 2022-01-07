; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_axge.c_axge_bulk_write_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_axge.c_axge_bulk_write_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32 }
%struct.axge_softc = type { i32, i32 }
%struct.ifnet = type { i32, i32, i32 }
%struct.usb_page_cache = type { i32 }
%struct.mbuf = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.axge_frame_txhdr = type { i32, i32 }

@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@AXGE_FLAG_LINK = common dso_local global i32 0, align 4
@AXGE_N_FRAMES = common dso_local global i32 0, align 4
@MCLBYTES = common dso_local global i32 0, align 4
@IFCAP_TXCSUM = common dso_local global i32 0, align 4
@AXGE_CSUM_FEATURES = common dso_local global i32 0, align 4
@AXGE_CSUM_DISABLE = common dso_local global i32 0, align 4
@IFCOUNTER_OPACKETS = common dso_local global i32 0, align 4
@IFCOUNTER_OERRORS = common dso_local global i32 0, align 4
@USB_ERR_CANCELLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*, i32)* @axge_bulk_write_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @axge_bulk_write_callback(%struct.usb_xfer* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.axge_softc*, align 8
  %6 = alloca %struct.ifnet*, align 8
  %7 = alloca %struct.usb_page_cache*, align 8
  %8 = alloca %struct.mbuf*, align 8
  %9 = alloca %struct.axge_frame_txhdr, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.usb_xfer* %0, %struct.usb_xfer** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %13 = call %struct.axge_softc* @usbd_xfer_softc(%struct.usb_xfer* %12)
  store %struct.axge_softc* %13, %struct.axge_softc** %5, align 8
  %14 = load %struct.axge_softc*, %struct.axge_softc** %5, align 8
  %15 = getelementptr inbounds %struct.axge_softc, %struct.axge_softc* %14, i32 0, i32 1
  %16 = call %struct.ifnet* @uether_getifp(i32* %15)
  store %struct.ifnet* %16, %struct.ifnet** %6, align 8
  %17 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %18 = call i32 @USB_GET_STATE(%struct.usb_xfer* %17)
  switch i32 %18, label %154 [
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

27:                                               ; preds = %167, %26
  %28 = load %struct.axge_softc*, %struct.axge_softc** %5, align 8
  %29 = getelementptr inbounds %struct.axge_softc, %struct.axge_softc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @AXGE_FLAG_LINK, align 4
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
  br label %171

42:                                               ; preds = %34
  store i32 0, i32* %10, align 4
  br label %43

43:                                               ; preds = %132, %42
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* @AXGE_N_FRAMES, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %43
  %48 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %49 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %48, i32 0, i32 2
  %50 = call i32 @IFQ_DRV_IS_EMPTY(i32* %49)
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  br label %53

53:                                               ; preds = %47, %43
  %54 = phi i1 [ false, %43 ], [ %52, %47 ]
  br i1 %54, label %55, label %135

55:                                               ; preds = %53
  %56 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %57 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %56, i32 0, i32 2
  %58 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %59 = call i32 @IFQ_DRV_DEQUEUE(i32* %57, %struct.mbuf* %58)
  %60 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %61 = icmp eq %struct.mbuf* %60, null
  br i1 %61, label %62, label %63

62:                                               ; preds = %55
  br label %135

63:                                               ; preds = %55
  %64 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* @MCLBYTES, align 4
  %67 = mul nsw i32 %65, %66
  %68 = load i32, i32* %10, align 4
  %69 = call i32 @usbd_xfer_set_frame_offset(%struct.usb_xfer* %64, i32 %67, i32 %68)
  %70 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %71 = load i32, i32* %10, align 4
  %72 = call %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer* %70, i32 %71)
  store %struct.usb_page_cache* %72, %struct.usb_page_cache** %7, align 8
  %73 = getelementptr inbounds %struct.axge_frame_txhdr, %struct.axge_frame_txhdr* %9, i32 0, i32 1
  store i32 0, i32* %73, align 4
  %74 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %75 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @AXGE_TXBYTES(i32 %77)
  %79 = call i32 @htole32(i32 %78)
  %80 = getelementptr inbounds %struct.axge_frame_txhdr, %struct.axge_frame_txhdr* %9, i32 0, i32 0
  store i32 %79, i32* %80, align 4
  %81 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %82 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @IFCAP_TXCSUM, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %101

87:                                               ; preds = %63
  %88 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %89 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @AXGE_CSUM_FEATURES, align 4
  %93 = and i32 %91, %92
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %87
  %96 = load i32, i32* @AXGE_CSUM_DISABLE, align 4
  %97 = call i32 @htole32(i32 %96)
  %98 = getelementptr inbounds %struct.axge_frame_txhdr, %struct.axge_frame_txhdr* %9, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = or i32 %99, %97
  store i32 %100, i32* %98, align 4
  br label %101

101:                                              ; preds = %95, %87, %63
  store i32 0, i32* %11, align 4
  %102 = load %struct.usb_page_cache*, %struct.usb_page_cache** %7, align 8
  %103 = load i32, i32* %11, align 4
  %104 = call i32 @usbd_copy_in(%struct.usb_page_cache* %102, i32 %103, %struct.axge_frame_txhdr* %9, i32 8)
  %105 = load i32, i32* %11, align 4
  %106 = sext i32 %105 to i64
  %107 = add i64 %106, 8
  %108 = trunc i64 %107 to i32
  store i32 %108, i32* %11, align 4
  %109 = load %struct.usb_page_cache*, %struct.usb_page_cache** %7, align 8
  %110 = load i32, i32* %11, align 4
  %111 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %112 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %113 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @usbd_m_copy_in(%struct.usb_page_cache* %109, i32 %110, %struct.mbuf* %111, i32 0, i32 %115)
  %117 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %118 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %11, align 4
  %122 = add nsw i32 %121, %120
  store i32 %122, i32* %11, align 4
  %123 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %124 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %125 = call i32 @BPF_MTAP(%struct.ifnet* %123, %struct.mbuf* %124)
  %126 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %127 = call i32 @m_freem(%struct.mbuf* %126)
  %128 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %129 = load i32, i32* %10, align 4
  %130 = load i32, i32* %11, align 4
  %131 = call i32 @usbd_xfer_set_frame_len(%struct.usb_xfer* %128, i32 %129, i32 %130)
  br label %132

132:                                              ; preds = %101
  %133 = load i32, i32* %10, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %10, align 4
  br label %43

135:                                              ; preds = %62, %53
  %136 = load i32, i32* %10, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %153

138:                                              ; preds = %135
  %139 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %140 = load i32, i32* @IFCOUNTER_OPACKETS, align 4
  %141 = load i32, i32* %10, align 4
  %142 = call i32 @if_inc_counter(%struct.ifnet* %139, i32 %140, i32 %141)
  %143 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %144 = load i32, i32* %10, align 4
  %145 = call i32 @usbd_xfer_set_frames(%struct.usb_xfer* %143, i32 %144)
  %146 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %147 = call i32 @usbd_transfer_submit(%struct.usb_xfer* %146)
  %148 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %149 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %150 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = or i32 %151, %148
  store i32 %152, i32* %150, align 4
  br label %153

153:                                              ; preds = %138, %135
  br label %171

154:                                              ; preds = %2
  %155 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %156 = load i32, i32* @IFCOUNTER_OERRORS, align 4
  %157 = call i32 @if_inc_counter(%struct.ifnet* %155, i32 %156, i32 1)
  %158 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %159 = xor i32 %158, -1
  %160 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %161 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = and i32 %162, %159
  store i32 %163, i32* %161, align 4
  %164 = load i32, i32* %4, align 4
  %165 = load i32, i32* @USB_ERR_CANCELLED, align 4
  %166 = icmp ne i32 %164, %165
  br i1 %166, label %167, label %170

167:                                              ; preds = %154
  %168 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %169 = call i32 @usbd_xfer_set_stall(%struct.usb_xfer* %168)
  br label %27

170:                                              ; preds = %154
  br label %171

171:                                              ; preds = %170, %153, %41
  ret void
}

declare dso_local %struct.axge_softc* @usbd_xfer_softc(%struct.usb_xfer*) #1

declare dso_local %struct.ifnet* @uether_getifp(i32*) #1

declare dso_local i32 @USB_GET_STATE(%struct.usb_xfer*) #1

declare dso_local i32 @IFQ_DRV_IS_EMPTY(i32*) #1

declare dso_local i32 @IFQ_DRV_DEQUEUE(i32*, %struct.mbuf*) #1

declare dso_local i32 @usbd_xfer_set_frame_offset(%struct.usb_xfer*, i32, i32) #1

declare dso_local %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer*, i32) #1

declare dso_local i32 @htole32(i32) #1

declare dso_local i32 @AXGE_TXBYTES(i32) #1

declare dso_local i32 @usbd_copy_in(%struct.usb_page_cache*, i32, %struct.axge_frame_txhdr*, i32) #1

declare dso_local i32 @usbd_m_copy_in(%struct.usb_page_cache*, i32, %struct.mbuf*, i32, i32) #1

declare dso_local i32 @BPF_MTAP(%struct.ifnet*, %struct.mbuf*) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @usbd_xfer_set_frame_len(%struct.usb_xfer*, i32, i32) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @usbd_xfer_set_frames(%struct.usb_xfer*, i32) #1

declare dso_local i32 @usbd_transfer_submit(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_xfer_set_stall(%struct.usb_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
