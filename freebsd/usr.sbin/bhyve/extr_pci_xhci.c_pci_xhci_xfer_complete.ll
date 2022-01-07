; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_xhci.c_pci_xhci_xfer_complete.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_xhci.c_pci_xhci_xfer_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_xhci_softc = type { i32 }
%struct.usb_data_xfer = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i64, i32, i64 }
%struct.pci_xhci_dev_emu = type { %struct.pci_xhci_dev_ep* }
%struct.pci_xhci_dev_ep = type { i32 }
%struct.xhci_dev_ctx = type { %struct.xhci_endp_ctx* }
%struct.xhci_endp_ctx = type { i32 }
%struct.xhci_trb = type { i64, i64, i64 }

@XHCI_TRB_ERROR_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"pci_xhci: xfer[%d] done?%u:%d trb %x %016lx %x (err %d) IOC?%d\0D\0A\00", align 1
@XHCI_TRB_3_IOC_BIT = common dso_local global i32 0, align 4
@XHCI_TRB_ERROR_SHORT_PKT = common dso_local global i32 0, align 4
@XHCI_TRB_3_ISP_BIT = common dso_local global i32 0, align 4
@USB_MAX_XFER_BLOCKS = common dso_local global i32 0, align 4
@XHCI_TRB_EVENT_TRANSFER = common dso_local global i32 0, align 4
@XHCI_TRB_TYPE_EVENT_DATA = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"pci_xhci EVENT_DATA edtla %u\0D\0A\00", align 1
@XHCI_TRB_3_ED_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_xhci_softc*, %struct.usb_data_xfer*, i64, i64, i32*)* @pci_xhci_xfer_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_xhci_xfer_complete(%struct.pci_xhci_softc* %0, %struct.usb_data_xfer* %1, i64 %2, i64 %3, i32* %4) #0 {
  %6 = alloca %struct.pci_xhci_softc*, align 8
  %7 = alloca %struct.usb_data_xfer*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.pci_xhci_dev_emu*, align 8
  %12 = alloca %struct.pci_xhci_dev_ep*, align 8
  %13 = alloca %struct.xhci_dev_ctx*, align 8
  %14 = alloca %struct.xhci_endp_ctx*, align 8
  %15 = alloca %struct.xhci_trb*, align 8
  %16 = alloca %struct.xhci_trb, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.pci_xhci_softc* %0, %struct.pci_xhci_softc** %6, align 8
  store %struct.usb_data_xfer* %1, %struct.usb_data_xfer** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32* %4, i32** %10, align 8
  %21 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %6, align 8
  %22 = load i64, i64* %8, align 8
  %23 = call %struct.pci_xhci_dev_emu* @XHCI_SLOTDEV_PTR(%struct.pci_xhci_softc* %21, i64 %22)
  store %struct.pci_xhci_dev_emu* %23, %struct.pci_xhci_dev_emu** %11, align 8
  %24 = load %struct.pci_xhci_dev_emu*, %struct.pci_xhci_dev_emu** %11, align 8
  %25 = getelementptr inbounds %struct.pci_xhci_dev_emu, %struct.pci_xhci_dev_emu* %24, i32 0, i32 0
  %26 = load %struct.pci_xhci_dev_ep*, %struct.pci_xhci_dev_ep** %25, align 8
  %27 = load i64, i64* %9, align 8
  %28 = getelementptr inbounds %struct.pci_xhci_dev_ep, %struct.pci_xhci_dev_ep* %26, i64 %27
  store %struct.pci_xhci_dev_ep* %28, %struct.pci_xhci_dev_ep** %12, align 8
  %29 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %6, align 8
  %30 = load i64, i64* %8, align 8
  %31 = call %struct.xhci_dev_ctx* @pci_xhci_get_dev_ctx(%struct.pci_xhci_softc* %29, i64 %30)
  store %struct.xhci_dev_ctx* %31, %struct.xhci_dev_ctx** %13, align 8
  %32 = load %struct.xhci_dev_ctx*, %struct.xhci_dev_ctx** %13, align 8
  %33 = icmp ne %struct.xhci_dev_ctx* %32, null
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert(i32 %34)
  %36 = load %struct.xhci_dev_ctx*, %struct.xhci_dev_ctx** %13, align 8
  %37 = getelementptr inbounds %struct.xhci_dev_ctx, %struct.xhci_dev_ctx* %36, i32 0, i32 0
  %38 = load %struct.xhci_endp_ctx*, %struct.xhci_endp_ctx** %37, align 8
  %39 = load i64, i64* %9, align 8
  %40 = getelementptr inbounds %struct.xhci_endp_ctx, %struct.xhci_endp_ctx* %38, i64 %39
  store %struct.xhci_endp_ctx* %40, %struct.xhci_endp_ctx** %14, align 8
  %41 = load i32, i32* @XHCI_TRB_ERROR_SUCCESS, align 4
  store i32 %41, i32* %20, align 4
  %42 = load i32*, i32** %10, align 8
  store i32 0, i32* %42, align 4
  store i64 0, i64* %18, align 8
  %43 = load %struct.usb_data_xfer*, %struct.usb_data_xfer** %7, align 8
  %44 = getelementptr inbounds %struct.usb_data_xfer, %struct.usb_data_xfer* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %19, align 4
  br label %46

