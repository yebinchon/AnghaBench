; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_xhci.c_xhci_configure_endpoint.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_xhci.c_xhci_configure_endpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i64, i32, i32 }
%struct.usb_endpoint_descriptor = type { i64, i32, i32* }
%struct.xhci_endpoint_ext = type { i32, i64, i32*, i32 }
%struct.usb_page_search = type { %struct.xhci_input_dev_ctx* }
%struct.xhci_input_dev_ctx = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.xhci_softc = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@UE_XFERTYPE = common dso_local global i32 0, align 4
@UE_DIR_IN = common dso_local global i64 0, align 8
@USB_ERR_NO_PIPE = common dso_local global i32 0, align 4
@USB_ERR_BAD_BUFSIZE = common dso_local global i32 0, align 4
@USB_EP_MODE_STREAMS = common dso_local global i64 0, align 8
@XHCI_MAX_STREAMS_LOG = common dso_local global i64 0, align 8
@XHCI_MAX_TRANSFERS = common dso_local global i32 0, align 4
@XHCI_MAX_STREAMS = common dso_local global i32 0, align 4
@XHCI_PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_device*, %struct.usb_endpoint_descriptor*, %struct.xhci_endpoint_ext*, i32, i64, i64, i64, i32, i32, i64)* @xhci_configure_endpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xhci_configure_endpoint(%struct.usb_device* %0, %struct.usb_endpoint_descriptor* %1, %struct.xhci_endpoint_ext* %2, i32 %3, i64 %4, i64 %5, i64 %6, i32 %7, i32 %8, i64 %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.usb_device*, align 8
  %13 = alloca %struct.usb_endpoint_descriptor*, align 8
  %14 = alloca %struct.xhci_endpoint_ext*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca %struct.usb_page_search, align 8
  %23 = alloca %struct.xhci_softc*, align 8
  %24 = alloca %struct.xhci_input_dev_ctx*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  store %struct.usb_device* %0, %struct.usb_device** %12, align 8
  store %struct.usb_endpoint_descriptor* %1, %struct.usb_endpoint_descriptor** %13, align 8
  store %struct.xhci_endpoint_ext* %2, %struct.xhci_endpoint_ext** %14, align 8
  store i32 %3, i32* %15, align 4
  store i64 %4, i64* %16, align 8
  store i64 %5, i64* %17, align 8
  store i64 %6, i64* %18, align 8
  store i32 %7, i32* %19, align 4
  store i32 %8, i32* %20, align 4
  store i64 %9, i64* %21, align 8
  %30 = load %struct.usb_device*, %struct.usb_device** %12, align 8
  %31 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call %struct.xhci_softc* @XHCI_BUS2SC(i32 %32)
  store %struct.xhci_softc* %33, %struct.xhci_softc** %23, align 8
  %34 = load %struct.xhci_endpoint_ext*, %struct.xhci_endpoint_ext** %14, align 8
  %35 = getelementptr inbounds %struct.xhci_endpoint_ext, %struct.xhci_endpoint_ext* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %25, align 4
  %37 = load %struct.usb_device*, %struct.usb_device** %12, align 8
  %38 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %27, align 8
  %40 = load %struct.xhci_softc*, %struct.xhci_softc** %23, align 8
  %41 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = load i64, i64* %27, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = call i32 @usbd_get_page(i32* %46, i32 0, %struct.usb_page_search* %22)
  %48 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %22, i32 0, i32 0
  %49 = load %struct.xhci_input_dev_ctx*, %struct.xhci_input_dev_ctx** %48, align 8
  store %struct.xhci_input_dev_ctx* %49, %struct.xhci_input_dev_ctx** %24, align 8
  %50 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %13, align 8
  %51 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %28, align 8
  %53 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %13, align 8
  %54 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @UE_XFERTYPE, align 4
  %57 = and i32 %55, %56
  %58 = sext i32 %57 to i64
  store i64 %58, i64* %29, align 8
  %59 = load i64, i64* %29, align 8
  %60 = icmp eq i64 %59, 133
  br i1 %60, label %61, label %65

61:                                               ; preds = %10
  %62 = load i64, i64* @UE_DIR_IN, align 8
  %63 = load i64, i64* %28, align 8
  %64 = or i64 %63, %62
  store i64 %64, i64* %28, align 8
  br label %65

65:                                               ; preds = %61, %10
  %66 = load i64, i64* %28, align 8
  %67 = call i64 @XHCI_EPNO2EPID(i64 %66)
  store i64 %67, i64* %28, align 8
  %68 = load i64, i64* %28, align 8
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = load i32, i32* @USB_ERR_NO_PIPE, align 4
  store i32 %71, i32* %11, align 4
  br label %282

72:                                               ; preds = %65
  %73 = load i64, i64* %16, align 8
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %72
  %76 = load i32, i32* @USB_ERR_BAD_BUFSIZE, align 4
  store i32 %76, i32* %11, align 4
  br label %282

77:                                               ; preds = %72
  %78 = load i64, i64* %16, align 8
  %79 = add i64 %78, -1
  store i64 %79, i64* %16, align 8
  %80 = load i64, i64* %17, align 8
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %77
  %83 = load i32, i32* @USB_ERR_BAD_BUFSIZE, align 4
  store i32 %83, i32* %11, align 4
  br label %282

84:                                               ; preds = %77
  %85 = load i64, i64* %21, align 8
  %86 = load %struct.xhci_endpoint_ext*, %struct.xhci_endpoint_ext** %14, align 8
  %87 = getelementptr inbounds %struct.xhci_endpoint_ext, %struct.xhci_endpoint_ext* %86, i32 0, i32 1
  store i64 %85, i64* %87, align 8
  %88 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %13, align 8
  %89 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %88, i32 0, i32 2
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.xhci_endpoint_ext*, %struct.xhci_endpoint_ext** %14, align 8
  %94 = getelementptr inbounds %struct.xhci_endpoint_ext, %struct.xhci_endpoint_ext* %93, i32 0, i32 3
  store i32 %92, i32* %94, align 8
  %95 = load %struct.xhci_endpoint_ext*, %struct.xhci_endpoint_ext** %14, align 8
  %96 = getelementptr inbounds %struct.xhci_endpoint_ext, %struct.xhci_endpoint_ext* %95, i32 0, i32 2
  %97 = load i32*, i32** %96, align 8
  %98 = call i32 @usb_pc_cpu_flush(i32* %97)
  %99 = load i64, i64* %21, align 8
  %100 = load i64, i64* @USB_EP_MODE_STREAMS, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %120

102:                                              ; preds = %84
  %103 = call i32 @XHCI_EPCTX_0_EPSTATE_SET(i32 0)
  %104 = load i64, i64* @XHCI_MAX_STREAMS_LOG, align 8
  %105 = sub nsw i64 %104, 1
  %106 = call i32 @XHCI_EPCTX_0_MAXP_STREAMS_SET(i64 %105)
  %107 = or i32 %103, %106
  %108 = call i32 @XHCI_EPCTX_0_LSA_SET(i32 1)
  %109 = or i32 %107, %108
  store i32 %109, i32* %26, align 4
  %110 = load i32, i32* @XHCI_MAX_TRANSFERS, align 4
  %111 = sext i32 %110 to i64
  %112 = mul i64 4, %111
  %113 = load i32, i32* @XHCI_MAX_STREAMS, align 4
  %114 = sext i32 %113 to i64
  %115 = mul i64 %112, %114
  %116 = load i32, i32* %25, align 4
  %117 = sext i32 %116 to i64
  %118 = add i64 %117, %115
  %119 = trunc i64 %118 to i32
  store i32 %119, i32* %25, align 4
  br label %129

120:                                              ; preds = %84
  %121 = call i32 @XHCI_EPCTX_0_EPSTATE_SET(i32 0)
  %122 = call i32 @XHCI_EPCTX_0_MAXP_STREAMS_SET(i64 0)
  %123 = or i32 %121, %122
  %124 = call i32 @XHCI_EPCTX_0_LSA_SET(i32 0)
  %125 = or i32 %123, %124
  store i32 %125, i32* %26, align 4
  %126 = call i32 @XHCI_EPCTX_2_DCS_SET(i32 1)
  %127 = load i32, i32* %25, align 4
  %128 = or i32 %127, %126
  store i32 %128, i32* %25, align 4
  br label %129

129:                                              ; preds = %120, %102
  %130 = load %struct.usb_device*, %struct.usb_device** %12, align 8
  %131 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  switch i32 %132, label %136 [
    i32 130, label %133
    i32 129, label %133
  ]

133:                                              ; preds = %129, %129
  %134 = load i64, i64* %18, align 8
  %135 = add i64 %134, 3
  store i64 %135, i64* %18, align 8
  br label %137

136:                                              ; preds = %129
  br label %137

137:                                              ; preds = %136, %133
  %138 = load i64, i64* %29, align 8
  switch i64 %138, label %173 [
    i64 132, label %139
    i64 131, label %150
  ]

139:                                              ; preds = %137
  %140 = load i64, i64* %18, align 8
  %141 = icmp ugt i64 %140, 3
  br i1 %141, label %142, label %145

142:                                              ; preds = %139
  %143 = load i64, i64* %18, align 8
  %144 = add i64 %143, -1
  store i64 %144, i64* %18, align 8
  br label %145

145:                                              ; preds = %142, %139
  %146 = load i64, i64* %18, align 8
  %147 = call i32 @XHCI_EPCTX_0_IVAL_SET(i64 %146)
  %148 = load i32, i32* %26, align 4
  %149 = or i32 %148, %147
  store i32 %149, i32* %26, align 4
  br label %174

150:                                              ; preds = %137
  %151 = load i64, i64* %18, align 8
  %152 = call i32 @XHCI_EPCTX_0_IVAL_SET(i64 %151)
  %153 = load i32, i32* %26, align 4
  %154 = or i32 %153, %152
  store i32 %154, i32* %26, align 4
  %155 = load %struct.usb_device*, %struct.usb_device** %12, align 8
  %156 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  switch i32 %157, label %171 [
    i32 128, label %158
  ]

158:                                              ; preds = %150
  %159 = load i64, i64* %17, align 8
  %160 = icmp ugt i64 %159, 3
  br i1 %160, label %161, label %162

161:                                              ; preds = %158
  store i64 3, i64* %17, align 8
  br label %162

162:                                              ; preds = %161, %158
  %163 = load i64, i64* %17, align 8
  %164 = sub i64 %163, 1
  %165 = call i32 @XHCI_EPCTX_0_MULT_SET(i64 %164)
  %166 = load i32, i32* %26, align 4
  %167 = or i32 %166, %165
  store i32 %167, i32* %26, align 4
  %168 = load i64, i64* %17, align 8
  %169 = load i64, i64* %16, align 8
  %170 = udiv i64 %169, %168
  store i64 %170, i64* %16, align 8
  br label %172

171:                                              ; preds = %150
  br label %172

172:                                              ; preds = %171, %162
  br label %174

173:                                              ; preds = %137
  br label %174

174:                                              ; preds = %173, %172, %145
  %175 = load %struct.xhci_softc*, %struct.xhci_softc** %23, align 8
  %176 = load %struct.xhci_input_dev_ctx*, %struct.xhci_input_dev_ctx** %24, align 8
  %177 = getelementptr inbounds %struct.xhci_input_dev_ctx, %struct.xhci_input_dev_ctx* %176, i32 0, i32 0
  %178 = load %struct.TYPE_6__*, %struct.TYPE_6__** %177, align 8
  %179 = load i64, i64* %28, align 8
  %180 = sub i64 %179, 1
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 3
  %183 = load i32, i32* %26, align 4
  %184 = call i32 @xhci_ctx_set_le32(%struct.xhci_softc* %175, i32* %182, i32 %183)
  %185 = call i32 @XHCI_EPCTX_1_HID_SET(i32 0)
  %186 = load i64, i64* %16, align 8
  %187 = call i32 @XHCI_EPCTX_1_MAXB_SET(i64 %186)
  %188 = or i32 %185, %187
  %189 = load i32, i32* %19, align 4
  %190 = call i32 @XHCI_EPCTX_1_MAXP_SIZE_SET(i32 %189)
  %191 = or i32 %188, %190
  store i32 %191, i32* %26, align 4
  %192 = load i64, i64* %29, align 8
  %193 = icmp ne i64 %192, 131
  br i1 %193, label %194, label %198

194:                                              ; preds = %174
  %195 = call i32 @XHCI_EPCTX_1_CERR_SET(i32 3)
  %196 = load i32, i32* %26, align 4
  %197 = or i32 %196, %195
  store i32 %197, i32* %26, align 4
  br label %198

198:                                              ; preds = %194, %174
  %199 = load i64, i64* %29, align 8
  switch i64 %199, label %212 [
    i64 133, label %200
    i64 131, label %204
    i64 134, label %208
  ]

200:                                              ; preds = %198
  %201 = call i32 @XHCI_EPCTX_1_EPTYPE_SET(i32 4)
  %202 = load i32, i32* %26, align 4
  %203 = or i32 %202, %201
  store i32 %203, i32* %26, align 4
  br label %216

204:                                              ; preds = %198
  %205 = call i32 @XHCI_EPCTX_1_EPTYPE_SET(i32 1)
  %206 = load i32, i32* %26, align 4
  %207 = or i32 %206, %205
  store i32 %207, i32* %26, align 4
  br label %216

208:                                              ; preds = %198
  %209 = call i32 @XHCI_EPCTX_1_EPTYPE_SET(i32 2)
  %210 = load i32, i32* %26, align 4
  %211 = or i32 %210, %209
  store i32 %211, i32* %26, align 4
  br label %216

212:                                              ; preds = %198
  %213 = call i32 @XHCI_EPCTX_1_EPTYPE_SET(i32 3)
  %214 = load i32, i32* %26, align 4
  %215 = or i32 %214, %213
  store i32 %215, i32* %26, align 4
  br label %216

216:                                              ; preds = %212, %208, %204, %200
  %217 = load i64, i64* %28, align 8
  %218 = and i64 %217, 1
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %224

220:                                              ; preds = %216
  %221 = call i32 @XHCI_EPCTX_1_EPTYPE_SET(i32 4)
  %222 = load i32, i32* %26, align 4
  %223 = or i32 %222, %221
  store i32 %223, i32* %26, align 4
  br label %224

224:                                              ; preds = %220, %216
  %225 = load %struct.xhci_softc*, %struct.xhci_softc** %23, align 8
  %226 = load %struct.xhci_input_dev_ctx*, %struct.xhci_input_dev_ctx** %24, align 8
  %227 = getelementptr inbounds %struct.xhci_input_dev_ctx, %struct.xhci_input_dev_ctx* %226, i32 0, i32 0
  %228 = load %struct.TYPE_6__*, %struct.TYPE_6__** %227, align 8
  %229 = load i64, i64* %28, align 8
  %230 = sub i64 %229, 1
  %231 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %228, i64 %230
  %232 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %231, i32 0, i32 2
  %233 = load i32, i32* %26, align 4
  %234 = call i32 @xhci_ctx_set_le32(%struct.xhci_softc* %225, i32* %232, i32 %233)
  %235 = load %struct.xhci_softc*, %struct.xhci_softc** %23, align 8
  %236 = load %struct.xhci_input_dev_ctx*, %struct.xhci_input_dev_ctx** %24, align 8
  %237 = getelementptr inbounds %struct.xhci_input_dev_ctx, %struct.xhci_input_dev_ctx* %236, i32 0, i32 0
  %238 = load %struct.TYPE_6__*, %struct.TYPE_6__** %237, align 8
  %239 = load i64, i64* %28, align 8
  %240 = sub i64 %239, 1
  %241 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %238, i64 %240
  %242 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %241, i32 0, i32 1
  %243 = load i32, i32* %25, align 4
  %244 = call i32 @xhci_ctx_set_le64(%struct.xhci_softc* %235, i32* %242, i32 %243)
  %245 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %13, align 8
  %246 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 8
  %248 = load i32, i32* @UE_XFERTYPE, align 4
  %249 = and i32 %247, %248
  switch i32 %249, label %260 [
    i32 132, label %250
    i32 131, label %250
    i32 133, label %258
  ]

250:                                              ; preds = %224, %224
  %251 = load i32, i32* %20, align 4
  %252 = call i32 @XHCI_EPCTX_4_MAX_ESIT_PAYLOAD_SET(i32 %251)
  %253 = load i32, i32* @XHCI_PAGE_SIZE, align 4
  %254 = load i32, i32* %20, align 4
  %255 = call i32 @MIN(i32 %253, i32 %254)
  %256 = call i32 @XHCI_EPCTX_4_AVG_TRB_LEN_SET(i32 %255)
  %257 = or i32 %252, %256
  store i32 %257, i32* %26, align 4
  br label %263

258:                                              ; preds = %224
  %259 = call i32 @XHCI_EPCTX_4_AVG_TRB_LEN_SET(i32 8)
  store i32 %259, i32* %26, align 4
  br label %263

260:                                              ; preds = %224
  %261 = load i32, i32* @XHCI_PAGE_SIZE, align 4
  %262 = call i32 @XHCI_EPCTX_4_AVG_TRB_LEN_SET(i32 %261)
  store i32 %262, i32* %26, align 4
  br label %263

263:                                              ; preds = %260, %258, %250
  %264 = load %struct.xhci_softc*, %struct.xhci_softc** %23, align 8
  %265 = load %struct.xhci_input_dev_ctx*, %struct.xhci_input_dev_ctx** %24, align 8
  %266 = getelementptr inbounds %struct.xhci_input_dev_ctx, %struct.xhci_input_dev_ctx* %265, i32 0, i32 0
  %267 = load %struct.TYPE_6__*, %struct.TYPE_6__** %266, align 8
  %268 = load i64, i64* %28, align 8
  %269 = sub i64 %268, 1
  %270 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %267, i64 %269
  %271 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %270, i32 0, i32 0
  %272 = load i32, i32* %26, align 4
  %273 = call i32 @xhci_ctx_set_le32(%struct.xhci_softc* %264, i32* %271, i32 %272)
  %274 = load %struct.xhci_softc*, %struct.xhci_softc** %23, align 8
  %275 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %274, i32 0, i32 0
  %276 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %275, i32 0, i32 0
  %277 = load %struct.TYPE_4__*, %struct.TYPE_4__** %276, align 8
  %278 = load i64, i64* %27, align 8
  %279 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %277, i64 %278
  %280 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %279, i32 0, i32 0
  %281 = call i32 @usb_pc_cpu_flush(i32* %280)
  store i32 0, i32* %11, align 4
  br label %282

282:                                              ; preds = %263, %82, %75, %70
  %283 = load i32, i32* %11, align 4
  ret i32 %283
}

