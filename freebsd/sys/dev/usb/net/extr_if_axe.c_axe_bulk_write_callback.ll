; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_axe.c_axe_bulk_write_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_axe.c_axe_bulk_write_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32 }
%struct.axe_softc = type { i32, i32 }
%struct.axe_sframe_hdr = type { i32, i32 }
%struct.ifnet = type { i32, i32, i32 }
%struct.usb_page_cache = type { i32 }
%struct.mbuf = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"transfer complete\0A\00", align 1
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@AXE_FLAG_LINK = common dso_local global i32 0, align 4
@MCLBYTES = common dso_local global i32 0, align 4
@IFCAP_TXCSUM = common dso_local global i32 0, align 4
@AXE_CSUM_FEATURES = common dso_local global i32 0, align 4
@AXE_TX_CSUM_PSEUDO_HDR = common dso_local global i32 0, align 4
@AXE_TX_CSUM_DIS = common dso_local global i32 0, align 4
@IFCOUNTER_OPACKETS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"transfer error, %s\0A\00", align 1
@IFCOUNTER_OERRORS = common dso_local global i32 0, align 4
@USB_ERR_CANCELLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*, i32)* @axe_bulk_write_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @axe_bulk_write_callback(%struct.usb_xfer* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.axe_softc*, align 8
  %6 = alloca %struct.axe_sframe_hdr, align 4
  %7 = alloca %struct.ifnet*, align 8
  %8 = alloca %struct.usb_page_cache*, align 8
  %9 = alloca %struct.mbuf*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.usb_xfer* %0, %struct.usb_xfer** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %13 = call %struct.axe_softc* @usbd_xfer_softc(%struct.usb_xfer* %12)
  store %struct.axe_softc* %13, %struct.axe_softc** %5, align 8
  %14 = load %struct.axe_softc*, %struct.axe_softc** %5, align 8
  %15 = getelementptr inbounds %struct.axe_softc, %struct.axe_softc* %14, i32 0, i32 1
  %16 = call %struct.ifnet* @uether_getifp(i32* %15)
  store %struct.ifnet* %16, %struct.ifnet** %7, align 8
  %17 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %18 = call i32 @USB_GET_STATE(%struct.usb_xfer* %17)
  switch i32 %18, label %196 [
    i32 128, label %19
    i32 129, label %27
  ]

19:                                               ; preds = %2
  %20 = call i32 (i32, i8*, ...) @DPRINTFN(i32 11, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %22 = xor i32 %21, -1
  %23 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %24 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, %22
  store i32 %26, i32* %24, align 4
  br label %27

27:                                               ; preds = %2, %19
  br label %28

28:                                               ; preds = %212, %27
  %29 = load %struct.axe_softc*, %struct.axe_softc** %5, align 8
  %30 = getelementptr inbounds %struct.axe_softc, %struct.axe_softc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @AXE_FLAG_LINK, align 4
  %33 = and i32 %31, %32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %28
  %36 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %37 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %35, %28
  br label %216

43:                                               ; preds = %35
  store i32 0, i32* %10, align 4
  br label %44

44:                                               ; preds = %178, %43
  %45 = load i32, i32* %10, align 4
  %46 = icmp slt i32 %45, 16
  br i1 %46, label %47, label %53

47:                                               ; preds = %44
  %48 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %49 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %48, i32 0, i32 2
  %50 = call i32 @IFQ_DRV_IS_EMPTY(i32* %49)
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  br label %53

53:                                               ; preds = %47, %44
  %54 = phi i1 [ false, %44 ], [ %52, %47 ]
  br i1 %54, label %55, label %181

55:                                               ; preds = %53
  %56 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %57 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %56, i32 0, i32 2
  %58 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %59 = call i32 @IFQ_DRV_DEQUEUE(i32* %57, %struct.mbuf* %58)
  %60 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %61 = icmp eq %struct.mbuf* %60, null
  br i1 %61, label %62, label %63

62:                                               ; preds = %55
  br label %181

63:                                               ; preds = %55
  %64 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* @MCLBYTES, align 4
  %67 = mul nsw i32 %65, %66
  %68 = load i32, i32* %10, align 4
  %69 = call i32 @usbd_xfer_set_frame_offset(%struct.usb_xfer* %64, i32 %67, i32 %68)
  store i32 0, i32* %11, align 4
  %70 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %71 = load i32, i32* %10, align 4
  %72 = call %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer* %70, i32 %71)
  store %struct.usb_page_cache* %72, %struct.usb_page_cache** %8, align 8
  %73 = load %struct.axe_softc*, %struct.axe_softc** %5, align 8
  %74 = call i32 @AXE_IS_178_FAMILY(%struct.axe_softc* %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %150

76:                                               ; preds = %63
  %77 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %78 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @htole16(i32 %80)
  %82 = getelementptr inbounds %struct.axe_sframe_hdr, %struct.axe_sframe_hdr* %6, i32 0, i32 0
  store i32 %81, i32* %82, align 4
  %83 = getelementptr inbounds %struct.axe_sframe_hdr, %struct.axe_sframe_hdr* %6, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = xor i32 %84, -1
  %86 = getelementptr inbounds %struct.axe_sframe_hdr, %struct.axe_sframe_hdr* %6, i32 0, i32 1
  store i32 %85, i32* %86, align 4
  %87 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %88 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @IFCAP_TXCSUM, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %114

93:                                               ; preds = %76
  %94 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %95 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @AXE_CSUM_FEATURES, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %93
  %102 = load i32, i32* @AXE_TX_CSUM_PSEUDO_HDR, align 4
  %103 = call i32 @htole16(i32 %102)
  %104 = getelementptr inbounds %struct.axe_sframe_hdr, %struct.axe_sframe_hdr* %6, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = or i32 %105, %103
  store i32 %106, i32* %104, align 4
  br label %113

107:                                              ; preds = %93
  %108 = load i32, i32* @AXE_TX_CSUM_DIS, align 4
  %109 = call i32 @htole16(i32 %108)
  %110 = getelementptr inbounds %struct.axe_sframe_hdr, %struct.axe_sframe_hdr* %6, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = or i32 %111, %109
  store i32 %112, i32* %110, align 4
  br label %113

113:                                              ; preds = %107, %101
  br label %114

114:                                              ; preds = %113, %76
  %115 = load %struct.usb_page_cache*, %struct.usb_page_cache** %8, align 8
  %116 = load i32, i32* %11, align 4
  %117 = call i32 @usbd_copy_in(%struct.usb_page_cache* %115, i32 %116, %struct.axe_sframe_hdr* %6, i32 8)
  %118 = load i32, i32* %11, align 4
  %119 = sext i32 %118 to i64
  %120 = add i64 %119, 8
  %121 = trunc i64 %120 to i32
  store i32 %121, i32* %11, align 4
  %122 = load %struct.usb_page_cache*, %struct.usb_page_cache** %8, align 8
  %123 = load i32, i32* %11, align 4
  %124 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %125 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %126 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @usbd_m_copy_in(%struct.usb_page_cache* %122, i32 %123, %struct.mbuf* %124, i32 0, i32 %128)
  %130 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %131 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* %11, align 4
  %135 = add nsw i32 %134, %133
  store i32 %135, i32* %11, align 4
  %136 = load i32, i32* %11, align 4
  %137 = srem i32 %136, 512
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %149

139:                                              ; preds = %114
  %140 = getelementptr inbounds %struct.axe_sframe_hdr, %struct.axe_sframe_hdr* %6, i32 0, i32 0
  store i32 0, i32* %140, align 4
  %141 = getelementptr inbounds %struct.axe_sframe_hdr, %struct.axe_sframe_hdr* %6, i32 0, i32 1
  store i32 65535, i32* %141, align 4
  %142 = load %struct.usb_page_cache*, %struct.usb_page_cache** %8, align 8
  %143 = load i32, i32* %11, align 4
  %144 = call i32 @usbd_copy_in(%struct.usb_page_cache* %142, i32 %143, %struct.axe_sframe_hdr* %6, i32 8)
  %145 = load i32, i32* %11, align 4
  %146 = sext i32 %145 to i64
  %147 = add i64 %146, 8
  %148 = trunc i64 %147 to i32
  store i32 %148, i32* %11, align 4
  br label %149

149:                                              ; preds = %139, %114
  br label %165

150:                                              ; preds = %63
  %151 = load %struct.usb_page_cache*, %struct.usb_page_cache** %8, align 8
  %152 = load i32, i32* %11, align 4
  %153 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %154 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %155 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @usbd_m_copy_in(%struct.usb_page_cache* %151, i32 %152, %struct.mbuf* %153, i32 0, i32 %157)
  %159 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %160 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* %11, align 4
  %164 = add nsw i32 %163, %162
  store i32 %164, i32* %11, align 4
  br label %165

165:                                              ; preds = %150, %149
  %166 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %167 = load i32, i32* @IFCOUNTER_OPACKETS, align 4
  %168 = call i32 @if_inc_counter(%struct.ifnet* %166, i32 %167, i32 1)
  %169 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %170 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %171 = call i32 @BPF_MTAP(%struct.ifnet* %169, %struct.mbuf* %170)
  %172 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %173 = call i32 @m_freem(%struct.mbuf* %172)
  %174 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %175 = load i32, i32* %10, align 4
  %176 = load i32, i32* %11, align 4
  %177 = call i32 @usbd_xfer_set_frame_len(%struct.usb_xfer* %174, i32 %175, i32 %176)
  br label %178

178:                                              ; preds = %165
  %179 = load i32, i32* %10, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %10, align 4
  br label %44

181:                                              ; preds = %62, %53
  %182 = load i32, i32* %10, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %195

184:                                              ; preds = %181
  %185 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %186 = load i32, i32* %10, align 4
  %187 = call i32 @usbd_xfer_set_frames(%struct.usb_xfer* %185, i32 %186)
  %188 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %189 = call i32 @usbd_transfer_submit(%struct.usb_xfer* %188)
  %190 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %191 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %192 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = or i32 %193, %190
  store i32 %194, i32* %192, align 4
  br label %195

195:                                              ; preds = %184, %181
  br label %216

196:                                              ; preds = %2
  %197 = load i32, i32* %4, align 4
  %198 = call i32 @usbd_errstr(i32 %197)
  %199 = call i32 (i32, i8*, ...) @DPRINTFN(i32 11, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %198)
  %200 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %201 = load i32, i32* @IFCOUNTER_OERRORS, align 4
  %202 = call i32 @if_inc_counter(%struct.ifnet* %200, i32 %201, i32 1)
  %203 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %204 = xor i32 %203, -1
  %205 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %206 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = and i32 %207, %204
  store i32 %208, i32* %206, align 4
  %209 = load i32, i32* %4, align 4
  %210 = load i32, i32* @USB_ERR_CANCELLED, align 4
  %211 = icmp ne i32 %209, %210
  br i1 %211, label %212, label %215

212:                                              ; preds = %196
  %213 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %214 = call i32 @usbd_xfer_set_stall(%struct.usb_xfer* %213)
  br label %28

215:                                              ; preds = %196
  br label %216

216:                                              ; preds = %215, %195, %42
  ret void
}

declare dso_local %struct.axe_softc* @usbd_xfer_softc(%struct.usb_xfer*) #1

declare dso_local %struct.ifnet* @uether_getifp(i32*) #1

declare dso_local i32 @USB_GET_STATE(%struct.usb_xfer*) #1

declare dso_local i32 @DPRINTFN(i32, i8*, ...) #1

declare dso_local i32 @IFQ_DRV_IS_EMPTY(i32*) #1

declare dso_local i32 @IFQ_DRV_DEQUEUE(i32*, %struct.mbuf*) #1

declare dso_local i32 @usbd_xfer_set_frame_offset(%struct.usb_xfer*, i32, i32) #1

declare dso_local %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer*, i32) #1

declare dso_local i32 @AXE_IS_178_FAMILY(%struct.axe_softc*) #1

declare dso_local i32 @htole16(i32) #1

declare dso_local i32 @usbd_copy_in(%struct.usb_page_cache*, i32, %struct.axe_sframe_hdr*, i32) #1

declare dso_local i32 @usbd_m_copy_in(%struct.usb_page_cache*, i32, %struct.mbuf*, i32, i32) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @BPF_MTAP(%struct.ifnet*, %struct.mbuf*) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @usbd_xfer_set_frame_len(%struct.usb_xfer*, i32, i32) #1

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