46:                                               ; preds = %255, %195, %5
  %47 = load %struct.usb_data_xfer*, %struct.usb_data_xfer** %7, align 8
  %48 = getelementptr inbounds %struct.usb_data_xfer, %struct.usb_data_xfer* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp sgt i64 %49, 0
  br i1 %50, label %51, label %260

51:                                               ; preds = %46
  %52 = load %struct.usb_data_xfer*, %struct.usb_data_xfer** %7, align 8
  %53 = getelementptr inbounds %struct.usb_data_xfer, %struct.usb_data_xfer* %52, i32 0, i32 2
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = load i32, i32* %19, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 6
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds %struct.xhci_trb, %struct.xhci_trb* %16, i32 0, i32 2
  store i64 %59, i64* %60, align 8
  %61 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %6, align 8
  %62 = getelementptr inbounds %struct.xhci_trb, %struct.xhci_trb* %16, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = call %struct.xhci_trb* @XHCI_GADDR(%struct.pci_xhci_softc* %61, i64 %63)
  store %struct.xhci_trb* %64, %struct.xhci_trb** %15, align 8
  %65 = load %struct.xhci_trb*, %struct.xhci_trb** %15, align 8
  %66 = getelementptr inbounds %struct.xhci_trb, %struct.xhci_trb* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  store i64 %67, i64* %17, align 8
  %68 = load i32, i32* %19, align 4
  %69 = load %struct.usb_data_xfer*, %struct.usb_data_xfer** %7, align 8
  %70 = getelementptr inbounds %struct.usb_data_xfer, %struct.usb_data_xfer* %69, i32 0, i32 2
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = load i32, i32* %19, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 5
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.usb_data_xfer*, %struct.usb_data_xfer** %7, align 8
  %78 = getelementptr inbounds %struct.usb_data_xfer, %struct.usb_data_xfer* %77, i32 0, i32 2
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = load i32, i32* %19, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i64, i64* %17, align 8
  %86 = call i64 @XHCI_TRB_3_TYPE_GET(i64 %85)
  %87 = getelementptr inbounds %struct.xhci_trb, %struct.xhci_trb* %16, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* %17, align 8
  %90 = load i32, i32* %20, align 4
  %91 = load %struct.xhci_trb*, %struct.xhci_trb** %15, align 8
  %92 = getelementptr inbounds %struct.xhci_trb, %struct.xhci_trb* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i32, i32* @XHCI_TRB_3_IOC_BIT, align 4
  %95 = sext i32 %94 to i64
  %96 = and i64 %93, %95
  %97 = icmp ne i64 %96, 0
  %98 = zext i1 %97 to i64
  %99 = select i1 %97, i32 1, i32 0
  %100 = sext i32 %99 to i64
  %101 = inttoptr i64 %100 to i8*
  %102 = call i32 @DPRINTF(i8* %101)
  %103 = load %struct.usb_data_xfer*, %struct.usb_data_xfer** %7, align 8
  %104 = getelementptr inbounds %struct.usb_data_xfer, %struct.usb_data_xfer* %103, i32 0, i32 2
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %104, align 8
  %106 = load i32, i32* %19, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 5
  %110 = load i32, i32* %109, align 8
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %116, label %112

112:                                              ; preds = %51
  %113 = load i32, i32* %19, align 4
  %114 = load %struct.usb_data_xfer*, %struct.usb_data_xfer** %7, align 8
  %115 = getelementptr inbounds %struct.usb_data_xfer, %struct.usb_data_xfer* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 8
  br label %260