declare dso_local %struct.xhci_softc* @XHCI_BUS2SC(i32) #1

declare dso_local i32 @usbd_get_page(i32*, i32, %struct.usb_page_search*) #1

declare dso_local i64 @XHCI_EPNO2EPID(i64) #1

declare dso_local i32 @usb_pc_cpu_flush(i32*) #1

declare dso_local i32 @XHCI_EPCTX_0_EPSTATE_SET(i32) #1

declare dso_local i32 @XHCI_EPCTX_0_MAXP_STREAMS_SET(i64) #1

declare dso_local i32 @XHCI_EPCTX_0_LSA_SET(i32) #1

declare dso_local i32 @XHCI_EPCTX_2_DCS_SET(i32) #1

declare dso_local i32 @XHCI_EPCTX_0_IVAL_SET(i64) #1

declare dso_local i32 @XHCI_EPCTX_0_MULT_SET(i64) #1

declare dso_local i32 @xhci_ctx_set_le32(%struct.xhci_softc*, i32*, i32) #1

declare dso_local i32 @XHCI_EPCTX_1_HID_SET(i32) #1

declare dso_local i32 @XHCI_EPCTX_1_MAXB_SET(i64) #1

declare dso_local i32 @XHCI_EPCTX_1_MAXP_SIZE_SET(i32) #1

declare dso_local i32 @XHCI_EPCTX_1_CERR_SET(i32) #1

declare dso_local i32 @XHCI_EPCTX_1_EPTYPE_SET(i32) #1

declare dso_local i32 @xhci_ctx_set_le64(%struct.xhci_softc*, i32*, i32) #1

declare dso_local i32 @XHCI_EPCTX_4_MAX_ESIT_PAYLOAD_SET(i32) #1

declare dso_local i32 @XHCI_EPCTX_4_AVG_TRB_LEN_SET(i32) #1

declare dso_local i32 @MIN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