116:                                              ; preds = %51
  %117 = load %struct.usb_data_xfer*, %struct.usb_data_xfer** %7, align 8
  %118 = getelementptr inbounds %struct.usb_data_xfer, %struct.usb_data_xfer* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = add nsw i64 %119, -1
  store i64 %120, i64* %118, align 8
  %121 = load %struct.usb_data_xfer*, %struct.usb_data_xfer** %7, align 8
  %122 = getelementptr inbounds %struct.usb_data_xfer, %struct.usb_data_xfer* %121, i32 0, i32 2
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** %122, align 8
  %124 = load i32, i32* %19, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 4
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* %18, align 8
  %130 = add i64 %129, %128
  store i64 %130, i64* %18, align 8
  %131 = load %struct.xhci_trb*, %struct.xhci_trb** %15, align 8
  %132 = getelementptr inbounds %struct.xhci_trb, %struct.xhci_trb* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = and i64 %133, -2
  %135 = load %struct.usb_data_xfer*, %struct.usb_data_xfer** %7, align 8
  %136 = getelementptr inbounds %struct.usb_data_xfer, %struct.usb_data_xfer* %135, i32 0, i32 2
  %137 = load %struct.TYPE_2__*, %struct.TYPE_2__** %136, align 8
  %138 = load i32, i32* %19, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = sext i32 %142 to i64
  %144 = or i64 %134, %143
  %145 = load %struct.xhci_trb*, %struct.xhci_trb** %15, align 8
  %146 = getelementptr inbounds %struct.xhci_trb, %struct.xhci_trb* %145, i32 0, i32 0
  store i64 %144, i64* %146, align 8
  %147 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %6, align 8
  %148 = load %struct.pci_xhci_dev_emu*, %struct.pci_xhci_dev_emu** %11, align 8
  %149 = load %struct.pci_xhci_dev_ep*, %struct.pci_xhci_dev_ep** %12, align 8
  %150 = load %struct.xhci_endp_ctx*, %struct.xhci_endp_ctx** %14, align 8
  %151 = load %struct.usb_data_xfer*, %struct.usb_data_xfer** %7, align 8
  %152 = getelementptr inbounds %struct.usb_data_xfer, %struct.usb_data_xfer* %151, i32 0, i32 2
  %153 = load %struct.TYPE_2__*, %struct.TYPE_2__** %152, align 8
  %154 = load i32, i32* %19, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.usb_data_xfer*, %struct.usb_data_xfer** %7, align 8
  %160 = getelementptr inbounds %struct.usb_data_xfer, %struct.usb_data_xfer* %159, i32 0, i32 2
  %161 = load %struct.TYPE_2__*, %struct.TYPE_2__** %160, align 8
  %162 = load i32, i32* %19, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.usb_data_xfer*, %struct.usb_data_xfer** %7, align 8
  %168 = getelementptr inbounds %struct.usb_data_xfer, %struct.usb_data_xfer* %167, i32 0, i32 2
  %169 = load %struct.TYPE_2__*, %struct.TYPE_2__** %168, align 8
  %170 = load i32, i32* %19, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = call i32 @pci_xhci_update_ep_ring(%struct.pci_xhci_softc* %147, %struct.pci_xhci_dev_emu* %148, %struct.pci_xhci_dev_ep* %149, %struct.xhci_endp_ctx* %150, i32 %158, i32 %166, i32 %174)
  %176 = load %struct.xhci_trb*, %struct.xhci_trb** %15, align 8
  %177 = getelementptr inbounds %struct.xhci_trb, %struct.xhci_trb* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = load i32, i32* @XHCI_TRB_3_IOC_BIT, align 4
  %180 = sext i32 %179 to i64
  %181 = and i64 %178, %180
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %200, label %183

183:                                              ; preds = %116
  %184 = load i32, i32* %20, align 4
  %185 = load i32, i32* @XHCI_TRB_ERROR_SHORT_PKT, align 4
  %186 = icmp eq i32 %184, %185
  br i1 %186, label %187, label %195

187:                                              ; preds = %183
  %188 = load %struct.xhci_trb*, %struct.xhci_trb** %15, align 8
  %189 = getelementptr inbounds %struct.xhci_trb, %struct.xhci_trb* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = load i32, i32* @XHCI_TRB_3_ISP_BIT, align 4
  %192 = sext i32 %191 to i64
  %193 = and i64 %190, %192
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %200, label %195

195:                                              ; preds = %187, %183
  %196 = load i32, i32* %19, align 4
  %197 = add nsw i32 %196, 1
  %198 = load i32, i32* @USB_MAX_XFER_BLOCKS, align 4
  %199 = srem i32 %197, %198
  store i32 %199, i32* %19, align 4
  br label %46

200:                                              ; preds = %187, %116
  %201 = load i32, i32* %20, align 4
  %202 = call i64 @XHCI_TRB_2_ERROR_SET(i32 %201)
  %203 = load %struct.usb_data_xfer*, %struct.usb_data_xfer** %7, align 8
  %204 = getelementptr inbounds %struct.usb_data_xfer, %struct.usb_data_xfer* %203, i32 0, i32 2
  %205 = load %struct.TYPE_2__*, %struct.TYPE_2__** %204, align 8
  %206 = load i32, i32* %19, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %205, i64 %207
  %209 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = call i64 @XHCI_TRB_2_REM_SET(i32 %210)
  %212 = or i64 %202, %211
  %213 = getelementptr inbounds %struct.xhci_trb, %struct.xhci_trb* %16, i32 0, i32 1
  store i64 %212, i64* %213, align 8
  %214 = load i32, i32* @XHCI_TRB_EVENT_TRANSFER, align 4
  %215 = call i32 @XHCI_TRB_3_TYPE_SET(i32 %214)
  %216 = load i64, i64* %8, align 8
  %217 = call i32 @XHCI_TRB_3_SLOT_SET(i64 %216)
  %218 = or i32 %215, %217
  %219 = load i64, i64* %9, align 8
  %220 = call i32 @XHCI_TRB_3_EP_SET(i64 %219)
  %221 = or i32 %218, %220
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.xhci_trb, %struct.xhci_trb* %16, i32 0, i32 0
  store i64 %222, i64* %223, align 8
  %224 = load i64, i64* %17, align 8
  %225 = call i64 @XHCI_TRB_3_TYPE_GET(i64 %224)
  %226 = load i64, i64* @XHCI_TRB_TYPE_EVENT_DATA, align 8
  %227 = icmp eq i64 %225, %226
  br i1 %227, label %228, label %247

228:                                              ; preds = %200
  %229 = load i64, i64* %18, align 8
  %230 = inttoptr i64 %229 to i8*
  %231 = call i32 @DPRINTF(i8* %230)
  %232 = load %struct.xhci_trb*, %struct.xhci_trb** %15, align 8
  %233 = getelementptr inbounds %struct.xhci_trb, %struct.xhci_trb* %232, i32 0, i32 2
  %234 = load i64, i64* %233, align 8
  %235 = getelementptr inbounds %struct.xhci_trb, %struct.xhci_trb* %16, i32 0, i32 2
  store i64 %234, i64* %235, align 8
  %236 = load i64, i64* %18, align 8
  %237 = and i64 %236, 1048575
  %238 = load i32, i32* %20, align 4
  %239 = call i64 @XHCI_TRB_2_ERROR_SET(i32 %238)
  %240 = or i64 %237, %239
  %241 = getelementptr inbounds %struct.xhci_trb, %struct.xhci_trb* %16, i32 0, i32 1
  store i64 %240, i64* %241, align 8
  %242 = load i32, i32* @XHCI_TRB_3_ED_BIT, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds %struct.xhci_trb, %struct.xhci_trb* %16, i32 0, i32 0
  %245 = load i64, i64* %244, align 8
  %246 = or i64 %245, %243
  store i64 %246, i64* %244, align 8
  store i64 0, i64* %18, align 8
  br label %247

247:                                              ; preds = %228, %200
  %248 = load i32*, i32** %10, align 8
  store i32 1, i32* %248, align 4
  %249 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %6, align 8
  %250 = call i32 @pci_xhci_insert_event(%struct.pci_xhci_softc* %249, %struct.xhci_trb* %16, i32 0)
  store i32 %250, i32* %20, align 4
  %251 = load i32, i32* %20, align 4
  %252 = load i32, i32* @XHCI_TRB_ERROR_SUCCESS, align 4
  %253 = icmp ne i32 %251, %252
  br i1 %253, label %254, label %255

254:                                              ; preds = %247
  br label %260

255:                                              ; preds = %247
  %256 = load i32, i32* %19, align 4
  %257 = add nsw i32 %256, 1
  %258 = load i32, i32* @USB_MAX_XFER_BLOCKS, align 4
  %259 = srem i32 %257, %258
  store i32 %259, i32* %19, align 4
  br label %46

260:                                              ; preds = %254, %112, %46
  %261 = load i32, i32* %20, align 4
  ret i32 %261
}

declare dso_local %struct.pci_xhci_dev_emu* @XHCI_SLOTDEV_PTR(%struct.pci_xhci_softc*, i64) #1

declare dso_local %struct.xhci_dev_ctx* @pci_xhci_get_dev_ctx(%struct.pci_xhci_softc*, i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.xhci_trb* @XHCI_GADDR(%struct.pci_xhci_softc*, i64) #1

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i64 @XHCI_TRB_3_TYPE_GET(i64) #1

declare dso_local i32 @pci_xhci_update_ep_ring(%struct.pci_xhci_softc*, %struct.pci_xhci_dev_emu*, %struct.pci_xhci_dev_ep*, %struct.xhci_endp_ctx*, i32, i32, i32) #1

declare dso_local i64 @XHCI_TRB_2_ERROR_SET(i32) #1

declare dso_local i64 @XHCI_TRB_2_REM_SET(i32) #1

declare dso_local i32 @XHCI_TRB_3_TYPE_SET(i32) #1

declare dso_local i32 @XHCI_TRB_3_SLOT_SET(i64) #1

declare dso_local i32 @XHCI_TRB_3_EP_SET(i64) #1

declare dso_local i32 @pci_xhci_insert_event(%struct.pci_xhci_softc*, %struct.xhci_trb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
